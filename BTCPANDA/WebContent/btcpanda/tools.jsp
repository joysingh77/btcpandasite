<!-- Generated on Thu Jan 09 10:55:53 PST 2014 by RAJI using AutoCodings -->
<%
    response.setHeader("Cache-Control","no-cache"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/half3-components" prefix="hc3" %>
<%@ taglib uri="/half3-tags" prefix="h3" %>
<%@ taglib uri="/half-tags" prefix="h" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>BTCPanda</title>
    <hc3:components ids="editable_webtable,webtable,calendar,tabview,multiselectcontrol,dialog,linkbutton,carousel,carousel"></hc3:components>
    
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <!-- Meta -->
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/headers/header-default.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/animate.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/pages/page_log_reg_v1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
    <!--[if lt IE 9]><link rel="stylesheet" href="plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen">
	<![endif]-->

    <!-- CSS Theme -->    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/theme-colors/default.css" id="style_color">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/theme-skins/dark.css">
	 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/sky-forms.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/custom.css">
</head>	
<body>
<!--=== Style Switcher ===-->    
<!--<i class="style-switcher-btn fa fa-envelope hidden-xs"></i>-->
<div class="style-switcher animated fadeInRight">
    <div class="style-swticher-header">
        <div class="style-switcher-heading">ONLINE CHAT</div>            
        <div class="theme-close"><i class="icon-close"></i></div>
    </div>

   

        <!-- Theme Skins -->
         
    </div>
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->    

<div class="wrapper page-option-v1">
    <!--=== Header ===-->    
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" >
                <img src="../btcpanda/img/panda.gif" height="100px" width="120" alt="Logo">
            </a>
            <!-- End Logo -->
            
            
            <div class="topbar">
                <ul class="loginbar pull-right navbar-responsive-collapse1">
                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                        <a></a>
                        <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">English &nbsp;<img src="../img/btcpanda/arro.png"></a> 
                            </li>
                            <li><a href="#">Spanish&nbsp;<img src="../img/btcpanda/arro.png"></a></li>
                            <li><a href="#">Russian&nbsp;<img src="../img/btcpanda/arro.png"></a></li>
                            <li><a href="#">German&nbsp;<img src="../img/btcpanda/arro.png"></a></li>
                        </ul>
                    </li>
                    <li class="topbar-devider"></li>    
                     
                   <li><a href="http://btcpanda.com/login">Login</a></li>
					<li class="topbar-devider"></li>   
                    <li><a href="http://btcpanda.com/register">Sign Up</a></li>     
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                    <!-- Home -->
                    <li >
                        <a href="../guest/Index.action"  >
                            HOME
                        </a>
                                                      
                            </li>

         
                    <li >
                        <a href="../guest/AboutBTCPanda.action"  >
                            ABOUT BTCPANDA
                        </a>
                                                      
                            </li>
                            <!-- End About Pages -->

                            <!-- Service Pages -->
                           
                    <!-- End Pages -->

                    <!-- Blog -->
                    <li >
                        <a href="../guest/BitCoinWallet.action" >
                           BITCOIN WALLET
                        </a>
                                                        
                            </li>
                           
                    <!-- Portfolio -->
                    <li >
                        <a href="../guest/BuyandSellBitCoins.action"  >
                           BUY/SELL BITCOIN
                        </a>
                                                      
                            </li>                        
                           
                    <!-- End Portfolio -->

                    <!-- Features -->
                    <li>
                        <a href="javascript:void(0);"  >
                            TOOLS
                        </a>
                                       
                            </li>                        
                          

                    <!-- Shortcodes -->
                    <li >
                        <a href="javascript:void(0);"  >
                           PANDA ACADEMY
                        </a>
                       
                    </li>
             
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->

   
   
   
   
                    
                    <!-- Link List -->
                    <div class="col-md-4 md-margin-bottom-20">
                        <div class="headline"><h2>Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="../guest/AboutBTCPanda.action">About Btcpanda</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="www.bitcoin.org">bitcoin.org</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="../guest/BitCoinWallet.action"> Bitcoin Wallet</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="../guest/BuyandSellBitCoins.action">Buy/Sell Bitcoin</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Panda Academy</a><i class="fa fa-angle-right"></i></li>
							   
    
                        </ul>
                    </div><!--/col-md-3-->
                    <!-- End Link List -->                    

                    <!-- Address -->
					
                    <div class="col-md-4 map-img md-margin-bottom-40">
                        <div class="headline"><h2>Contact Us</h2></div>                         
                   		<form class="reg-page">
							<fieldset class="no-padding">
								 <div class="input-group margin-bottom-20">
                        <span class="input-group-addon" style="opacity: .81;"><i class="fa fa-user"></i></span>
                        <input type="text" placeholder="Name" class="form-control" style="opacity: 0.61;">
                    </div>       
								
								<div class="input-group margin-bottom-20">
                        <span class="input-group-addon" style="opacity: .81;"><i class="fa fa-globe "></i></span>
                        <input type="text" placeholder="email" class="form-control" style="opacity: 0.61;">
                    </div>       
								
								<div class="input-group margin-bottom-20">
                        <span class="input-group-addon" style="opacity: .81;"><i class="fa fa-envelope"></i></span>
                        <textarea name="text"  placeholder="Query" cols="" rows="1" class="form-control" style="opacity: 0.61;"></textarea>
                    </div>       
								<p><button type="submit" class="btn-u">Send Message</button></p>
							</fieldset>

						</form>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            2015 &copy; All Rights Reserved.
                         
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div> 
        </div><!--/copyright-->
    </div>     
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
      <link rel="stylesheet" type='text/css' href="<%=request.getContextPath()%>/btcpanda/css/one.style.css">
		<link rel="stylesheet" type='text/css' href="<%=request.getContextPath()%>/btcpanda/css/blocks.css">

			
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/jquery.parallax.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/app.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/plugins/revolution-slider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/plugins/style-switcher.js"></script>
<script>
    jQuery(document).ready(function() {
      	App.init();
        App.initParallaxBg();
        FancyBox.initFancybox();
        OwlCarousel.initOwlCarousel();
        StyleSwitcher.initStyleSwitcher();        
        RevolutionSlider.initRSfullWidth();
    });
</script>


</body>


</html>