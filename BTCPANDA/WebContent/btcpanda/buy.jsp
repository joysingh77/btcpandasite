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
	 <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/css-rtl/pages/pricing/pricing_v4-rtl.css"> 
 <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/css/green.css">
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
            
            
           <div class="topbar">
                <ul class="loginbar pull-right navbar-responsive-collapse1">
                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                        <a></a>
                        <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">English &nbsp;<img src="../btcpanda/img/arro.png"></a> 
                            </li>
                            <li><a href="#">Spanish&nbsp;<img src="../btcpanda/img/arro.png"></a></li>
                            <li><a href="#">Russian&nbsp;<img src="../btcpanda/img/arro.png"></a></li>
                            <li><a href="#">German&nbsp;<img src="../btcpanda/img/arro.png"></a></li>
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
	 <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/sky-forms-pro/skyforms/css/sky-forms-rtl.css">
    <link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/btcpanda/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms-rtl.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/js/jquery.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/btcpanda/text/javascript">

$(document).ready(function(){

    $("select").change(function(){

        $(this).find("option:selected").each(function(){

            if($(this).attr("value")=="india"){

                $(".box").not(".india").hide();

                $(".india").show();

            }

            else if($(this).attr("value")=="china"){

                $(".box").not(".china").hide();

                $(".china").show();

            }

            else if($(this).attr("value")=="russia"){

                $(".box").not(".russia").hide();

                $(".russia").show();

            }
			
			
			 else if($(this).attr("value")=="indonesia"){

                $(".box").not(".indonesia").hide();

                $(".indonesia").show();

            }

			 else if($(this).attr("value")=="maleysia"){

                $(".box").not(".maleysia").hide();

                $(".maleysia").show();

            }
			
			 else if($(this).attr("value")=="tailand"){

                $(".box").not(".tailand").hide();

                $(".tailand").show();

            }


			 else if($(this).attr("value")=="honghong"){

                $(".box").not(".honghong").hide();

                $(".honghong").show();

            }
            else{

                $(".box").hide();

            }

        });

    }).change();

});

</script>
<body>	
	 <div class='bg-image-vv bg-image-v2-dark parallaxBg1'>

            <div class='headline-center-v2 margin-bottom-10'>
               <br/>
			
                 <h1 style="color:#F79324">BUY BITCOIN</h1>
        	</div>
              
     </div> 
	 
	 <div class="breadcrumbs">
        <div class="container">
            <ul class=" breadcrumb">
           		<div class="row">
				
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
				
				 <form class="sky-form">
                   
                    <fieldset>
                       
                                <label class="select">
                                    <select name="country" style="background-color: #FFE3D7" >
                                        <option value="0" selected disabled>Country</option>
                                       
                                        <option value="malaysia">Malaysia</option>
                                        <option value="indonesia">Indonesia</option>
                                        <option value="china">China</option>
										<option value="india">India</option>
                                        <option value="russia">Russia</option>
                                        <option value="hong">Hong kong</option>
                                        <option value="thailand">Thailand</option>
                                      
                                  
                                    </select>
                                    <i></i>
                                </label>
                           
							</fieldset>
							</form>
				
				
				</div>
				<div class="col-md-3">
				</div>
				
				</div>
							
							
            </ul>
			
			
        </div>
    </div>

