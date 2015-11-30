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
	
	 <div class='bg-image-vv bg-image-v2-dark parallaxBg1'>
        <div class='container'>
            <div class='headline-center-v2 margin-bottom-10'>
               <br/>
			   <br/>
               
               <!-- <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et qua s molestias excepturi vehicula sem ut volutpat. Ut non libero magna fusce co.</p><br><br>-->
              <!--  <button type='button' class='btn-u btn-brd btn-brd-hover btn-u-light'>Download Now</button>--> 
            </div><!--/Headline Center V2-->   
        </div><!--/container-->
    </div>
	<script type="text/javascript">

$(document).ready(function(){

    $("select").change(function(){

        $(this).find("option:selected").each(function(){

            if($(this).attr("value")=="red"){

                $(".box").not(".red").hide();

                $(".red").show();

            }

            else if($(this).attr("value")=="green"){

                $(".box").not(".green").hide();

                $(".green").show();

            }

            else if($(this).attr("value")=="blue"){

                $(".box").not(".blue").hide();

                $(".blue").show();

            }

            else{

                $(".box").hide();

            }

        });

    }).change();

});

</script>
	<div class='container'>
	

	
	

</body>
	
	<div class='row'>
	</br>
	
	<h3><b  style="margin-left: 16px;">ABOUT BTCPANDA</b></h3>
	<div class="col-md-4">
	<img class="img-responsive img-bordered "   src="../btcpanda/img/bg/about.jpg" width="350px;" height="220px;">
	</div>
	<div class="col-md-8">
	<p align='justify'>Economic inequality, also known as income inequality, wealth inequality, gap between rich and poor, gulf between rich and poor and contrast between rich and poor, refers to how economic metrics are distributed among individuals in a group, among groups in a population, or among countries.
<br/>
<br/>
Economic inequality generally refers to the disparity of wealth or income between different groups or within a society. Often characterized by the aphorism 'the rich get richer while the poor get poorer,' the phrase often refers more specifically to the gap in income or assets between the poorest and richest segments of an individual nation.

<br/>
<br/>
Inequalities in income and wealth cause economic instability, a range of health and social problems, and create a roadblock to the adoption of pro-environment strategies and behaviour. Social and economic inequalities tear the social fabric, undermine social cohesion and prevent nations, communities and individuals from flourishing.
<br/>
<br/>

At present poor are becoming poorer and rich are becoming richer. The role of government is to tax rich and distribute that money among the poor one but instead of that governments are protecting rich more than ever. &nbsp;&nbsp;<a  data-toggle="modal"  data-target=".bs-example-modal-lg"> View More</a>
<br/>
<br/>

			<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 id="myLargeModalLabel2" class="modal-title">ABOUT BTC PANDA</h4>
                                    </div>
                                    <div class="modal-body">
									 <div class='bg-image-vv bg-image-v2-dark parallaxBg1'>
        <div class='container'>
            <div class='headline-center-v2 margin-bottom-10'>
               <br/>
			   <br/>
               
              
            </div><!--/Headline Center V2-->   
        </div><!--/container-->
    </div>
                                    <br />  <br />   <p align="justify" style="font-size:14px">Economic inequality, also known as income inequality, wealth inequality, gap between rich and poor, gulf between rich and poor and contrast between rich and poor, refers to how economic metrics are distributed among individuals in a group, among groups in a population, or among countries.
									 <br /><br /> 


“Economic inequality” generally refers to the disparity of wealth or income between different groups or within a society. Often characterized by the aphorism “the rich get richer while the poor get poorer,” the phrase often refers more specifically to the gap in income or assets between the poorest and richest segments of an individual nation.

 <br /><br /> 
Inequalities in income and wealth cause economic instability, a range of health and social problems, and create a roadblock to the adoption of pro-environment strategies and behaviour. Social and economic inequalities tear the social fabric, undermine social cohesion and prevent nations, communities and individuals from flourishing.
 <br />
<br /> 
At present poor are becoming poorer and rich are becoming richer. The role of government is to tax rich and distribute that money among the poor one but instead of that governments are protecting rich more than ever.
 <br /><br /> 

BTCPanda is a Crowdfunding Structured Network where everybody has an equal chance to make money and build their wealth and dream.
 <br />
<br /> 
Crowdfunding is a method of raising capital through the collective effort of friends, family, members, communities and individual investors. This approach taps into the collective efforts of a large pool of individuals—primarily online via social media and crowdfunding network platforms, and leverages their networks for greater reach and exposure.

 <br /><br /> 
Crowdfunding is essentially the opposite of the mainstream approach to business finance. Traditionally, if you want to raise capital to start a business or launch a new product, you would need to pack up your business plan, market research, and prototypes, and then shop your idea around to a limited pool or wealthy individuals or institutions. These funding sources included  banks, angel investors, and venture capital firms, really limiting your options to a few key players.You can think of this fundraising approach as a funnel, with you and your pitch at the wide end and your audience of investors at the closed end. Fail to point that funnel at the right investor or firm at the right time, and that’s your time and money lost.

 <br /><br /> 
BTCPanda Crowdfunding Structured Network platform, on the other hand, turns that funnel on-end. By giving you, as one the member or helper, to build your own capital by providing small financial aids to the other members, this approach dramatically streamlines the traditional model. Traditionally, you’d spend months sifting through your personal network, vetting potential investors, and spending your own time and money to get in front of them. With BTCPanda Crowdfunding Structured Network, it’s much easier for you to get your opportunity in front of more interested parties and give bigger chances to grow your business or wealth.
 <br /><br /> 

BTCPanda is an Equity-Based Crowdfunding which allow contributors/helpers receive a financial return or profit on their financial aid or investment. Helpers easily can earn as high as 90% from their capital by giving other member financial aid.
 <br />
