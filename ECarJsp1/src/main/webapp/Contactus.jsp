<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="author" content="Dipesh Dhirajlal">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='bootstrap.min.css'/>
    <style>
       
        .links{
            display:inline-block;
            font-size:large;
            width:150px;
            height:50px;
            color:white;
            text-decoration:none;
        }
        .nav_style{
            background-color: black;
            
        }
        
        #body_style{
            background-image:url("images/MainCar2.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            margin:0;
        
                }
        #footer_style{
            clear:both;
            float:left;
            margin-top:50px;
            margin-left:none;
            height:200px;
            width:100%;
            text-align: center;
            padding-top:10px;
            color:floralwhite;
            background-color: black;
        }
        #link1{
            padding-left:20px;
        }
        a:hover{
            color:black;
            background-color:white;
        }
        .table_style{
            background-color:blueviolet;
            border:2px solid black;
            margin-top:100px;
            margin-left:200px;
            font-size:x-large;
        }
        .i_style{
            padding:10px;
           
        }
        .td_style{
            padding:10px;
            background-color: plum;
        }
       
        #div_style{
           
        }
    </style>
    </head>
    <body id="body_style">
        <jsp:include page="indexNav.jsp"></jsp:include>
        <div class="div_style">
            <table border="2" class="table_style">
                
                <tbody>
                <tr>
                    <th><i class="fa fa-map-marker i_style" style="font-size:36px"></i></i></th>
                <td class="td_style">H/104,Ruby Apartment,Juhu West</td>
                </tr>
                <tr>
                    <th><i class="fa fa-phone i_style"  style="font-size:36px"></i></th>
                    <td class="td_style">98223942122</td>
                </tr>
                <tr>
                    <th><i class="fa fa-envelope i_style" style="font-size:36px"></i></th>
                    <td class="td_style">dipesh.dhirajlal@neosoftmail.com</td>
                </tr>
                <tr>
                    <th><i class="fa fa-desktop i_style" style="font-size:36px"></i></th>
                    <td class="td_style"><a href="index.jsp">HomePage</a></td>
                </tr>
            </tbody>
            </table>
        </div>
    </body>
</html>