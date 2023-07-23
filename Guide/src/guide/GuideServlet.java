package guide;


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
import guide.DatabaseConnecter; 

//Servlet Name 
@WebServlet("/GuideServlet") 
public class GuideServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into guide1 values(?,?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("Gid"))); 
			st.setString(2, String.valueOf(request.getParameter("Gname")));
			st.setString(3, String.valueOf(request.getParameter("Gaddress")));
			st.setString(4, String.valueOf(request.getParameter("Gnic"))); 
			st.setString(5, String.valueOf(request.getParameter("Gemail"))); 
			st.setString(6, String.valueOf(request.getParameter("Gpno"))); 
			
			
			st.executeUpdate(); 

			
			st.close(); 
			con.close(); 

			 
			PrintWriter out = response.getWriter(); 

			
			RequestDispatcher rd = request.getRequestDispatcher("/GuideView.jsp");
			rd.include(request, response);
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



