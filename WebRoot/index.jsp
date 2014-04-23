<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <title>About</title>
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
  
  <body  id="page1">
	<!--==============================header=================================-->
    <header>
    <%@include file="header.jsp" %>
        <div class="row-bot">
        	<div class="main">
                <figure class="img-indent-r"><img src="images/page1-img1.png" alt="" /></figure>
                <div class="extra-wrap indent">
                    <strong class="color-1">网站简介</strong>
                    <p>网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介网站简介</p>
                    <a class="button2" href="#">more</a>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </header>
    
	<!--==============================content================================-->
    <section id="content"><div class="ic">More Website Templates @ <a href="http://www.mycodes.net/" >网页模板</a> - February 06, 2012!</div>
        <div class="main">
            <div class="container_12">
                <div class="wrapper p3">
                <%for(int i=0;i<3;i++){ %>
                	<article class="grid_4">
                    	<div class="banner">
                        	<figure><img src="images/banner-1.jpg" alt="" /></figure>
                            <a class="button" href="#">more</a>
                        </div>
                    </article>
                <%} %>
                </div>
                <div class="wrapper p3">
                	<article class="grid_8">
                    	<h2>Next Event完全</h2>
                        <%for(int i=0;i<4;i++){ %>
                          <div class="wrapper border-bot p3">
                            <div class="img-indent">
                            	<p class="p3"><img src="images/page1-img2.png" alt=""></p>
                                <a class="button2" href="#">more</a>
                            </div>
                            <div class="extra-wrap">
                            	<span class="color-1">旅游景点 <%=i+1 %></span>
                            	旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点      旅游景点
                            </div>
                        </div>
                        <%} %>
                    </article>
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
