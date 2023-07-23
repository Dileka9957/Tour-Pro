<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String Hid = request.getParameter("Hid");
String HregNo =request.getParameter("HregNo");
String Hname =request.getParameter("Hname");
String Hloca=request.getParameter("Hloca");
String Hemail=request.getParameter("Hemail");
String HpNo=request.getParameter("HpNo");





if(Hid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Hid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update hotel1 set Hid=?,HregNo=?,Hname=?,Hloca=?,Hemail=?,HpNo=? where Hid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,HregNo);
ps.setString(3,Hname);
ps.setString(4,Hloca);
ps.setString(5,Hemail);
ps.setString(6,HpNo);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("HotelView.jsp");
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