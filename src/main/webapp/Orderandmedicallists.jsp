<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order and Medical lists</title>
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
                height: 250px;
            }
            #submit{
                width:100px;
            }
   
        </style>
    </head>
    <body style="background-color:greenyellow">
    <center>
        <nav>
         
        <h1 >Medical Lists</h1>
     
        </nav>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Roll No</th>
                <th>Medical Names</th>
                <th>Medical Prices</th>


            </tr>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                //creating connection with the database
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
                Statement st = con.createStatement();
                
                String str="select * from medical";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("roll_no")%></td>
                <td><%=rs.getString("m_name")%></td>
                <td><%=rs.getInt("m_price")%></td>
            </tr>
                        
            <%} 
            }catch(Exception e){
            
            }
        %> 
        
        
        </table>
        
        <br>
        <br>
        <div id="form">
        <form action="MedicalOrderServlet" method="post">
           
            <label>Roll_No :</label>
            <input type="text" name="no" placeholder="Enter medical no"/>
            <label>Medical Name:</label>
            <input type="text" name="name" placeholder="Enter medical names"/>
            <label>Medical Prices :</label>
            <input type="int" name="prices" placeholder="Enter medical prics"/>
            <label>Quantity :</label>
            <input type="text" name="number" placeholder="How much you want!"/>
            
            <label>Address :</label>
            <input type="text" name="address" placeholder="Enter your address"/>
            <br><br>
            <input type="submit" value="Enter" id="submit"/>
        </form>
        <br>
        <form action="pharmancy.jsp" method="post">
            <input type="submit" value="back" id="submit">
        </form>
        </div>
    </center>

    </body>
</html>
