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
import java.sql.ResultSet;
import java.sql.Statement;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String un=request.getParameter("u_uname");
        String password=request.getParameter("u_pass");
        String ro =request.getParameter("role");
        
        try { 
        
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
        Statement st = con.createStatement();
        ResultSet rs=st.executeQuery("SELECT * FROM `users` WHERE `u_uname`='"+un+"' AND `u_password`='"+password+"' AND `role`='"+ro+"'");
        if(rs.next()){
            if(ro.equals("user"))
            {
            response.sendRedirect("user.jsp");
            } else if(ro.equals("company")){
            response.sendRedirect("Company.jsp");
            }else if(ro.equals("pharmacy")){
                response.sendRedirect("pharmancy.jsp");
            }
        }
        else{
        out.println("Wrong user name or password or role ......!");
        }
            con.close();
        }catch(Exception e){
       System.out.println(e.getMessage());
    }
	}

}
