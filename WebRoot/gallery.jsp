<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Gallery</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/Glegoo_400.font.js" type="text/javascript"></script> 
    <script src="js/FF-cash.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript"></script>   
    <script src="js/jquery.galleriffic.js" type="text/javascript"></script>
    <script src="js/jquery.opacityrollover.js" type="text/javascript"></script>    
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
  
  <body  id="page5">
    <!--==============================header=================================-->
    <header>
    	 <%@include file="header.jsp" %>
    </header>
    
	<!--==============================content================================-->
    <section id="content">
        <div class="main">
            <div class="container_12">
                <div class="wrapper">
                	<article class="grid_8">
                    	<h2 class="p1">Our Gallery</h2>
                        <div class="slideshow-container">
                           <div id="slideshow" class="slideshow"></div>
                      	</div>
                        <div id="thumbs" class="navigation p3">
                          <ul class="thumbs noscript">
                              <li>
                                  <a class="thumb" href="images/gallery-img1.jpg">
                                      <img src="images/thumb-1.png" alt="" />
                                  </a>
                              </li>
                              <li>
                                  <a class="thumb" href="images/gallery-img2.jpg">
                                      <img src="images/thumb-2.png" alt="" />
                                  </a>
                              </li>
                              <li class="last">
                                  <a class="thumb" href="images/gallery-img3.jpg">
                                      <img src="images/thumb-3.png" alt="" />
                                  </a>
                              </li>
                              <li class="last2">
                                  <a class="thumb" href="images/gallery-img4.jpg">
                                      <img src="images/thumb-4.png" alt="" />
                                  </a>
                              </li>
                              <li class="last2">
                                  <a class="thumb" href="images/gallery-img5.jpg">
                                      <img src="images/thumb-5.png" alt="" />
                                  </a>
                              </li>
                              <li class="last3">
                                  <a class="thumb" href="images/gallery-img6.jpg">
                                      <img src="images/thumb-6.png" alt="" />
                                  </a>
                              </li>     
                          </ul>
                      </div>
                      <a class="button2" href="#">more</a>
                    </article>
                    <article class="grid_4">
                    	<div class="indent-top">
                        	<h3 class="img-indent-bot">Gallery点简介  Updates</h3>
                            <div class="indent-left p4">
                            	<p class="prev-indent-bot">景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介   景点简介</p>
                            </div>
                        </div>
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
    <script type="text/javascript">
		$(window).load(function() {	
			var gallery = $('#thumbs').galleriffic({
				delay:                     7000,
				numThumbs:                 6,
				preloadAhead:              6,
				enableTopPager:            false,
				enableBottomPager:         false,
				imageContainerSel:         '#slideshow',
				controlsContainerSel:      '',
				captionContainerSel:       '',
				loadingContainerSel:       '',
				renderSSControls:          false,
				renderNavControls:         true,
				playLinkText:              '',
				pauseLinkText:             '',
				prevLinkText:              '',
				nextLinkText:              '',
				nextPageLinkText:          '',
				prevPageLinkText:          '',
				enableHistory:             false,
				autoStart:                 7000,
				syncTransitions:           true,
				defaultTransitionDuration: 900
			});
		});
	</script>
  </body>
</html>
