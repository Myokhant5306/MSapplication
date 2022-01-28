<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Table</title>
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
        <h1 >Orders List</h1>
        </nav>
        <table width=50% border="1">
            <tr>
                <th>Id</th>
                <th>Medical Number</th>
                <th>Medical Name</th>
                <th>Medical Prices</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Address</th>
               
      
            </tr>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                
                String str="select * from orders_table";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("roll_no")%></td>
                <td><%=rs.getString("m_name")%></td>
                <td><%=rs.getString("m_price")%></td>
                <td><%=rs.getString("quantity")%></td>
                <td><%=rs.getInt("total")%></td>
                <td><%=rs.getString("Address")%></td>
               
            </tr>
                        
            <%} 
            }catch(Exception e){
            
            }
        %>  
        </table>
        <br>
        <br>
        <form>
        <th>Id :</th><input type="text" name="no" placeholder="Enter medical no"/>
            <br><br>
            <input type="submit" value="Add Tasks"/>
        </form>
    </center>
    </body>
</html>
