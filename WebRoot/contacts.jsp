<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Contacts</title>
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
  
  <body id="page6">
  <!--==============================header=================================-->
    <header>
    	 <%@include file="header.jsp" %>
    </header>
    
	<!--==============================content================================-->
    <section id="content"><div class="ic">More Website Templates @ <a href="http://www.mycodes.net/" >网页模板</a> - February 06, 2012!</div>
        <div class="main">
            <div class="container_12">
            	<div class="wrapper p3">
                	<article class="grid_4">
                    	<div class="banner">
                        	<figure><img src="images/banner-1.jpg
                        	" alt="" /></figure>
                            <a class="button" href="#">more</a>
                        </div>
                    </article>
                    <article class="grid_4">
                    	<div class="banner">
                        	<figure><img src="images/banner-2.png" alt="" /></figure>
                            <a class="button" href="#">more</a>
                        </div>
                    </article>
                    <article class="grid_4">
                    	<div class="banner">
                        	<figure><img src="images/banner-3.png" alt="" /></figure>
                            <a class="button" href="#">more</a>
                        </div>
                    </article>
                </div>
                <div class="wrapper">
                	<article class="grid_8">
                    	<h2>Contact Form</h2>
                        <form id="contact-form" method="post" enctype="multipart/form-data">                    
                            <fieldset>
                                  <label><input name="name" value="Name:" onBlur="if(this.value=='') this.value='Name:'" onFocus="if(this.value =='Name:' ) this.value=''" /></label>
                                  <label><input name="email" value="Email:" onBlur="if(this.value=='') this.value='Email:'" onFocus="if(this.value =='Email:' ) this.value=''" /></label>
                                  <label><input name="phone" value="Phone:" onBlur="if(this.value=='') this.value='Phone:'" onFocus="if(this.value =='Phone:' ) this.value=''" /></label>
                                  <label class="message"><textarea onBlur="if(this.value=='') this.value='Message:'" onFocus="if(this.value =='Message:' ) this.value=''">Message:</textarea></label>
                                  <div class="buttons">
                                      <a class="button2" href="#" onClick="document.getElementById('contact-form').reset()">clear</a>
                                      <a class="button2" href="#" onClick="document.getElementById('contact-form').submit()">send</a>
                                  </div>											                           
                            </fieldset>						
                        </form>
                    </article>
                    <article class="grid_4">
                    	<div class="indent-top">
                        	<h3 class="img-indent-bot">Our Hours</h3>
                          	<div class="indent-left">
                            	<p class="prev-indent-bot">24 Hour Emergency Towing</p>
                                <span class="color-1">Monday - Friday: 7:30 am - 6:00</span>
                                <p class="prev-indent-bot"><span class="color-1">Saturday: 7:30 am - Noon</span></p>
                                <p class="indent-bot">Night Drop Available</p>
                                <figure class="img-indent-bot">
                                    <iframe width="260" height="180" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                                </figure>
                                <dl>
                                    <dt class="prev-indent-bot">Demolink.org 8901 Marmora Road,<br>Glasgow, D04 89GR.</dt>
                                    <dd><span>Telephone:</span>  +1 959 552 5963;</dd>
                                    <dd><span>FAX:</span>  +1 959 552 5963</dd>
                                    <dd><span>E-mail:</span> <a href="#">mail@demolink.org</a></dd>
                                </dl>
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
  </body>
</html>
