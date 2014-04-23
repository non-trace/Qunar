<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css"
	media="screen">
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Glegoo_400.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
<!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
        	<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
	<![endif]-->
<!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->

</head>

<body id="page1">
	<div style="height: 200"></div>
	<div class="row-bot">
		<div class="main">
			<figure class="img-indent-r">
			<img src="images/page1-img1.png" alt="" /></figure>
			<div class="extra-wrap indent">
				<form id="contact-form" method="post" enctype="multipart/form-data">
							<input name="name" value="请输入用户名" onBlur="if(this.value=='') this.value='请输入用户名'" onFocus="if(this.value =='请输入用户名' ) this.value=''" />
							<br/><br/>
							<input name="password" type="password"/>
						<div class="buttons">
							<a class="button2" href="#" onClick="document.getElementById('contact-form').submit()">login</a>
							<a class="button2" href="#" onClick="document.getElementById('contact-form').reset()">clear</a>
						</div>
				</form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>
