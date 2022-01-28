package Action;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class AddTasksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String shop_name=request.getParameter("sn");
        String Address=request.getParameter("adress");
        String time=request.getParameter("time");
        
        
        try {
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            //creating connection with the database
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
            Statement st = con.createStatement();
            st.executeUpdate("INSERT INTO `tasks`(shop_name, address, time)  VALUES ('"+shop_name+"','"+Address+"','"+time+"')");
           
           out.println("Task is added!");
           
        }
            catch(Exception e)
                    {
                        out.println(e);
                    }
	}

}
