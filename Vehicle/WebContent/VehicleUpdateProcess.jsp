<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String Vid = request.getParameter("Vid");
String Vmodel =request.getParameter("Vmodel");
String Vno =request.getParameter("Vno");
String Vbrand=request.getParameter("Vbrand");
String OwnerName=request.getParameter("OwnerName");
String Vpno=request.getParameter("Vpno");





if(Vid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Vid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update vehicle1 set Vid=?,Vmodel=?,Vno=?,Vbrand=?,OwnerName=?,Vpno=? where Vid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,Vmodel);
ps.setString(3,Vno);
ps.setString(4,Vbrand);
ps.setString(5,OwnerName);
ps.setString(6,Vpno);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("VehicleView.jsp");
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