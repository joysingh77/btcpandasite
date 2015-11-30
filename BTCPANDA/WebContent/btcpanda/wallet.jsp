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
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/headers/header-default.css">
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/animate.css">
	    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">    
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/line-icons/line-icons.css">
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/bootstrap.icon-large.min.css" type="text/css" media="screen">
	<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/bootstrap.icon-large.css" type="text/css" media="screen">
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
    <!--[if lt IE 9]><link rel="stylesheet" href="plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen">
	<![endif]-->

    <!-- CSS Theme -->    




    <!-- CSS Customization -->
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/custom.css">
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
            
            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                                               <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">English &nbsp;<img src="../btcpanda/img/arro.png"></a> 
                            </li>
                            <li><a href="#">Spanish &nbsp;<img src="../btcpanda/img/arro.png"></a></li>
                            <li><a href="#">Russian &nbsp;<img src="../btcpanda/img/arro.png"></a></li>
                            <li><a href="#">German &nbsp;<img src="../btcpanda/img/arro.png"></a></li>
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
                
                     <!--<li>
                        <i class="search fa fa-search search-btn"></i>
                        <div class="search-open">
                            <div class="input-group animated fadeInDown">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">
                                    <button class="btn-u" type="button">Go</button>
                                </span>
                            </div>
                        </div>    
                    </li>-->
                    <!-- End Search Block -->
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    
	 <div class='bg-image-vv bg-image-v2-dark parallaxBg1'>
        <div class='container'>
            <div class='headline-center-v2 margin-bottom-10'>
               <br/>
			
                 <h1 style="color:#F79324">CHOOSE YOUR WALLET</h1>
        </div>
               <!-- <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et qua s molestias excepturi vehicula sem ut volutpat. Ut non libero magna fusce co.</p><br><br>-->
              <!--  <button type='button' class='btn-u btn-brd btn-brd-hover btn-u-light'>Download Now</button>--> 
            </div><!--/Headline Center V2-->   
        </div><!--/container-->
    </div>
	
 <div class="cube-portfolio container margin-bottom-60">
        <div class="content-xs">
            <div id="filters-container" class="cbp-l-filters-text content-xs">
                
                <div data-filter=".mobile" class="cbp-filter-item-active cbp-filter-item"> MOBILE </div> |
                <div data-filter=".desktop" class="cbp-filter-item">DESKTOP</div> |
                <div data-filter=".web" class="cbp-filter-item"> WEB </div> |
                <div data-filter=".hardware" class="cbp-filter-item"> HARDWARE </div>|
				<div data-filter=".bank" class="cbp-filter-item"> BANK </div>|
				<div data-filter=".full" class="cbp-filter-item "> FULL </div> 
            </div><!--/end Filters Container-->
        </div>
		
        <div id="grid-container" class="cbp-l-grid-agency">
            <div class="cbp-item full">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Full/Bitcoin Core + BIP101.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                <ul class="link-captions no-bottom-space">
                                    </i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"> <a  href="javascript:void(0);" data-toggle="modal" data-target=".bitcoin">Bitcoin Core + BIP101</a> </div>
       
                </div>
            </div>
			
            <div class="cbp-item full" >
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Full/Bitcoin Core + BIP101.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bitcoin-core">Bitcoin Core</a> </div>
                   
                </div>
            </div>
             <div class="cbp-item full">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Full/BitcoinXT.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bitcoin-xt">Bitcoin XT</a></div>
                </div>
            </div>
            <div class="cbp-item bank">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Full/BitcoinXT.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bitcoin-xt-1">Bitcoin XT</div>
                   
                </div>
            </div>
            <div class="cbp-item bank">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Bank/Coinapult.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".coinapult">Coinapult</a></div>
                    
                </div>
            </div>
            <div class="cbp-item bank">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Bank/Coinbase.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".coinbase">Coinbase</a></div>
                    
                </div>
            </div>
            <div class="cbp-item bank">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Bank/xapo.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".xapo">xapo</a></div>
                    
                </div>
            </div>
            <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Armory.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".armory">Armory</a></div>
                </div> 
            </div>
            <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Bitgo.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                                
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bitgo">Bitgo</a></div>
                    
                </div>
            </div>
            <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Bither.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bither">Bither</a></div>
                  
                </div>
            </div>
            <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Blockchain.info.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                              
                            </div>
                        </div>
                    </div>
                </div>
               <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".blockchain">Blockchain.info</a></div>
                   
                </div> 
            </div>
            <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Copay.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".copay-1">Copay</a></div>
                    
                </div>
            </div>
			
			 <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Electrum.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".electrum">Electrum</a></div>
                    
                </div>
            </div>
				
			 <div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/mSIGNA.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".msigna">mSIGNA</a></div>
                   
                </div>
            </div>
			
			<div class="cbp-item desktop">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Desktop Wallets/Multibit HD.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".multibit-hd">Multibit HD</a></div>
                    
                </div>
            </div>
			
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Airbits.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".airbitz">Airbitz</a> </div>
                </div>
            </div>
			
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Bither.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bither-1">Bither</a></div>
                </div>
            </div>
			
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Blockchain.info.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".blockchain-1">Blockchain.info</a></div>
                </div>
            </div>
			
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Blocktrail.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".blocktrail">Blocktrail</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Breadwallet.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".breadwallet">Breadwallet</a></div>
                  
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Coinomi.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".coinomi">Coinomi</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Copay.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".copay-1">Copay</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Green Address.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".greenaddress">Green Address</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/LUXSTACK.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".luxstack">LUXSTACK</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Mycelium.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".mycelium">Mycelium</a></div>
                    
                </div>
            </div>
			<div class="cbp-item mobile">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Mobile Wallets/Schildbach.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".schildbach">Schildbach</a></div>
                  
                </div>
            </div>
			
			<div class="cbp-item hardware">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Hardware/case.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".case">case</a></div>
                    
                </div>
            </div>
			
			<div class="cbp-item hardware">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Hardware/Keepkey.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".keepkey">Keepkey</a></div>
                    
                </div>
            </div>
			<div class="cbp-item hardware">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Hardware/LedgerNano.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".ledgernano">LedgerNano</a></div>
                    
                </div>
            </div>
			<div class="cbp-item hardware">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Hardware/Trezor.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".trezor">Trezor</a></div>
                   
                </div>
            </div>
			
			<div class="cbp-item web">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Web/Bitgo.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".bitgo-1">Bitgo</a></div>
                    
                </div>
            </div>
			
			<div class="cbp-item web">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Web/Blockchain.info.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".blockchain-2">Blockchain.info</a></div>
                  
                </div>
            </div>
			
				<div class="cbp-item web">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Web/Blocktrail.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".blocktrail-1">Blocktrail</a></div>
                    
                </div>
            </div>
			
			<div class="cbp-item web">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Web/coinkite.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".coinkite">coinkite</a></div>
                   
                </div>
            </div>
			
			<div class="cbp-item web">
                <div class="cbp-caption margin-bottom-20">
                    <div class="cbp-caption-defaultWrap">
                        <img src="../btcpanda/img/wallets/Web/Green address.png" alt="">
                    </div>
                    <div class="cbp-caption-activeWrap">
                        <div class="cbp-l-caption-alignCenter">
                            <div class="cbp-l-caption-body">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cbp-title-dark">
                    <div class="cbp-l-grid-agency-title"><a  href="javascript:void(0);" data-toggle="modal" data-target=".greenaddress-1">Green address</a></div>
                   
                </div>
            </div>
			
        </div>
    </div>
	<!-- popup window-->
	<div class="modal fade bitcoin" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">Bitcoin Core + BIP101</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						
						</div>
						
						<div class="col-md-4">
						<a href="https://github.com/bitpay/bitcoin/tree/0.11.1-big-blocks">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									 
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li> Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bitcoin Core is a full Bitcoin client and builds the backbone of the network. It offers high levels of security, privacy, and stability. This client is a full bitcoin node that helps the bitcoin network relaying transactions, however, it requires at least 50 gigabytes of harddisk space and is not recommended for new users of bitcoin. If you are new to bitcoin, please look at a mobile or desktop wallet. This is Bitpay's fork with BIP101 support. It means that the blocks can get larger than the current limit of 1Mb. There is no binary, so you will need to compile this yourself. If you don't know what BIP101 is, please choose another wallet.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bitcoin-core" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITCOIN CORE</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://bitcoin.org/en/download">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						
						</a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/bitcoin/bitcoin">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li> Basic Transparency</li>
									 <li> Vulnerable environment</li>
									 <li> Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bitcoin Core is a full Bitcoin client and builds the backbone of the network. It offers high levels of security, privacy, and stability. This client is a full bitcoin node that helps the bitcoin network relaying transactions, however, it requires at least 50 gigabytes of harddisk space and is not recommended for new users of bitcoin. If you are new to bitcoin, please look at a mobile or desktop wallet.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bitcoin-xt" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITCOIN XT</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://bitcoinxt.software/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						
						</a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/bitcoinxt/bitcoinxt">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li> Basic Transparency</li>
									 <li> Vulnerable environment</li>
									 <li> Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bitcoin XT is a fork of Bitcoin Core, with a focus on upgrades to the peer to peer protocol. By running it you can opt in to providing the Bitcoin network with additional services beyond what Bitcoin Core nodes provide. Just like the original, Bitcoin XT takes a lot of space and memory.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade coinapult" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COINAPULT</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						
						</div>
						
						<div class="col-md-4">
						<a href="https://coinapult.com/signup">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</a>
						</div>
						<div class="col-md-4">
						
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Money controlled by a third party</li>
									 <li>Centralized verification</li>
									 <li> Remote app</li>
									 <li> Two-factor authentication</li>
									 <li> Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Coinapult's wallet is designed with Bitcoin newcomers in mind. It allows sending bitcoins via email and SMS, and a handy tool called Locks helps protecting your balance from Bitcoin price swings. Users can Lock bitcoins to Gold, Euros, and more!</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade coinbase" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COINBASE</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://www.coinbase.com/join">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/coinbase-bitcoin-wallet/id886427730?mt=8">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=com.coinbase.android">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/coinbase">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Money controlled by a third party</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Remote app</li>
									 <li>Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Coinbase is a web wallet service that aims to be easy to use. It also provides an Android web wallet app, merchant tools and integration with US bank accounts to buy and sell bitcoins.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade xapo" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">XAPO</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://xapo.com/wallet/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/app/id917692892">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.xapo">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Money controlled by a third party</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Two-factor authentication</li>
									 <li>Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Xapo combines the convenience of an everyday Bitcoin wallet with the security of an insured deep cold storage vault. Xapo Debit Card links to your Xapo Wallet and allows you to spend bitcoins at millions of merchants all around the world.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade armory" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">ARMORY</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://bitcoinarmory.com/download/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/etotheipi/BitcoinArmory">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									  
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Armory is an advanced Bitcoin client that expands its features for Bitcoin power users. It offers many backup and encryption features, and it allows secure cold-storage on offline computers.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bitgo" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITGO</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.bitgo.com/wallet">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						<a href="https://chrome.google.com/webstore/detail/bitgo/jlgeogaipkoajobchncghcojanffjfhl">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img>
						</a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/BitGo/bitgo-chrome">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									<h4>At vero eos et accusamus et</h4>   
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Secure environmentt</li>
									 <li> Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>BitGo is a high-security multi-sig wallet, which protects your bitcoin from theft and loss. You maintain full custody; BitGo cannot spend or freeze funds. BitGo wallets are easy to use and offer advanced security features such as spending limits and multi-user access.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="modal fade bither" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITHER</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://www.bitcoin.com/linkwarning?domain=bither.net&url=https%3A%2F%2Fads.bitcoin.com%2Fwww%2Fdelivery%2Fck.php%3Foaparams%3D2__bannerid%3D30__zoneid%3D6__cb%3D8a85deb4b9__oadest%3Dhttps%3A%2F%2Fbither.net%2F">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/bither/id899478936">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=net.bither">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/bither/">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Secure environmentt</li>
									 <li>Weak privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bither is a simple and secure wallet on many platforms. With special designed Cold/Hot modes, user can easily get both safety and simplicity. Bither's XRANDOM uses different entropy sources to generate true random number for users. Also with HDM, users can have HD's advantages and Multisig's security.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="modal fade blockchain" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">Blockchain.info</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.blockchain.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/us/app/blockchain-bitcoin-wallet/id493253309">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=piuk.blockchain.android">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-8">
						<a href="https://chrome.google.com/webstore/detail/blockchain/glaohkkooicollgefkkmndjcbblominl?hl=en">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/blockchain">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Weak privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Blockchain.info is a user-friendly hybrid wallet. It stores an encrypted version of your wallet online but decryption happens in your browser. For security reasons, you should always use the browser extension and email backups (and keep that email secure).</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade copay" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COPAY</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-2">
						<a href="https://copay.io/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-2">
						<a href="https://itunes.apple.com/us/app/copay/id951330296">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-2">
						<a href="https://play.google.com/store/apps/details?id=com.bitpay.copay">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-2">
						<a href="https://chrome.google.com/webstore/detail/copay/cnidaodnidkbaplmghlelgikaiejfhja?hl=en">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img>
						</a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/bitpay/copay">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Copay is the HD-multisignature wallet originally built to secure BitPay's funds. Copay supports multiple personal and shared wallets, testnet, and the full Payment Protocol. A private BWS node can be used for enhanced security and privacy.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade electrum" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">ELECTRUM</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://electrum.org/#download">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/spesmilo/electrum">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Electrum's focus is speed and simplicity, with low resource usage. It uses remote servers that handle the most complicated parts of the Bitcoin system, and it allows you to recover your wallet from a secret phrase.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade msigna" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">MSIGNA</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://ciphrex.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/ciphrex/mSIGNA">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>mSIGNA is an advanced yet easy-to-use wallet featuring speed and simplicity, enterprise-level scalability, and strong security. It supports BIP32, multisignature transactions, offline storage, multidevice synchronization, and encrypted electronic and paper backups.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade multibit-hd" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">MULTIBIT HD</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://multibit.org/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/ciphrex/mSIGNA">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>MultiBit is a lightweight client that focuses on being fast and easy to use. It synchronizes with the network and is ready to use in minutes. MultiBit also supports many languages. It is a good choice for non-technical users.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade airbitz" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">AIRBITZ</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://airbitz.co/bitcoin-wallet/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/bitcoin-wallet-map-directory/id843536046?mt=8">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=com.airbitz">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/Airbitz">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Airbitz is a mobile Bitcoin Wallet making high levels of privacy, security, and decentralization very familiar and usable to the masses. Airbitz wallets are always automatically encrypted, backed up, and even function when Airbitz servers go down.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bither-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITHER</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://bither.net/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/bither/id899478936">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=net.bither">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/bither/">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
				</div>
				<div class="row margin-bottom-20">
					<div class="col-md-6">
						<!-- Yellow Panel -->            
						<div class="">
							
							<div class="panel-body">
								
								<p> <li>Control over your money</li>
								 <li>Decentralized verification</li>
								 <li>Basic Transparency</li>
								 <li>Vulnerable environment</li>
								 <li>Weak privacy</li>
								 </p>
							</div>
						</div>
						<!-- End Yellow Panel -->            
					</div>            
					<div class="col-md-6">
						<!-- Default Panel -->            
						<div class="">
							
							<div class="panel-body">
								<p>Bither is a simple and secure wallet on many platforms. With special designed Cold/Hot modes, user can easily get both safety and simplicity. Bither's XRANDOM uses different entropy sources to generate true random number for users. Also with HDM, users can have HD's advantages and Multisig's security.</p>
							</div>
						</div>
						<!-- End Default Panel -->            
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade blockchain-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">Blockchain.info</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.blockchain.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/us/app/blockchain-bitcoin-wallet/id493253309">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=piuk.blockchain.android">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-8">
						<a href="https://chrome.google.com/webstore/detail/blockchain/glaohkkooicollgefkkmndjcbblominl?hl=en">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/blockchain">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Weak privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Blockchain.info is a user-friendly hybrid wallet. It stores an encrypted version of your wallet online but decryption happens in your browser. For security reasons, you should always use the browser extension and email backups (and keep that email secure).</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade blocktrail" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BLOCKTRAIL</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://wallet.blocktrail.com/#/setup/register">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/blocktrail-bitcoin-wallet/id1019614423">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=com.blocktrail.mywallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/blocktrail">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>New service/app</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Blocktrail is a multisig wallet for web, Android and iOS. Blocktrail lets you have full control of your coins at all time. Transactions are signed on your device so we never see your private keys.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade breadwallet" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BREADWALLET</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="http://breadwallet.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/app/breadwallet/id885251393">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						
						<div class="col-md-4">
						<a href="https://github.com/voisine/breadwallet">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Simplicity is breadwallet's core design principle. As a real standalone Bitcoin client, there is no server to get hacked or go down, and by building on iOS's strong security base, breadwallet is designed to protect you from malware, browser security holes, even physical theft.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade coinomi" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COINOMI</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://coinomi.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.coinomi.wallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/Coinomi">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Coinomi is a lightweight, secure, open-source, universal, HD Wallet. Apart from Bitcoin it also supports many altcoins so you can keep all your funds in a single wallet. Your private keys never leave your device and you only need to back it up just once!</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade copay-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COPAY</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://www.bitcoin.com/linkwarning?domain=bither.net&url=https%3A%2F%2Fads.bitcoin.com%2Fwww%2Fdelivery%2Fck.php%3Foaparams%3D2__bannerid%3D30__zoneid%3D6__cb%3D8a85deb4b9__oadest%3Dhttps%3A%2F%2Fbither.net%2F">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/bither/id899478936">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=net.bither">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/bither/">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Secure environmentt</li>
									 <li>Weak privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bither is a simple and secure wallet on many platforms. With special designed Cold/Hot modes, user can easily get both safety and simplicity. Bither's XRANDOM uses different entropy sources to generate true random number for users. Also with HDM, users can have HD's advantages and Multisig's security.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade luxstack" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">LUXSTACK</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://luxstack.com/#!/#download">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/app/luxstack-for-bitcoin/id646486715">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.luxstack.LUXSTACK.android">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Secure environment</li>
									 <li> Basic privacy</li>
									 <li>New app</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>A free, fully native bitcoin wallet that helps you securely store and spend your money without compromising usability or usefulness. LUXSTACK helps you integrate bitcoin into every area of your daily life and delivers the features you expect from a cashless lifestyle.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade mycelium" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">MYCELIUM</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://mycelium.com/bitcoinwallet">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/mycelium-bitcoin-wallet/id943912290?mt=8">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=com.mycelium.wallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/mycelium-com/wallet">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Mycelium Bitcoin Wallet is an open source wallet for Android designed for security, speed, and ease of use. It has unique features to manage your keys and for cold storage that help you secure your bitcoins.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade schildbach" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">SCHILDBACH</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=de.schildbach.wallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						<div class="col-md-4">
						
						</div>
						<div class="col-md-4">
						<a href="https://github.com/schildbach/bitcoin-wallet">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money or a third party</li>
									 <li> Decentralized verification</li>
									 
									 <li>Basic Transparency</li>
									 
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Schildbach's bitcoin wallet is easy to use and reliable, while also being secure and fast. Its vision is de-centralization and zero trust; no central service is needed for Bitcoin-related operations. The app is a good choice for non-technical people.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade case" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">CASE</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						
						</div>
						<div class="col-md-4">
						<a href="https://choosecase.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Case is a multi-signature, multi-factor wallet that requires 2-of-3 keys for a transaction to take place. Each key is generated and stored in a different location and protected by a different authentication factor so there’s no single point of failure.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade keepkey" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">KEEPKEY</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						
						</div>
						<div class="col-md-4">
						<a href="https://www.keepkey.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>KeepKey is a bitcoin hardware wallet that protects your money from hackers and thieves, while giving you convenient access.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade ledgernano" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">LEDGERNANO</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.ledgerwallet.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=960196441">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.ledger.ledgerwallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://github.com/LedgerHQ/">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						<div class="col-md-8">
						<a href="https://chrome.google.com/webstore/detail/ledger-wallet/kkdpmhnladdopljabkgpacgpliggeeaf">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Ledger Nano is a hardware wallet built upon a banking smartcard platform. It keeps the user private keys safe, validates transactions, can be used as a secure prepaid card or a multisignature party. While not open-source, it can be deterministically validated.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade trezor" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">TREZOR</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://www.buytrezor.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/trezor">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>TREZOR is a hardware wallet providing a high level of security without sacrificing convenience. Unlike cold storage, TREZOR is able to sign transactions while connected to an online device. That means spending bitcoins is secure even when using a compromised computer.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bitgo-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITGO</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.bitgo.com/wallet">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						<a href="https://chrome.google.com/webstore/detail/bitgo/jlgeogaipkoajobchncghcojanffjfhl">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img>
						</a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/BitGo/bitgo-chrome">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Remote app</li>
									 <li>Secure environment</li>
									 <li>Basic privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>BitGo is a high-security multi-sig wallet, which protects your bitcoin from theft and loss. You maintain full custody; BitGo cannot spend or freeze funds. BitGo wallets are easy to use and offer advanced security features such as spending limits and multi-user access.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="modal fade blockchain-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">Blockchain.info</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://www.blockchain.com/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/us/app/blockchain-bitcoin-wallet/id493253309">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=piuk.blockchain.android">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-8">
						<a href="https://chrome.google.com/webstore/detail/blockchain/glaohkkooicollgefkkmndjcbblominl?hl=en">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://github.com/blockchain">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Weak privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Blockchain.info is a user-friendly hybrid wallet. It stores an encrypted version of your wallet online but decryption happens in your browser. For security reasons, you should always use the browser extension and email backups (and keep that email secure).</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade blocktrail-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BLOCKTRAIL</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
						<a href="https://wallet.blocktrail.com/#/setup/register">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://itunes.apple.com/us/app/blocktrail-bitcoin-wallet/id1019614423">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://play.google.com/store/apps/details?id=com.blocktrail.mywallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						<div class="col-md-3">
						<a href="https://github.com/blocktrail">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>New service/app</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Blocktrail is a multisig wallet for web, Android and iOS. Blocktrail lets you have full control of your coins at all time. Transactions are signed on your device so we never see your private keys.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade coinkite" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">COINKITE</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://coinkite.com/promo/nwt1">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						
						<div class="col-md-4">
						
						</div>
						<div class="col-md-4">
						<a href="https://github.com/coinkite">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money or a third party</li>
									 <li>Centralized verification</li>
									 
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Secure environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Coinkite is a web wallet & debit card service that aims to be easy to use. It also works on mobile browsers, has merchant tools, point-of-sale payment terminals. It is a hybrid wallet and full reserve vault.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade greenaddress-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">GREEN ADDRESS</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://greenaddress.it/en/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/us/app/greenaddress/id889740745?mt=8#">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.greenaddress.greenbits_android_wallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-4">
						<a href="https://chrome.google.com/webstore/detail/greenaddress/dgbimgjoijjemhdamicmljbncacfndmp">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
						<div class="col-md-8">
						<a href="https://github.com/greenaddress">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>GreenAddress is a user-friendly multi-signature wallet with improved security and privacy. At no time are your keys server side, even encrypted. For security reasons, you should always use 2FA and the browser extension or smart phone App.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade greenaddress" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">GREEN ADDRESS</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
						<a href="https://greenaddress.it/en/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://itunes.apple.com/us/app/greenaddress/id889740745?mt=8#">
						<img src="../btcpanda/img/wallet/appstore.png" style="height: 100px;">App Store</img></a>
						</div>
						<div class="col-md-4">
						<a href="https://play.google.com/store/apps/details?id=com.greenaddress.greenbits_android_wallet">
						<img src="../btcpanda/img/wallet/Android-Icon.png" style="height: 100px;">Play Store</img></a>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-md-4">
						<a href="https://chrome.google.com/webstore/detail/greenaddress/dgbimgjoijjemhdamicmljbncacfndmp">
						<img src="../btcpanda/img/wallet/Chrome.png" style="height: 100px;">Chrome Web Store</img></a>
						</div>
						<div class="col-md-8">
						<a href="https://github.com/greenaddress">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Centralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Secure environmentt</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>GreenAddress is a user-friendly multi-signature wallet with improved security and privacy. At no time are your keys server side, even encrypted. For security reasons, you should always use 2FA and the browser extension or smart phone App.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bitcoin-xt-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
					<h4 id="myLargeModalLabel2" class="modal-title">BITCOIN XT</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						
						<div class="col-md-4">
						<a href="https://bitcoinxt.software/">
						<img src="../btcpanda/img/wallet/globe.png" style="height: 100px;">Website</img></a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
						<a href="https://github.com/bitcoinxt/bitcoinxt">
						<img src="../btcpanda/img/wallet/github.png" style="height: 100px;">Github</img>
						</a>
						</div>
						
					</div>
					
					<div class="row margin-bottom-20">
						<div class="col-md-6">
							<!-- Yellow Panel -->            
							<div class="">
								
								<div class="panel-body">
									
									<p> <li>Control over your money</li>
									 <li>Decentralized verification</li>
									 <li>Basic Transparency</li>
									 <li>Vulnerable environment</li>
									 <li>Good privacy</li>
									 </p>
								</div>
							</div>
							<!-- End Yellow Panel -->            
						</div>            
						<div class="col-md-6">
							<!-- Default Panel -->            
							<div class="">
								
								<div class="panel-body">
									<p>Bitcoin XT is a fork of Bitcoin Core, with a focus on upgrades to the peer to peer protocol. By running it you can opt in to providing the Bitcoin network with additional services beyond what Bitcoin Core nodes provide. Just like the original, Bitcoin XT takes a lot of space and memory.</p>
								</div>
							</div>
							<!-- End Default Panel -->            
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-4 md-margin-bottom-20">
                        <a href="index-2.html"><img id="logo-footer" class="footer-logo" src="img/pan.png" width="250px" alt=""></a>
                          <div class=""><h2>Latest Posts</h2></div>
                            <ul class="list-unstyled ">
                                <li>
                                  <a href="#">Incredible content</a>
                                    <small>May 8, 2014</small>
                                </li>
                                <li>
                                    <a href="#">Best shoots</a>
                                    <small>June 23, 2014</small>
                                </li>
                                <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
								  <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
								
                            </ul>
                         
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <!--/col-md-3-->  
                    <!-- End Latest --> 
                    
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
                        <input type="text" placeholder="Username" class="form-control" style="opacity: 0.61;">
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
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/app.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/plugins/cube-portfolio/cube-portfolio-4.js"></script>

<style>
	.glyphicon {
		position: relative;
		top: 1px;
		font-size: 100px;
		display: inline-block;
		font-family: 'Glyphicons Halflings';
		font-style: normal;
		font-weight: 400;
		line-height: 1;
		color: teal;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
	}
	
	
</style>

</body>


</html>