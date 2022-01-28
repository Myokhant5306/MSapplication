<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lists Tasks</title>
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
            table{
                border-collapse:collapse;
               
                background-color:whitesmoke;
                overflow:hidden;
            }
        </style>
    </head>
    <body style="background-color:greenyellow">
    <center>
        <nav>
        <h1>Congratulation!</h1>
        </nav>
     
         
        <table width=100% border="1">
            <tr>
                <th>Rank</th>
                <th>User Name</th>
                <th>Tasks</th>
             
            </tr>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                
                String str="select * from result_sell";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("tasks")%></td>
                
            </tr>
                        
            <%} 
            }catch(Exception e){
            
            }
        %>  
        </table>
       
   </center>
    </body>
</html>
