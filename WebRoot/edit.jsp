<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>显示good详情</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet"  href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet"  href="<%=basePath%>css/style.css">
	<script type="text/javascript" src="<%=basePath%>js/jquery.fileupload.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileinput.js"></script>
	<script src="http://btc.phpno.com/js/jquery/1.9.1.min.js?=1.03"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="js/vendor/jquery.ui.widget.js"></script>

<script src="js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="js/jquery.fileupload.js"></script>
	 <!-- <script type="text/javascript"> $('input[type=file]').bootstrapFileInput();</script>
  --></head>
  
    <body>
   <div class="container-fluid">
 <!--  类用于100%宽度,占据全部视口的容器 -->
 <div class="row">
   <div class="col-md-10">
    <s:form action="goods/goods_editGoods" cssClass="form-horizontal" entype="multipart/form-data">
      <s:hidden name="goods.goodsid"/>
      <div class="panel panel-default"><!-- 基础面板,产生一个具有边框的文本显示块,panel-default控制主题的颜色 -->
       <div class="panel-heading"><!--用来设置头部样式 -->
        <h2 class="panel-title"><i class="fa fa-cutlery"></i>添加商品</h2>
  </div>
  <div class="panel-body">
   <div class="form-group">
   <!-- 我们需要将表单元素包裹到form-group类里，一般以<div class="form-group">.
   ..</div>来进行存放，而在它内容表单元素名称一般放在label标签里，而input标签的类名为
   form-control， 值得注意的是，你的checkbox和radio等元素需要写在自己的div里 -->
   <label class="control-label col-md-3 " for="goodsname">商品名称</label><!-- control label 是右对齐,加上了form-horizonal为左对齐 -->
      <div class="col-md-4 ">
      <input type="text" name="goods.goodsname"value='goods.goodsname' class="form-control input-sm" required> 
      </div>
  </div>
  <div class="form-group">
     <label class="control-label col-md-3 ">商品单价</label>
     <div class="col-md-4 ">
        <input type="text" name="goods.unitprice" class="form-control " placeholder="goodsPrice">
       </div>
   </div> 
  <form action="b.php" method="post">
<!-- 图片上传按钮 -->
<input id="fileupload" type="file" name="image" data-url="./a.php" multiple>
<!-- 图片展示模块 -->
<div class="files">
</div>
<div style="clear:both;"></div>
<!-- 图片上传进度条模块 -->
<div class="up_progress">
  <div class="progress-bar"></div>
</div>
<div style="clear:both;"></div>
<br/>
<button type="submit">Submit</button>
</form>
  <!--  <div class="form-group">
     <label class="control-label col-sm-2">商品图片</label>  
     <div class="col-md-4"> 
        <div class="fileupload fileupload-new" data-provides="fileupload">
          <div class="fileupload-new thumbnail"style="width: 200px;height:150px;">
             <img src="<%=basePath%>upload/demoUpload.jpg" alt=""/>
          </div>
            <div class="fileupload-preview fileupload-exists thumbnail"
              style ="max-width:200px;max-height:50px;line-height:20px;">
          </div>
           <div>
              <span class="btn btn-file btn-primary">
              <span class="fileupload-new">换张图片</span>
              <span class="fileupload-exists"></span>
              <input type="file" name="goodsPhoto"/></span>
              <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
          
          </div>
        </div>
      </div>
  </div> -->
 <!--   <div class="form-group">
    <div  class="col-sm-offset col-sm-10">
       <button type="submit" class="btn  btn-default"> 提交</button>
      </div>
      </div>-->
    </div>
    </div>
 </s:form>
 </div>
 </div>
</div>
<script type="text/javascript">
  //图片上传
  $("#fileupload").fileupload({
    dataType: 'json',
    add: function (e, data) {
      var numItems = $('.files .images_zone').length;
      if(numItems>=10){
        alert('提交照片不能超过3张');
        return false;
      }
      $('.up_progress .progress-bar').css('width','0px');
      $('.up_progress').show();
      $('.up_progress .progress-bar').html('Uploading...');
      data.submit();
    },
    done: function (e, data) {
      $('.up_progress').hide();
      $('.upl').remove();
      var d = data.result;
      if(d.status==0){
        alert("上传失败");
      }else{
        var imgshow = '<div class="images_zone"><input type="hidden" name="imgs[]" value="'+d.msg+'" /><span><img src="'+d.msg+'"  /></span><a href="javascript:;">删除</a></div>';
        jQuery('.files').append(imgshow);
      }
    },
    progressall: function (e, data) {
      console.log(data);
      var progress = parseInt(data.loaded / data.total * 100, 10);
      $('.up_progress .progress-bar').css('width',progress + '%');
    }
  });
  //图片删除
  $('.files').on({
    mouseenter:function(){
      $(this).find('a').show();
    },
    mouseleave:function(){
      $(this).find('a').hide();
    },
  },'.images_zone');
  $('.files').on('click','.images_zone a',function(){
    $(this).parent().remove();
  });
</script>
<style type="text/css">
/* 图片展示样式 */
.images_zone{position:relative; width:120px;height:120px; overflow:hidden; float:left; margin:3px 5px 3px 0; background:#f0f0f0;border:5px solid #f0f0f0; }
.images_zone span{display:table-cell;text-align: center;vertical-align: middle;overflow: hidden;width: 120px;height: 120px;}
.images_zone span img{width:120px; vertical-align: middle;}
.images_zone a{text-align:center; position:absolute;bottom:0px;left:0px;background:rgba(255,255,255,0.5); display:block;width:100%; height:20px;line-height:20px; display:none; font-size:12px;}
/* 进度条样式 */
.up_progress{width: 300px;height: 13px;font-size: 10px;line-height: 14px;overflow: hidden;background: #e6e6e6;margin: 5px 0;display:none;}
.up_progress .progress-bar{height: 13px;background: #11ae6f;float: left;color: #fff;text-align: center;width:0%;}
</style>
 </body>
</html>
  
