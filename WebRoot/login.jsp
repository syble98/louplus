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
    
    <title>登录页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.js"></script>
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
		    <s:form action="user/user_login" method="post">
		    
		      <div class="form-group">
		      <s:textfield name="user.name" label="用户名" placeholder="用户名"  ></s:textfield>
		      </div>
		      
		      <div class="form-group">
		      <s:password name="user.password" label="密码" placeholder="密码"  ></s:password>
		      </div>
		      
		      <s:submit value="登录"></s:submit>
		    </s:form>
	    </div>
   	</div>
         
  </body>
</html>
