<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
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
                height: 150px;
   
            }
            #submit{
                width:100px;
            }
        </style>
    </head>
    <body style="background-color:yellow">
    <Center>
        <h1>Hi friends, upload your files!</h1>
        <div id='form'>
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <label> User Name: </label>
            <input type="text" name="username" placeholder="Enter User Name"/>
            <br>
            <label>Password: </label>
            <input type="password" name="pass" placeholder="Enter your password"/>
            <br>
            <label>Role: </label>
            <input type="text" name="role" placeholder="Enter your role: user or pharmancy"/>
            <br>
            <input type="file" name="file"/>
            <br>
            <input type="submit" value="Upload" id="submit"/>
        </form>
        </div>
        </Center>
    </body>
</html>
