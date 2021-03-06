<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Program</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
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
  
  <body  id="page3">
    <!--==============================header=================================-->
    <header>
    	 <%@include file="header.jsp" %>
    </header>

	<!--==============================content================================-->
	<section id="content">
		<div class="main">
			<div class="container_12">
				<div class="indent-right">
					<h2>Advancement</h2>
					<p class="p2">
						<span class="color-1">${attraction.attractions_name}</span><br/>
						${attraction.attractions_describe}
					</p>
					<div class="wrapper prev-indent-bot2">
						<figure class="img-indent">
							<img src="${attraction.image_url}" alt="">
						</figure>
						<div class="extra-wrap">                      	
    						开放时间:${attraction.attractions_time}<br/>
    						电&nbsp;&nbsp;话:${attraction.attractions_phone}<br/>
    						景点地址：${attraction.attractions_address}<br/>
    						门票信息：${attraction.attractions_ticket_info}
    					</div>
					</div>
					${attraction.attractions_detailed_information}
				</div>
            </div>
        </div>
    </section>
    
	<!--==============================footer=================================-->
    <footer>
      <%@include file="footer.jsp" %>
    </footer>
	<script type="text/javascript"> Cufon.now(); </script>
  </body>
</html>
