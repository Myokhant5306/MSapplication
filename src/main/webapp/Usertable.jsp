<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Table</title>
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
            text-align:center;
            align-items: center;
            }
        </style>
    </head>
    <body style="background-color:greenyellow">
    <center>
        <nav>
        <h1 >Users</h1>
        </nav>
        <table width=100% border="1">
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Address</th>
                <th>Role</th>
      
            </tr>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                
                String str="select * from users";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("u_fname")%></td>
                <td><%=rs.getString("u_lname")%></td>
                <td><%=rs.getString("u_uname")%></td>
                <td><%=rs.getString("u_password")%></td>
                <td><%=rs.getString("u_address")%></td>
                <td><%=rs.getString("role")%></td>
            </tr>
                        
            <%} 
            }catch(Exception e){
            
            }
        %>  
        </table>
        <br>
        <br>
        <form action="DeleteoneServlet" method="post">
            <label>User Id:</label>
            <input type="text" placeholder="Enter user id" name="user_id"/>
        <button>Delete</button></form>
    </center>
    </body>
</html>
