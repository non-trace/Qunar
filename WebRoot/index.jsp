<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
	                <s:iterator value="#request.hot" var="hot">
	                	<article class="grid_4">
	                    	<div class="banner">
	                        	<figure>
	                        		${attractions_name}
	                        		<img src="${image_url}" alt="" />
	                        	</figure>
	                            <a class="button" href="attraction.action?attraction_id=${attractions_id}">more</a>
	                        </div>
	                    </article>
	                </s:iterator>
                </div>
                <div class="wrapper p3">
                	<article class="grid_8">
                    	<h2>Hot Attraction</h2>
                       <s:iterator value="#request.attractions" var="attractions">
                          <div class="wrapper border-bot p3">
                            <div class="img-indent">
                            	<p class="p3"><img src="${page1_image_url}" alt=""></p>
                                <a class="button2" href="attraction.action?attraction_id=${attractions_id}">more</a>
                            </div>
                            <div class="extra-wrap">
                            	<span class="color-1">${attractions_name}</span><br/>
                            	${attractions_describe}
                            </div>
                        </div>
                       </s:iterator>
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