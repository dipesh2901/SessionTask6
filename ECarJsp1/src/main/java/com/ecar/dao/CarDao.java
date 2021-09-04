package com.ecar.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ecar.beans.CarBean;
import com.ecar.beans.CarOwnerBean;
import com.ecar.beans.IssueCarBean;

public class CarDao {

	public static int save(CarBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("insert into e_car values(?,?,?,?,?)");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getFuel());
			ps.setString(3,bean.getEngineCapacity());
			ps.setInt(4,0);
			ps.setInt(5,bean.getQuantity());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static List<CarBean> view(){
		List<CarBean> list=new ArrayList<CarBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_car");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				CarBean bean=new CarBean();
				bean.setName(rs.getString("name"));
				bean.setFuel(rs.getString("fuel"));
				bean.setEngineCapacity(rs.getString("engineCapacity"));
				bean.setIssued(rs.getInt("issue"));
				bean.setQuantity(rs.getInt("quantity"));
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}
	public static int delete(String carName){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("delete from e_car where name=?");
			ps.setString(1,carName);
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static int getIssued(String carName){
		int issued=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_car where name=?");
			ps.setString(1,carName);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				issued=rs.getInt("issue");
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return issued;
	}
	public static boolean checkIssue(String carName){
		boolean status=false;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_car where name=? and quantity>issue");
			ps.setString(1,carName);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				status=true;
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	
	public static boolean checkCar(String carNumber) {
		boolean status=false;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_issuecar where carNo=?");
			ps.setString(1,carNumber);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				status=true;
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	
	public static int issueCar(IssueCarBean bean){
		String carName=bean.getCarName();
		boolean checkstatus=checkIssue(carName);
		String carNumber=bean.getCarNo();
		boolean checkstatus2=checkCar(carNumber);
		System.out.println("Check status: "+checkstatus);
		if(checkstatus==true&&checkstatus2==false){
			int status=0;
			try{
				Connection con=DB.getCon();
				PreparedStatement ps=con.prepareStatement("insert into e_issueCar values(?,?,?,?,?,?,?)");
				ps.setString(1,bean.getCarName());
				ps.setString(2,bean.getCarNo());
				ps.setString(3,bean.getCustomerid());
				ps.setString(4,bean.getCustomername());
				ps.setLong(5,bean.getCustomermobile());
				java.sql.Date currentDate=new java.sql.Date(System.currentTimeMillis());
				ps.setDate(6,currentDate);
				ps.setString(7,"no");
				
				status=ps.executeUpdate();
				if(status>0){
					PreparedStatement ps2=con.prepareStatement("update e_car set issue=? where name=?");
					ps2.setInt(1,getIssued(carName)+1);
					ps2.setString(2,carName);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
		}else{
			return 0;
		}
	}
	
	public static void deleteCar(String id) {
		Connection con=DB.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("delete from e_issuecar where customerId=?");
			ps.setString(1,id);
			ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	public static int returnBook(String carName,String carNo,String customerId){
		int status=0;
			try{
				Connection con=DB.getCon();
				PreparedStatement ps=con.prepareStatement("update e_issueCar set returnStatus='yes' where carNo=? and customerId=?");
				ps.setString(1,carNo);
				ps.setString(2,customerId);
				
				status=ps.executeUpdate();
				if(status>0){
					PreparedStatement ps2=con.prepareStatement("update e_car set issue=? where name=?");
					ps2.setInt(1,getIssued(carName)-1);
					ps2.setString(2,carName);
					status=ps2.executeUpdate();
				}
				con.close();
				
			}catch(Exception e){System.out.println(e);}
			
			return status;
	}
	public static List<IssueCarBean> viewIssuedBooks(){
		List<IssueCarBean> list=new ArrayList<IssueCarBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_issueCar order by issueddate desc");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				IssueCarBean bean=new IssueCarBean();
				bean.setCarNo(rs.getString("carNo"));
				bean.setCarName(rs.getString("carName"));
				bean.setCustomerid(rs.getString("customerId"));
				bean.setCustomername(rs.getString("customerName"));
				bean.setCustomermobile(rs.getLong("customerMobile"));
				bean.setIssueddate(rs.getDate("issueddate"));
				bean.setReturnstatus(rs.getString("returnstatus"));
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}
/*	public static int update(LibrarianBean bean){
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("update e_librarian set name=?,email=?,password=?,mobile=? where id=?");
			ps.setString(1,bean.getName());
			ps.setString(2,bean.getEmail());
			ps.setString(3,bean.getPassword());
			ps.setLong(4,bean.getMobile());
			ps.setInt(5,bean.getId());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
	}
	public static LibrarianBean viewById(int id){
		LibrarianBean bean=new LibrarianBean();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from e_librarian where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setMobile(rs.getLong(5));
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return bean;
	}
*/
}
