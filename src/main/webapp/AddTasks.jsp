<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Tasks</title>
        <style>
            *{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        .form-box{
            width:380px;
            height:170px;
            margin:1% auto;
            background:greenyellow;
            padding:5px;
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
        <form action="AddTasksServlet" method="post">
           <div class="form-box">
           <label>Shop Name:</label>
           <input type="text" name="sn"/>
           <br>  
            <label>Address:</label>
            <input type="text" name="adress"/>
            <br>    
            <label>Time:</label>
            <input type="text" name="time"/>
                <br>
                <br>
            <input type="submit" value="Add" id="submit"/>
               
                <br>
                <br>
                
           
           </div>
        </form>
    </center>
    </body>
    
</html>