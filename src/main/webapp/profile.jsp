<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <style>
            .abc{
                background-color: yellow;
                background-position-x: 50px;
                background-position-y: 50px;
                
            }
        </style>
    </head>
    <body class="abc">
    <center>
    
        <h1>Your Information !</h1>
        
        <form action="Search.jsp" method="post">
        <tr>
            <th>User Name:</th>
        <input type="text" name="user"/>
        </tr>
        <tr>
            <th>Password :</th>
        <input type="password" name="pass"/>
       
        <tr>
        <th></th><th>
            <input type="submit" value="Go"/>
        </th>
        </tr>
        </form>
       
     </center>
    </body>
</html>
