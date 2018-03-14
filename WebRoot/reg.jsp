<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/logreg.css">
  </head>
  
  <body>

	<div class="container">
	    <h1>Bootstrap Login Form</h1>
	    <div class="description">
	        <p>
		       This is a free responsive login form made with Bootstrap. 
		       Download it on, customize and use it as you like!
	        </p>
	    </div>
	 </div>  	
	 
<div class="form-box"> 		  	    	    
	<div class="form-top">
	  <div class="form-top-left">
	     <h3>Login to our site</h3>
	     <p>Enter your username and password to log on:</p>
	  </div>
	  <div class="form-top-right">
	  	<i class="fa fa-lock"></i>
	  </div>
	</div>

	<div class="form-bottom">
		    <s:form action="user/user_reg" method="post">
		      <s:textfield name="user.name" label="用户名"></s:textfield>
		      <s:textfield name="user.password" label="密码"></s:textfield>
		      <s:submit value="提交"></s:submit>
		      <s:reset value="重填"></s:reset>
		    </s:form>
    </div>
</div>
    
  </body>
</html>
