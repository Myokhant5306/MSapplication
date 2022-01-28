<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Do Tasks</title>
        <style>
            *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        .form-box{
            width:1500px;
            height:300px;
            margin:0% auto;
            background:whitesmoke;
            padding:5px;
            position:relative;
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
         
        <h1 >You need to do tasks</h1>
     
        </nav>
        <div class="form-box">
        <table width=100% border="1">
            <tr>
                <th>No</th>
                <th>Shop Name</th>
                <th>Address</th>
                <th>Time</th>
                


            </tr>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                
                String str="select * from tasks";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("shop_name")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getDate("time")%></td>
                
            </tr>
                        
            <%} 
            }catch(Exception e){
            
            }
        %>  
        </table>
        <br>
        <br>
        <form action="DeleteServlet" method="post">
        <th>Shop No:</th><input type="text" name="No" placeholder="Enter Shop id"/>
        <br><br>
                                <input type="submit" value="Done"/>
        </form>
        </div>
    </center>
    </body>
</html>
