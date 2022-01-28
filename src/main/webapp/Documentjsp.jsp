<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Document Page</title>
        <style type="text/css">
            label{
                width:100px;
                display:inline-block;
                margin: 5px;
            }
            #form{
                border-radius: 10px;
                background: yellowgreen;
                color:white;
                width:390px;
                height: 170px;
   
            }
            #submit{
                width:100px;
            }
            #button{
                color: blue;
            }
        </style>
    </head>
    <body>
    <center>
      <h1>You don't known what you do?</h1>
      <a href="About.html">
      <button id="button">Read Me!</button></a>
       
        <h1>Upload your files!</h1>
        <div id="form">
        <form action="DocServlet" method="post" enctype="multipart/form-data">
            <label> User Name: </label>
            <input type="text" name="username" placeholder="Enter User Name"/>
            <br>
            <label>Password: </label>
            <input type="password" name="pass" placeholder="Enter your password"/>
            <br>
            <label>Address: </label><input type="text" name="address" placeholder="Enter your address"/>
            <br>
            <input type="file" name="file"/>
            <br>
            <br>
            <input type="submit" value="Upload" id="submit"/>
        </form>
        </div>
    </center>
    </body>
</html>