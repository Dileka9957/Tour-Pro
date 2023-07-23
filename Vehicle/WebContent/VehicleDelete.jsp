<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Vid = request.getParameter("Vid");
	int no = Integer.parseInt(Vid);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from vehicle1 where Vid ='" +Vid+"'");
	response.sendRedirect("VehicleView.jsp");
	%>