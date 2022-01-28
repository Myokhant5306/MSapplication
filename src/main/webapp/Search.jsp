<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <style>
            *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
            nav{
            flex:1;
            background-color:rgb(248,148,6);
            height:50px;
            text-align:left;
            align-items: center;
            }
        </style>
    </head>
    <body style="background-color:greenyellow">
    
        <nav>
        <h1 >Profile</h1>
        </nav>
        <br>
        <br>
        
        <table>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                String user=request.getParameter("user");
                String pass=request.getParameter("pass");
               
                String str="SELECT u_fname,u_lname,u_uname,u_password,u_address,role FROM `users`where u_uname='"+user+"' AND u_password='"+pass+"'";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
          
            <tr>
                <th>First Name:</th>
                <th><%=rs.getString("u_fname")%></th>
            </tr>
            <tr>
                <th>Last Name:</th>
                <th><%=rs.getString("u_lname")%></th>
            </tr>
            <tr>
                <th>User Name:</th>
                <th><%=rs.getString("u_uname")%></th>
            </tr>
            <tr>
                <th>Password:</th>
                <th><%=rs.getString("u_password")%></th>
            </tr>
            <tr>
                <th>Address:</th>
                <th><%=rs.getString("u_address")%></th>
            </tr>
            <tr>
                <th>Role:</th>
                <th><%=rs.getString("role")%></th>
            </tr>
                        
            <%} 
            }catch(Exception e){
               
               
                System.out.println(e.getMessage());
            }
        %>  
        </table>
        <br>
        <br>
        <form action="EditServlet" method="post">
        <tr>
        <th></th><th>
            <input type="submit" value="Edit"/>
        </th>
        </tr>
        </form>
        <form action="user.jsp" method="post">
            <input type="submit" value="Back">
        </form>
    
    </body>
</html>
