<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String Did = request.getParameter("Did");
String Dname =request.getParameter("Dname");
String Dnic =request.getParameter("Dnic");
String DLno=request.getParameter("DLno");
String Dgen=request.getParameter("Dgen");
String dcNO=request.getParameter("dcNO");





if(Did != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Did);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update driver1 set Did=?,Dname=?,Dnic=?,DLno=?,Dgen=?,dcNO=? where Did="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,Dname);
ps.setString(3,Dnic);
ps.setString(4,DLno);
ps.setString(5,Dgen);
ps.setString(6,dcNO);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("DriverView.jsp");
rd.include(request, response);
}
else
{
out.print("There is a problem in updating Record.");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 