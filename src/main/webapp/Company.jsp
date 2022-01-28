<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company</title>
        <link rel="stylesheet"href="style.css">
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
                    <label class="logo"><font color="green" size="15px">Company</font></label>
                </div>
                
                <nav>
                    <ul id="MenuItems"  >
                        <li ><a href='AddTasks.jsp'>Add Tasks</a></li>
                        <li ><a href='Addmedical.jsp'>Add  medical lists</a></li>
                        <li ><a href='OrderTable.jsp'>Orders table</a></li>
                        <li ><a href='Usertable.jsp'>Users table</a></li>
                       <li><form action="logout.jsp" method="post">
                                <input type="submit" value="logout"/></form>
                        </li>
               
                     
                    </ul>
                </nav>
                
            </div>
          
        </div>
       
    </body>   
</html>