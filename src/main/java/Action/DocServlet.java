package Action;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@MultipartConfig(fileSizeThreshold= 1024*1024 *2,
maxFileSize=1024 * 1024 * 10,
maxRequestSize=1024 *1024 * 50)
public class DocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String user=request.getParameter("username");
        String pass=request.getParameter("pass");
        String address=request.getParameter("address");
        Part part=request.getPart("file");
        String fileName=extractFileName(part);
        String savePath="C:\\Users\\htaym\\eclipse-workspace\\MSapplication\\src\\main\\webapp\\Document" + File.separator+fileName;
        File fileSaveDir= new File(savePath);
        part.write(savePath + File.separator);
        try {
        // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            //creating connection with the database
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/medical_supply_db","root","");
            Statement st = con.createStatement();
            st.executeUpdate("INSERT INTO `document_table`(user_name,password,Address,part)values('"+user+"','"+pass+"','"+address+"','"+part+"')");
           
            //response.sendRedirect("index.jsp");
            out.println("License is uploaded!");
       
       
      
        
        } catch(Exception e)
                    {
                        out.println(e);
                    }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String [] iteams=contentDisp.split(";");
        for (String s: iteams){
        if(s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") +2,s.length() -1);
        }
        }
        return "";

}
}
