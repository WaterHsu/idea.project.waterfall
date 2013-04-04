<%@ page contentType="text/xml" import="java.util.*" pageEncoding="utf-8"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@page import="java.sql.*" %>


<% 
		Class.forName("com.mysql.jdbc.Driver"); 
		
		String dbUrl = "jdbc:mysql://127.0.0.1:3309/webcollection";
		String dbUsr = "root";
		String dbPwd = "475356336";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from xpf_first_webs";
		
		try
		{
			Connection con=DriverManager.getConnection(dbUrl,dbUsr,dbPwd);
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
			
			out.clear();
			out.print("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
			out.print("<web>");
			while(rs.next())
			{
				out.print("<name>" +rs.getString("xpf_first_webs_name")+ "</name>");
				out.print("<pic>" +rs.getString("xpf_first_webs_logpicture")+ "</pic>");
				out.print("<addr>" +rs.getString("xpf_first_webs_address")+ "</addr>");
				
			}
			
			out.print("</web>");
			
			con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			rs.close();
			ps.close();
			//con.close();
		}
%>