<div class="container content">


           <div class="main-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia  box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/3ed2ee820de28e5fb64d566bab75c6ee.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>247 Exchange</h3>
                                        <p>
                                           Easy, safe and instant way to buy/sell Bitcoin. Credit/debit cards accepted.                                        </p>
                                        <a href="https://www.247exchange.com/" target="_blank">Visit 247 Exchange<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/7a54397141900c66d1be8115615c968f.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
                                    </div>

                                    <div class="content-box-info">
                                        <h3>CoinWallet</h3>
                                        <p>
                                            CoinWallet.eu is a Bitcoin brokerage that makes it easy to buy, sell and spend Bitcoin anywhere in the world.                                        </p>
                                        <a href="https://www.coinwallet.eu/" target="_blank">Visit Coinwallet <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">




                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/7e99761418332d0a7dbc09517e1f699e.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-info">
                                        <h3>HitBTC</h3>
                                        <p>
                                            HitBTC provides trading services to individual traders since 2013.                                        </p>
                                        <a href="https://hitbtc.com/" target="_blank">Visit HitBTC  <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						
						<br/>
						<br/>

						 <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/8dc4768269690d7e03b8cf5ffce5cf6c.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div> 



                                    <div class="content-box-info">
                                        <h3>Anxbtc</h3>
                                        <p>
                                            Your one stop shopping for Bitcoins and Debit Cards. We offer the most competitive pricing in the world!                                        </p>
                                        <a href="https://anxbtc.com/" target="_blank">Visit Anxbtc <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                         <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/8e4cb3ce85a0da451193b71d7f5f8d80.png" width="70px;" height="70px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>Xapo</h3>
                                        <p>
                                           Xapo sells bitcoin, provide a debit card and cold storage service.                                        </p>
                                        <a href="https://account.xapo.com" target="_blank">Visit Xapo <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/9b70b251bae55c4a9c92693d4c770b72.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-info">



                                        <h3>Quoine</h3>
                                        <p>
                                            Quoine accepts customers world wide with trading in BTC, JPY, USD, EUR, SGD, HKD, IDR, PHP, AUD                                        </p>
                                        <a href="https://www.quoine.com/" target="_blank">Visit Quoine <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						
						<br/>
						<br/>
						
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/9dc34cacec797d0e179b28c97c90d8ec.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>PAXFUL</h3>
                                        <p>
                                           Buy bitcoins peer to peer in the USA      <br />   &nbsp;&nbsp;                               </p>
                                        <a href="https://paxful.com" target="_blank">Visit PAXFUL<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/28f60a5711cccf29fc1228c31154a9b4.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>Local Bitcoins</h3>
                                        <p>
                                            Trade bitcoins with people who are already in your area. <br /> &nbsp;                                      </p>
                                        <a href="https://localbitcoins.com" target="_blank">Visit Local Bitcoins <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/89a248c22ee32efb347ce936d4b45340.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div> 




                                    <div class="content-box-info">
                                        <h3>Cubits</h3>
                                        <p>
                                           Cubits is a Bitcoin wallet  offering platform for buying, exchanging, storing, and accepting Bitcoin.<br />
                                        <a href="https://cubits.com/" target="_blank">Visit Cubits <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						<br/>
						<br/>
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/151fe07175b55f47ef380439e35f65e0.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>



                                    </div>
                                    <div class="content-box-info">
                                        <h3>BTC-e</h3>
                                        <p>
                                            Long running exchange that is based in Russia. <br />&nbsp;                                       </p>
                                        <a href="https://btc-e.com/" target="_blank">Visit BTC-e<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/268eb61505201cbe28d881e695e5c25b.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>Indacoin</h3>
                                        <p>
                                            Buy bitcoins instantly with your credit or debit card from all over the world.                                        </p>
                                        <a href="https://indacoin.com" target="_blank">Visit Indacoin<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/565c39db128f9efd9da1f8afeeac9fe3.jpg" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div>


                                    <div class="content-box-info">
                                        <h3>LakeBTC
</h3>
                                        <p>
                                            Started in early 2013, LakeBTC is one of the big four and is based in Shanghai                                        </p>
                                        <a href="https://lakebtc.com/" target="_blank">Visit LakeBTC <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						<br/>
						<br/>
						
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/25844d79eb61940cab7fa9025f0ae844.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>



                                    </div>
                                    <div class="content-box-info">
                                        <h3>Bitfinex</h3>
                                        <p>
                                            Bitfinex is one of the largest markets and supports margin trading and swaps.                                        </p>
                                        <a href="https://www.bitfinex.com/" target="_blank">Visit Bitfinex<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/29805d49c861be6ae0f1b0bf86c15d96.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>


                                    </div>
                                    <div class="content-box-info">
                                        <h3>Bitstamp
