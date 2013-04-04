<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<script>
	
			function loadXMLDoc()
			{
				var xmlhttp;
				var txt,x,i;
				if (window.XMLHttpRequest)
  				{// code for IE7+, Firefox, Chrome, Opera, Safari
 					 xmlhttp=new XMLHttpRequest();
  				}
				else
 				{// code for IE6, IE5
  					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  				}
				xmlhttp.onreadystatechange=function()
  				{
  					if (xmlhttp.readyState==4 && xmlhttp.status==200)
    				{
    					xmlDoc=xmlhttp.responseXML;
    					txt="";
    					x=xmlDoc.getElementsByTagName("addr");
    
    					for (i=0;i<x.length;i++)
      					{
      						txt=txt + x[i].childNodes[0].nodeValue + "<br />";
      					}
   						document.getElementById("myDiv").innerHTML=txt;
    				}
 				 }
				xmlhttp.open("GET","ajax.jsp",true);
				xmlhttp.send();
			}
	
	</script>
	
	

  </head>
  
  <body>
    <h2>My Book Collection:</h2>
		<div id="myDiv"></div>
		<button type="button" onclick="loadXMLDoc()">获得我的图书收藏列表</button>
  </body>
</html>
