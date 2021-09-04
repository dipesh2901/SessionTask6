<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="description" content="Event Management">
    <meta name="keywords" content="Birthday,family function,Marriage">
    <meta name="author" content="Dipesh Dhirajlal">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
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
            background-color:lemonchiffon;
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
        .font_style{
            color:lime;
        }
        #section1{
            padding-top:50px;
            text-align:center;
            font-weight:bold;
            font-size:large;
        }
        #section2{
            background-color:palegreen;
            border:3px black double;
            margin-left:10px;
            margin-right:10px;
            margin-top:30px;
            padding-top:50px;
            padding-left:100px;
            font-weight:bold;
            font-size:medium;
            padding-bottom: 20px;
        }
        #img_style{
        border-radius:70px;
            margin-top:10px;
           padding-left:480px; 
          
        }
        #span_style{
            font-size:x-large;
        }
        #span_style2{
            color:blue;
        }

    </style>
    </head>
    <body id="body_style">
   	<jsp:include page="indexNav.jsp"></jsp:include>
        <article>
            <img id="img_style" src="images/carNew3.jpg"><br>
            <section id="section1">
                <span id="span_style2">The MyCar Management</span> was founded on <span  id="span_style2">1st August,2018.</span><br>
                Our Chairman was <span  id="span_style2">Mr.Stanzy Dsouza.</span> Under his leadership we started the programme
                <br>
                Our Current Manager is <span  id="span_style2">Mr.Dipesh Dhirajlal.</span> He is still a fresher as a Trainee Software Engineer in Neosoft Technolgies.
                <br>
                We Currently have <span  id="span_style2">1000 employees</span> working in our organization .We have received total <span  id="span_style2">25 Awards</span> from 2018.
                <br>
                Our branches are in<span  id="span_style2"> Mumbai,Kolkota,Chennai,Pune,Goa,Himachal,Jammu,Punjab,Bangalore,Kerala and Assam</span>
                <br>
                We are happy to announce a new Branch in <span  id="span_style2">Noida</span>
                <br>
                <span  id="span_style2">The MyCar Management</span> was started as a small company but now it has its location all over 
                the world in <span  id="span_style2">New Zealand,Australia and London.</span>
                <br>
                We are aiming at other countries like <span  id="span_style2">America,South Africa,Italy,France and Germany</span>
                <br>
                We provide cars  like <span  id="span_style2">Honda City,tata Altroz,Skoda and many more</span> for 
                our customers.It includes <span  id="span_style2">all the Services and Complete Functionalities</span>
                <br>
            </section>
        </article>
        
    </body>
</html>