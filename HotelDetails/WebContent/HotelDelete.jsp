<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Hid = request.getParameter("Hid");
	int no = Integer.parseInt(Hid);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from hotel1 where Hid ='" +Hid+"'");
	response.sendRedirect("HotelView.jsp");
	%>