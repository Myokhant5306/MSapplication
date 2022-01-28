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


public class MedicalOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String m_no=request.getParameter("no");
        String m_name=request.getParameter("name");
        String m_price=request.getParameter("prices");
        String quant=request.getParameter("number");
        Integer tot=Integer.parseInt(m_price)*Integer.parseInt(quant);
        String address=request.getParameter("address");
       
        try {
           
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            //creating connection with the database
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
            Statement st = con.createStatement();
            st.executeUpdate("INSERT INTO `orders_table`(roll_no,m_name,m_price,quantity,total,Address) VALUES ('"+m_no+"','"+m_name+"','"+m_price+"','"+quant+"','"+tot+"','"+address+"')");
           
            out.println("Medical oredred!");
           
        }
            catch(Exception e)
                    {
                        out.println(e);
                    }
		
	}

}
