<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">
	  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	  <!-- <link rel="stylesheet" type="text/css" href="<%=basePath%>css/add.css"> -->
	   <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css">
	  <script src="<%=basePath%>js/jquery.fileupload.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileinput.js"></script>
 </head>
  <body>
   <main class="container-fluid">
 <!--  类用于100%宽度,占据全部视口的容器 -->
 <div class="row">
   <div class="col-md-12">
    <s:form action="goods/goods_addGoods" cssClass="form-horizontal" entype="multipart/form-data" >
      <div class="panel panel-default"><!-- 基础面板,产生一个具有边框的文本显示块,panel-default控制主题的颜色 -->
       <div class="panel-heading"><!--用来设置头部样式 -->
        <h2 class="panel-title"><i class="fa fa-cutlery"></i>添加商品</h2>
  </div>
  <div class="panel-body">
   <div class="form-group">
   <!-- 我们需要将表单元素包裹到form-group类里，一般以<div class="form-group">.
   ..</div>来进行存放，而在它内容表单元素名称一般放在label标签里，而input标签的类名为
   form-control， 值得注意的是，你的checkbox和radio等元素需要写在自己的div里 -->
   <label  for="exampleInputEmail1">商品名称</label>
   <!-- control label 是右对齐,加上了form-horizonal为左对齐 -->
     <!--   <div class="col-md-4 ">-->
     <input type="text" name="goods.goodsname" class="form-control" id="exampleInputEmail1" placeholder="goodsname" required> 
     </div>
  </div>
  <div class="form-group">
     <label for=" exampleInputPassword1">商品单价</label>
        <input type="text" name="goods.price" class="form-control " placeholder="goodsPrice" required> 
   </div> 
   
   <!--   <div class="form-group">   
                 <label class="control-label" for="FileUpload1">上传图片</label>
                 <img src="<%=basePath%>upload/demoUpload.jpg" alt=" "/>
                 <div class="controls">
                 <input class="input-file uniform_on" id="FileUpload1" name="FileUpload1" type="file">
                 <script type="text/javascript"> $('input[type=file]').bootstrapFileInput();</script>
                 
                 
             </div>
   </div>-->
<!--     <div class="form-group"> 
<label for="inputEmail3" class="col-xs-3 control-label">商品图片</label> 
<div class="col-xs-7"> 
<input id="testlogo" type="file" name="icoFile" class="file-loading" /> 
<img src="<%=basePath%>upload/demoUpload.jpg" alt=" "/> 
</div> 
</div>-->
       <label class="control-label col-md-3">商品图片</label>   
        <div class="fileupload fileupload-new" data-provides="fileupload">
          <div class="fileupload-new thumbnail"style="width: 200px;height:150px;">
          <input id="testlogo" type="file" name="goodsPhoto" class="file-loading" /> 
             <img src="<%=basePath%>upload/demoUpload.jpg" alt=""/>
          </div>
           <!--   <div class="fileupload-preview fileupload-exists thumbnail"
              style ="max-width:200px;max-height:50px;line-height:20px;">
          </div>--> 
           <div>
   <!--           <span class="btn btn-file btn-primary"><span class="fileupload-new">游览</span>
              <span class="fileupload-exists"></span><input type="file" name="goodsPhoto"/></span>
              <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
          </div>
        </div>
      </div> --> 
  </div>
  <div class="form-group ">
       <button type="submit" class="btn  btn-default"> 提交</button>
      </div>
    </div>
 </s:form>
 </div>
 </div>
</main>
 </body>
</html>