<br /> 
It is a secured community program and we use Bitcoin as our digital currency. Why Bitcoin?
 <br />
<br /> 
Traditional currency such as the US Dollar has some drawbacks, most of which seem to be overlooked or taken for granted by most people. Bitcoin can solve some of these problems as well as offer improvements. Below are some of the advantages bitcoin has over traditional currencies.
 <br /><br /> 

<b>1. Decentralized</b>
 <br /><br /> 

Bitcoin is a decentralized currency. No central entity regulates it or controls it.
 <br />
<br /> 
Not having a central entity means no entity can’t inflate bitcoin’s price or devalue it by manipulating its supply. With bitcoin, there is no risk of money printing by a government that could dilute your savings. Creation of bitcoin happens at a stable rate and halves every four years, creating a limited supply of 21 million units.
 <br /><br /> 

In addition, there is no single point of failure. If the US Government were to fail, it could have harmful effects on the currency. Bitcoin was started, and is growing, without a central entity. It is a distributed network. If one part of the network were to fail or go offline, Bitcoin would keep working.
 <br /><br /> 

<b>2. Free to Transfer and Hold</b>
 <br /><br /> 

Remember, Bitcoin is not a company or a business. It does not charge its customer to use the service. It is an open source technology. As such, bitcoin is completely free to transfer and hold.
 <br /><br /> 

The US Dollar is predominantly controlled by financial institutions that often charge fees to transfer it. Some services have been built for Bitcoin that charge fees but there is no obligation to use them — Bitcoin itself is free to transfer.
 <br /><br /> 

<b>3. Privacy Protection</b>
 <br /><br /> 

On one hand, Bitcoin is extremely transparent as the public ledger gives complete visibility into where transactions come from and where they are sent. On the other hand, no one knows who holds a particular bitcoin address. If you do not wish to be identified, you can stay anonymous while using bitcoin. Bitcoin has stronger privacy protections than something like PayPal. Bitcoin accounts are numbered, but have no personally identifiable information. Users can have multiple bitcoin addresses, and they aren’t connected to names, addresses, or other personally identifying information. If, for whatever reason, you don’t want anyone to know about a transaction that you’re making, bitcoin might be a better option than, say, a check. I suspect the privacy protection is the reason why Bitcoin has been used to buy illegal drugs online, though that certainly is not the only use case.
 <br /><br /> 

<b>4. Freedom to Transact</b>
 <br /><br /> 

Because Bitcoin does not have a controlling intermediary, there is more freedom to transact. With traditional currency, funds can be frozen or seized by an intermediary (such as PayPal, a bank, or a credit card company) or by the government. Intermediaries may also prohibit transactions for goods or services as they desire. If an intermediary decides they don’t want to let you make a given transaction, they can stop it. Payments companies such as PayPal have been reported to have prohibited transaction involving sexual content. If you owned a porn company or adult toy business, you may not be able to use PayPal.
 <br /><br /> 

<b>5. Easy to Use</b>
 <br /><br /> 

With traditional banks, it can be challenging and/or time consuming to even open a bank account. Setting up merchant accounts for payment is even more complicated. A Bitcoin address can be set up very quickly and with no fees. Bitcoin is easy to send. Instead of filling out forms with your address, credit card number, etc., you can simply send money to an electronic address.
 <br /><br /> 

<b>6. Fast Transfers</b>
 <br /><br /> 

While traditional wire transfers can take a long time to process (sometimes even days), bitcoin transactions can take just about 10 minutes to complete. You can send bitcoin anywhere and it will arrive minutes later. As soon as the Bitcoin network processes the payment, it is transferred. Physical banks often have business hours and close on nights and weekends. Even PayPal has restrictions on amounts that can be withdrawn in a given month, which means you might have to wait for a month to actually receive the actual funds.
 <br /><br /> 

<b>7. No Chargeback Risk</b>
 <br /><br /> 

Bitcoin does not subject merchants to chargeback risk the way credit cards do.
 <br /><br /> 

Once bitcoin is sent, it can’t be retrieved (unless the recipient returns them). Bitcoins, like cash, are irrevocable. Merchants don’t have to worry providing a good or service, only to have a customer void the credit card transaction. For some businesses, chargebacks can really eat into profit margins.
 <br /><br /> 

<b>8. Durable</b>
 <br /><br /> 

Bitcoin can not be destroyed or damaged. Supply of Gold can be manipulated if more gold is found or if it is destroyed. Physical currency (cash) can be counterfeited or destroyed. Changes to supply result in changes in price.
 <br /><br /> 

<b>9. Portable</b>
 <br /><br /> 

Because Bitcoin is electronic, it is easy to store and carry. Gold is actually quite heavy and takes up a lot of physical space. Bitcoin can be stored on a portable credit card sized device or simply online. It could be hard to carry around gold and use it for regular purchases.
 <br /><br /> 

<b>10. Reduced Fraud</b>
 <br /><br /> 

Bitcoin eliminates the risk of credit card fraud. Criminals can steal personal customer information and credit card numbers and use it to make fraudulent purchases. Since Bitcoin is purely digital, the receiver of a payment does not see any information from the sender that could be used to steal money from the sender in the future. That information could be taken by the payment receiver (merchant) or by a criminal who steals that information from the merchant.
 <br /><br /> 

Credit card fraud can be a major expense for merchants and credit card processors. Some online merchants are forced to reject some purchases that fear could be fraudulent. Credit card processors and banks have spent money on fraud detection systems.</p>
                                    </div>
                                </div>
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
                        <a href="index-2.html"><img id="logo-footer" class="footer-logo" src="../btcpanda/pan.png" width="250px" alt=""></a>
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