</h3>
                                        <p>
                                           One of the longest running exchanges for USD trading with high liquidity                                        </p>
                                        <a href="https://www.bitstamp.net/" target="_blank">Visit Bitstamp<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                            <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/a5a02d4ca126aa5318fd7a6d603e3596.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>



                                    </div>
                                    <div class="content-box-info">
                                        <h3>CEX.io</h3>
                                        <p>
                                           CEX.IO is a multi-functional cryptocurrency exchange since 2013.                                        </p>
                                        <a href="https://cex.io/" target="_blank">Visit CEX.io <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						<br/>
						<br/>
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/aa234f8e332395ee99a9f9a0666716c3.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



                                    <div class="content-box-info">
                                        <h3>DigaTrade</h3>
                                        <p>
                                            DigaTrade is a Digital Asset and Crypto-Currency Exchange based in Vancouver, Canada.                                        </p>
                                        <a href="https://digatrade.com/" target="_blank">Visit DigaTrade <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/affe096446f5bb3ec32bc211d67c76a0.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>


                                    </div>
                                    <div class="content-box-info">
                                        <h3>Multisigna
</h3>
                                        <p>
                                           MULTISIGNA transactions take place directly between the users bank or OKPay accounts.                                        </p>
                                        <a href="https://www.multisigna.com/" target="_blank">Visit Multisigna<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/badc5e1d90c8377f448df1853551f572.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div> 



                                    <div class="content-box-info">
                                        <h3>itBit</h3>
                                        <p>
                                           US based exchange that accepts US customers.    <br />&nbsp;                                    </p>
                                        <a href="https://www.itbit.com/" target="_blank">Visit itBit <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
						<br/>
						<br/>
									<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/c16f8e73da12eb47a2ffc55aa960933f.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>
<div class="content-box-info">
                                        <h3> BIT-X</h3>
                                        <p>
                                            Bit-X is a UK based exchange that offers EUR, USD & GBP trading and debit cards.                                        </p>
                                        <a href="https://bit-x.com/" target="_blank">Visit BIT-X <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india china russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/f908ff86d8f5af76ce597501126b0700.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
</div>
                                    <div class="content-box-info">
                                        <h3>Bitok
</h3>
                                        <p>
                                          Instantly buy and sell Bitcoins, Litecoins, Dogecoins. Fantastic support, fast transactions.                                        </p>
                                        <a href="https://bitok.com/" target="_blank">Visit Bitok<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn india russia china box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/india/fee48f37f817ec9e18b22ac441e5813e.png" width="60px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div>  

<div class="content-box-info">
                                        <h3>Bitnovo</h3>
                                        <p>
                                          In Bitnovo youcan buy Bitcoins in a secure, simple and fast way. <br />
                                        <a href="https://www.bitnovo.com" target="_blank">Visit Bitnovo <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>
							<br/>
						<br/>
										<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/57fe763b0b1d2792955f07e52ccc27a4.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



<div class="content-box-info">
                                        <h3>Btcx</h3>
                                        <p>
                                           Swedish dealership buying and selling bitcoin<br />&nbsp;                                          </p>
                                        <a href="https://www.btcc.com/" target="_blank">Visit Btcx <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/2395cd146bbfa4fde7ff1740efc380ef.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>




</div>
                                    <div class="content-box-info">
                                        <h3>Coinfloor
</h3>
                                        <p>
                                         UK based bitcoin exchange that supports most European currencies                                     </p>
                                        <a href="#">Visit Coinfloor<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
							
							 <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/a991c582ed449b04efb6237695e04261.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>


<div class="content-box-info">
                                        <h3>Gatecoin</h3>
                                        <p>
                                           Created in 2013, Gatecoin is a bitcoin exchange operating in HK and Europe.                                       </p>
                                        <a href="#">Visit Gatecoin<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                          </div>
							<br/>
						<br/>
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/aba85abe0a55a4c3735723ea3d6fe5ba.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div> 



                                    </div>
<div class="content-box-info">
                                        <h3>SpectroCoin</h3>
                                        <p>
                                          SpectroCoin is a Bitcoin exchange, wallet, debit card and merchant processor. Buy and sell bitcoin with Visa, MasterCard, SEPA, SOFORT, cash and local bank wires. </p>
                                        <a href="#">Visit SpectroCoin <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/b7b80a3be147b07f487ba353ad037fc1.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>

