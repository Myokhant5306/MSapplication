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


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String fn=request.getParameter("u_fname");
        String ln=request.getParameter("u_lname");
        String un=request.getParameter("u_uname");
        String password=request.getParameter("u_pass");
        String address=request.getParameter("u_adress");
        String ro=request.getParameter("role");
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
            Statement st = con.createStatement();
            st.executeUpdate("INSERT INTO `users`(u_fname,u_lname,u_uname,u_password,u_address,role)values('"+fn+"','"+ln+"','"+un+"','"+password+"','"+address+"','"+ro+"')");
           
            //response.sendRedirect("index.jsp");
            out.println("Register successful!");
        }
            catch(Exception e)
                    {
                        out.println(e);
                    }
		
	}

}
