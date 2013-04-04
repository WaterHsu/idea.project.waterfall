<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	


    <link rel="stylesheet" href="pubu.css">
   
</head>
<body onload="firstload()">
<div id="warp" class="warp">
    <div class="full" id="row1">
 
      
    </div>
    <div class="full" id="row2">
      
    
      
    </div>
    <div class="full" id="row3">
      
      
       
    </div>
    <div class="full last" id="row4">
       
        
    </div>
</div>
<script type="text/javascript" src="pubu.js"></script>
  </body>
</html>
