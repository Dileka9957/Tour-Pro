package drive;


import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 


//Import Database Connection Class file 
import drive.DatabaseConnecter; 

//Servlet Name 
@WebServlet("/DriverServlet") 
public class DriverServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into driver1 values(?,?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("Did"))); 
			st.setString(2, String.valueOf(request.getParameter("Dname")));
			st.setString(3, String.valueOf(request.getParameter("Dnic")));
			st.setString(4, String.valueOf(request.getParameter("DLno"))); 
			st.setString(5, String.valueOf(request.getParameter("Dgen"))); 
			st.setString(6, String.valueOf(request.getParameter("dcNO"))); 
			
			
			st.executeUpdate(); 

			
			st.close(); 
			con.close(); 

			 
			PrintWriter out = response.getWriter(); 

			
			RequestDispatcher rd = request.getRequestDispatcher("/DriverView.jsp");
			rd.include(request, response);
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



