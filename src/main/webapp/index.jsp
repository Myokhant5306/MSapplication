<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medical Supply</title>
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
            padding-right:386.04px;
            padding-top:50px;
        }
        nav{
            flex:1;
            background-color:blue;
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
        ul li ul li{
            float:none;
            background:blue;
            border-right:1px solid #ccc;
        }
        ul li ul {
            display:none;
        }
        ul li:hover ul {
            display:block;
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
            color:black;
        }
        
        label.logo{
            
            font-size:35px;
            font-weight:bold;
            color:white;
            padding:0 50px;
        }
        #login-form{
            display:none;
        }
        .form-box{
            width:380px;
            height:600px;
            position:fixed;
            margin:2% auto;
            background:rgba(0,0,0,0.3);
            padding:10px;
            overflow:hidden;
        }
        .button-box{
           width:220px;
           margin:35px auto;
           position:relative;
           box-shadow:0 0 20px 9px blue;
           border-radius:30px;
        }
        .toggle-btn{
            padding:10px 30px;
            cursor:pointer;
            background:transparent;
            border:0;
            outline:none;
            position:relative;
        }
        #btn{
            top:0;
            left:0;
            position:absolute;
            width:110px;
            height:100%;
            background:#F3C693;
            border-radius:30px;
            transition: .5s;
        }
        .input-group-login{
            top:150px;
            position:absolute;
            width:280px;
            transition:.5s;
        }
        .input-group-register{
            top:120px;
            position:absolute;
            width:280px;
            transition:.5s;
        }
        .input-field{
            
            width:100%;
            padding:10px 0;
            margin:5px 0;
            border-left:0;
            border-right:0;
            border-bottom:1px solid #999;
            outline:none;
            background:transparent;
            
        }
        .submit-btn{
            width:75%;
            padding:20px 30px;
            cursor:pointer;
            display:block;
            margin:auto;
            background:#F3C693;
            border:0;
            outline:none;
            border-radius:30px;  
        }
        .check-box{
            margin:30px 10px 34px 0;
        }
        span{
            color:#777;
            font-size:12px;
            bottom:68px;
            position:absolute;
        }
        #login{
            left:50px;
        }
        #login input{
            color:white;
            font-size:medium;
        }
        #register{
            left:450px;
        }
        #register input{
            color:white;
            font-size:medium;
        }
        
        
    </style>
</head>
<body background='Shop.jpg'>
        <div class="Full-page">
            <div class="navbar">
                <div>
                    <label class="logo">Medical Supply</label>
                </div>
                
                <nav>
                    <ul id="MenuItems"  >
                        <li ><a href="index.jsp">Home</a></li>
                        <li ><a href="#">About as</a>
                       
                            <ul>
                                <li><a href="Our mission and vision.html">Mission & Vision</a></li>
                                <li><a href="About.html">Further</a></li>
                            </ul>
                       
                        </li>
                        <li ><a href='servicehtml.html'>Services</a></li>
                        <li ><a href='#'>Contact</a>
                       
                            <ul>
                                <li><a href='https://www.facebook.com/htaymin.zaw.52'>Student 1</a></li>
                                <li><a href='https://www.facebook.com/pyaesone.htay.39'>Student 2</a></li>
                                <li><a href='https://www.facebook.com/minaungkyawthu31226'>Student 3</a></li>
                            </ul>
                       
                        </li>    
                        <li><button class="loginbtn" onclick="document.getElementById('login-form').style.display='block'"style="width:auto;">login</button>
                        </li>
                    </ul>
                </nav>
                
                <div id="login-form"class="lofin-page">
                    <div class="form-box">
                        <div class="button-box">
                            <div id="btn">
                           
                            </div>
                            <button type="button"onclick="login()"class="toggle-btn">Log In</button>
                            <button type="button"onclick="register()"class="toggle-btn">Register</button>
                        </div>
                        <form id='login'class='input-group-login' method="post" action="Login">
                            
                            <input type='text'class='input-field' name='u_uname'  placeholder='User Name' required>
                             <input type='text'class='input-field' name='u_pass' placeholder='Enter password' required>
                             <input type='text'class='input-field' name='role' placeholder='User or Pharmancy or Compony' required>
                             <input type='checkbox'class='check-box'><span>Remember Password</span>
                             <button type='submit'class='submit-btn'>Log in</button>
                        </form>
                        <form id='register'class='input-group-register' action="Register" method="post">
                        <input type='text'class='input-field' name="u_fname" placeholder='First Name' required>
                        <input type='text'class='input-field'name="u_lname"  placeholder='Last Name' required> 
                        <input type='text'class='input-field' name="u_uname"  placeholder='User Name' required>
                        
                        <input type='password'class='input-field' name="u_pass" placeholder='Enter password' required>
                        <input type='password'class='input-field'placeholder='Confirm password' required>
                        <input type='text'class='input-field' name ="role" placeholder='user or pharmacy or company' required>
                        <input type='text'class='input-field'name="u_adress"  placeholder='Address' required>
                       
                        <input type='checkbox'class='check-box'><span>I agree the terms and conditions</span>
                        <button type='submit'class='submit-btn'>Register</button>
                        </form>    
                    </div>
                </div>
            </div>
            <script>
                var x=document.getElementById('login');
                var y=document.getElementById('register');
                var z=document.getElementById('btn');
                function register()
                {
                    x.style.left='-400px';
                    y.style.left='50px';
                    z.style.left='110px';
                }
                function login()
                {
                    x.style.left='50px';
                    y.style.left='450px';
                    z.style.left='0px';
                }
            </script>
            <script>
                var modal=document.getElementById('Login-form');
                window.onclick=function(event)
                {
                    if(event.target === modal)
                    {
                     modal.style.display='none';   
                    }
                };
            </script>
        </div>
       
    </body>   
</html>