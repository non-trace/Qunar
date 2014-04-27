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

<link rel="stylesheet" href="<%=basePath%>css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="<%=basePath%>css/grid.css" type="text/css"
	media="screen">
<script src="<%=basePath%>js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="<%=basePath%>js/cufon-yui.js" type="text/javascript"></script>
<script src="<%=basePath%>js/cufon-replace.js" type="text/javascript"></script>
<script src="<%=basePath%>js/Glegoo_400.font.js" type="text/javascript"></script>
<script src="<%=basePath%>js/FF-cash.js" type="text/javascript"></script>
<script src="<%=basePath%>js/script.js" type="text/javascript"></script>
<!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->

</head>

<body id="page1">
<!--==============================header=================================-->
    <header>
    	 <%@include file="header.jsp" %>
    </header>
	<div class="row-bot">
		<div class="main">
			<figure class="img-indent-r">
			<img src="${pageContext.request.contextPath}/images/page1-img1.png" alt="" /></figure>
			<div class="extra-wrap indent">
				<form id="contact-form" method="post" enctype="multipart/form-data" action="login!login.action">
							<input name="userId" value="请输入用户名" onBlur="if(this.value=='') this.value='请输入用户名'" onFocus="if(this.value =='请输入用户名' ) this.value=''" />
							<br/><br/>
							<input name="password" type="password"/>
						<div class="buttons">
							<a class="button2" href="javascript:document.getElementById('contact-form').submit()">login</a>
							<a class="button2" href="#" onClick="document.getElementById('contact-form').reset()">clear</a>
						</div>
				</form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>
