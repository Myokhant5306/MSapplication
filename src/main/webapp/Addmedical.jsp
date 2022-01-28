<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Medicals</title>
        <style>
            *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        .form-box{
            width:380px;
            height:200px;
            margin:1% auto;
            background:yellowgreen;
            padding:10px;
            position:relative;
            
        }
            nav{
            flex:1;
            background-color:rgb(248,148,6);
            height:50px;
            text-align:center;
            }
           
            label{
                width:100px;
                display:inline-block;
                margin: 5px;
            }
            #submit{
                width:100px;
                position:absolute;
            }
        </style>
    </head>
    
    <body style="background-color:rgb(44,62,80)">
    <center>
        <nav>
            
        <h1 >Welcome boss!</h1>
            
        </nav>
        <div class="form-box">
        <form action="AddmedicalServlet" method="post">
          <label>Roll No:</label>
          <input type="text" name="roll_no"/>
          <br>
          <label>Medical Name:</label>
          <input type="text" name="m_name"/>
          <br>    
          <label>Medical Price:</label>
          <input type="text" name="m_price"/>
               
                <br><br>
                
                   <input type="submit" value="Add" id="submit"/>
               
                <br><br>
        </form>
        </div>
    </center>
    </body>
    
</html>
