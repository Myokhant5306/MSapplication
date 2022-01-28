<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pharmacy</title>
        <link rel="stylesheet"herf="style.css">
        <style>
        *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        .full-page{
            height:100%;
            width:100%;
            background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(images/Shop.jpg);
            background-position:center;
            background-size:cover;
            position:absolute;
        }
        .navbar{
            display:flex;
            align-items:center;
            padding:20px;
            padding-left:50px;
            padding-right:528.44px;
            padding-top:50px;
        }
        nav{
            flex:1;
            background-color:green;
            height:50px;
            text-align:right;
        }
        nav ul{
            border:1px solid white;
            height:50px;
            margin : 0 auto;
            
            
        }
        nav ul li{
            list-style-type:none;
            width : 150px;
            float:left;
            border-right:1px solid #ccc;
            text-align:center;
        }
        li a{
            text-decoration:none;
            color:white;
            line-height:50px;
            display:block;
        }
        li a:hover{
            background-color:yellow;
            color:green;
        }
        nav ul li button{
            font-size:18px;
            line-height:50px;
            color:white;
            outline:none;
            border:none;
            cursor:pointer;
            font-family:sans-serif;
            background:transparent;
        }
        nav ul li button:hover{
            color:red;
        }
        
       
        input[type=submit]:hover{
            color:red;
        }
        input[type=submit]{
            width:50%;
            padding:10px;
            cursor:pointer;
            display:block;
            margin:auto;
            background:transparent;
            border:0;
            outline:none;
           font-family:sans-serif;
           border-radius: 5px;
           font-size: 17px;
           color:#ffffff;
       
        }
        
    </style>
    </head>
    
    <body background='pharmacy.jpg'>
        <div class="Full-page">
            <div class="navbar">
                <div>
                    <label class="logo"><font color="red" size="15px">Pharmacy</font></label>
                </div>
                
                <nav>
                    <ul id="MenuItems"  >
                        <li ><a href='profile.jsp'>Profile</a></li>
                        <li ><a href='Orderandmedicallists.jsp'>Order and medical lists</a></li>
                        <li ><a href='Documentjsp.jsp'>Documents</a></li>
                        <li ><a href='Report.jsp'>Report</a></li>
                       <li><form action="logout.jsp" method="post">
                                <input type="submit" value="logout"/></form>
                        </li>
               
                     
                    </ul>
                </nav>
                
            </div>
          
        </div>
       
    </body>   
    </head>
</html>