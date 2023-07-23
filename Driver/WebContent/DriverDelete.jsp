<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Did = request.getParameter("Did");
	int no = Integer.parseInt(Did);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from driver1 where Did ='" +Did+"'");
	response.sendRedirect("DriverView.jsp");
	%>