</div>



                                    <div class="content-box-info">
                                        <h3>Coinimal
</h3>
                                        <p>
                                          European instant Bitcoin buy service. Choose between many payment options, including Neteller, Sofort-transfer, Giropay, Sepa and many more.</p>
                                        <a href="#">Visit Coinimal<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/0c6beeab7e3758716f6ac73488588b9f.png" width="60px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>
                                    </div>  
									<div class="content-box-info">
                                        <h3> Bit2me</h3>
                                        <p>
                                         Bit2me is a Spanish exchange for easy buy and sell. Their service is available through more than 10 000 ATMs in Spain.<br />
                                        <a href="#">Visit Bit2me<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>						
							<br/>
						<br/>
						
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/b25c1c87099b0889f1a3924354a3cf5a.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



<div class="content-box-info">
                                        <h3>BITQUICK</h3>
                                        <p>
                                           Buy Bitcoin with Cash or Wire Transfer in the USA, EU, Russia and more. </p>
                                        <a href="#">Visit BITQUICK <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/bff790fa24bcf3ff91c069b75dcbc3c5.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>

</div>



                                    <div class="content-box-info">
                                        <h3> Fastcoin
</h3>
                                        <p>
                                         Fastcoin is a simple and efficient service to buy Bitcoin without hassle. </p>
                                        <a href="#">Visit Fastcoin<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/cd922a1359b8bb75791c0aa37a31442a.png" width="60px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-tags"></i>                                            </div>
                                        </div>



                                    </div>  
									<div class="content-box-info">
                                        <h3> Safello</h3>
                                        <p>
                                        European re-seller that doesn't hold your bitcoin. Offers instant buy in Sweden.<br />
                                        <a href="#">Visit Safello<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                        </div>			
							<br/>
						<br/>
						
						<div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/d9770ddc5084a69dcbac591c2c1c5b89.png" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>



<div class="content-box-info">
                                        <h3>Coinify</h3>
                                        <p>
                                         Danish re-seller that offers buy and sell to europeans<br />&nbsp;                                          </p>
                                        <a href="#">Visit Coinify<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn  russia box">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/russia/e56b2df3ab2f56a7b54a680e7705be84.jpg" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>
 



</div>
                                    <div class="content-box-info">
                                        <h3>CoinMate
</h3>
                                        <p>
                                         CoinMate is a European exchange that supports SEPA, Sofort and many other payment options in Europe. </p>
                                        <a href="#">Visit CoinMate<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                           <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn china box ">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                             <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/china/ba44ea941b2cb482e008dffbe8652030.jpg" width="50px;" height="50px;"></i></div>
                                            <div class="ch-info-back">
                                         </div>
                                        </div>
                                    </div>
<div class="content-box-info">
                                        <h3>BTCC</h3>
                                        <p>
                                            China's biggest and oldest bitcoin exchange <br />&nbsp;                                          </p>
                                        <a href="#">Visit BTCC <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
                                </div>
                            </div>
                       		
						 <div class="col-lg-4 col-md-4 col-sm-4 wow fadeIn china box ">
                                <div class="content-box big ch-item bottom-pad-small">
                                    <div class="ch-info-wrap">
                                        <div class="ch-info">
                                           <div class="ch-info-front ch-img-1"><i ><img src="../btcpanda/img/buy/china/e1dae06fadc78d0bafe90c5fb92ff37f.png" width="50px;" height="40px;"></i></div>
                                            <div class="ch-info-back">
                                                <i class="fa fa-check"></i>                                            </div>
                                        </div>

</div>
                                    <div class="content-box-info">
                                        <h3>Huobi
</h3>
                                        <p>
                                          One of the largest Bitcoin exchanges in China.  <br />&nbsp;                                      </p>
                                        <a href="#">Visit Huobi<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>                                    </div>
                                    <div class="border-bottom margin-top30">                                    </div>
                                    <div class="border-bottom">                                    </div>
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



</body>


</html>