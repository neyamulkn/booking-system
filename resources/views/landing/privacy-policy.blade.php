<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8">
<meta http-equiv="Pragma" content="no-cache" /> 
<meta http-equiv="Expires" content="-1" /> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<meta name="description" content="Create Account">
<meta name="keywords" content="">
<meta name="author" content="Create Account">
<link rel="shortcut icon" type="image/ico" href="{{ asset('landing/assets') }}/images/favicon.ico"/>
<link rel="shortcut icon" type="image/ico" href="{{ asset('landing/assets') }}/images/favicon.ico"/>
<title>Privacy policy</title>
<!--Custome Css-->
<link href="{{ asset('landing/assets') }}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="{{ asset('landing/assets') }}/css/validationEngine.jquery.min.css" />
<link rel="stylesheet" href="{{ asset('landing/assets') }}/css/jquery-confirm.min.css" />  
<link rel="stylesheet" href="{{ asset('landing/assets') }}/css/custom.css" /> 
  <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    </head>

    <body>


    <div class="navbar-wrapper innerHeader">
        <div class="container-fluid">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="navbar-header"> 
                    <a class="navbar-brand" href="{{url('/')}}">
                        <img src="{{ asset('landing/assets') }}/images/logo.png" width="35%" alt="">
                    </a> 
                    <button type="button" class="navbar-toggle slide-menu-open"> 
                        <span class="sr-only">Toggle navigation</span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <a href="javascript:void(0);" class="menu-close"></a>

                    <ul class="nav navbar-nav">

                        <li class=""><a href="{{url('/')}}">Home</a></li>
                        <li class=""><a href="{{route('features')}}">Features</a></li>
                        <li class=""><a href="{{route('reviews')}}">Reviews</a></li>
                        <li class=""><a href="{{route('pricing')}}">Pricing</a></li>
                        
                    </ul>
                    <ul class="topNav" style="margin: 25px 0 0 19px !important">
                        <li>
                            <a href="Javascript:void(0);" class="login">Login</a>
                            <div class="loginDiv" style="top: 55px !important; right: 0; left: initial !important;">
                                <div class="loginWhite" style="background: #fbfbfb !important;border: 1px solid #ccc;">
                                    <div class="alert alert-danger" id="lerr_container" style="display:none"> </div>
                                    <div class="alert alert-success" id="lsucc_container" style="display:none"></div>
                                    <ul>

                                        <form id="form_signin" action="{{route('login')}}" method="post">
                                            @csrf
                                            <li><input type="text" name="email" placeholder="Email Address" id="email" class="hs validate[required,custom[email]]"></li>
                                            <li><input type="password" name="password" placeholder="Password" id="password" class="hs validate[required]"></li>
                                            <li>
                                                <input type="submit" value="Login" class="btn-info" id="btn_log">
                                                <img id="log" src="{{ asset('landing/assets') }}/images/loader.html" alt="" style=" display: none; float: left;"/>
                                            </li>
                                            <li>
                                                <input type="checkbox" name="remember" id="remember" value="">
                                                <span class="remember">Remember Me</span>
                                                <a href="#" class="forgotPassword">Forgot your password?</a>
                                            </li>
                                        </form>
                                    </ul>
                                </div>
                            </div>
                        </li>
                       
                    </ul>



                </div>
            </nav>
        </div>
    </div>        <!-- /.header -->
        <div class="container">
            <div class="CmsDiv">
               <h2><strong>Privacy Policy</strong></h2> 
                <p style="background:#eee; padding:10px; border:1px solid #ddd">Abaacorp collects e-mail addresses of people who send us e-mail. We also collect information on what pages users access and information provided to us by users via surveys and site registrations. Such information may contain personal data about you including your address, phone numbers, credit card numbers etc. Abaacorp protects credit card information according to Payment Card Industry Data Security Standards (PCI-DSS). We are not allowed to disclose such personal information without your written permission. However, certain information collected from you and about you is used within the context of providing our services to you. The information we collect is not shared with, sold or rented to others except under certain circumstances and which your use of the Service is deemed to provide to us a valid consent to disclose the following:
                     <br><br>
                     </p><ul>
                <li>1.  Abaacorp may share personal information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of Abaacorp's terms of use, or as otherwise required by law.
                </li><li>2. Abaacorp employs other companies to perform tasks on our behalf and may need to share your information with them to provide products and services to you. Abaacorp may also share your information to provide products or services you've requested or when we have your permission.
                </li><li>3. We will transfer information about you if Abaacorp is acquired by or merged with another company. In this event, Abaacorp will notify you by email or by putting a prominent notice on the Abaacorp web site before information about you is transferred and becomes subject to a different privacy policy.
                Everyday language summaries are provided for your benefit and are not legally binding. Please read the Terms of Service for the complete picture of your legal requirements.

                </li></ul>
                <p></p>
                 <br><br>    
                <span style=" color:#91c540">SECTION 1</span>
                <h2>What we do with your information</h2>
                <ul>
                <li>1.  The term "Personal Information" as used herein is defined as any information that identifies or can be used to identify, contact or locate the person to whom such information pertains. The Personal Information that we collect will be subject to this Privacy Policy, as amended from time to time.
                </li><li>2. When you register for Abaacorp we ask for your name, company name, email address, billing address, credit card information. Members who sign up for the free account are not required to enter a credit card however if you want to enable your checkout process you will need to provide your credit card information.
                </li><li>3. Abaacorp uses the information we collect for the following general purposes: products and services provision, billing, identification and authentication, services improvement, contact, and research.
                </li><li>4. As part of the buying and selling process on Abaacorp, you will obtain the email address and/or shipping address of your customers. By entering into our User Agreement, you agree that, with respect to other users' Personal Information that you obtain through Abaacorp or through a Abaacorp-related communication or Abaacorp-facilitated transaction, Abaacorp hereby grants to you a license to use such information only for Abaacorp-related communications that are not unsolicited commercial messages. Abaacorp does not tolerate spam. Therefore, without limiting the foregoing, you are not licensed to add the name of someone who has purchased an item from you, to your mail list (email or physical mail) without their express consent.

                </li></ul>
                <br>
                <h3>Which means,</h3>
                <p>
                When you sign up you provide personal information which we collect and use. For the check-out process we also collect your credit card information. Only use your Abaacorp customers' information for Abaacorp-related communications, unless they give you permission otherwise. Don't spam anyone!</p>




                <br><br>  
                <span style=" color:#91c540">SECTION 2</span>
                <h2>Security</h2>

                <p>The security of your personal information is important to us. When you enter sensitive information, such as credit card number on our registration form, we encrypt the transmission of that information using secure socket layer technology (SSL). Credit card details are stored encrypted using AES-256 encryption. As a level 1 PCI-DSS compliant service provider we follow all PCI-DSS requirements and implement additional generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. No method of transmission over the Internet, or method of electronic storage, is 100% secure, however. Therefore, while we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security. If you have any questions about security on our Web site, you can send email us at support@abaacorp.net.</p>

                <br>
                <h3>Which means,</h3>
                <p>
                We will encrypt your credit card and sensitive information at industry standards. Because stuff happens, we can't guarantee 100% security of your data. If you have questions email support@abaacorp.net
                </p>



                <br><br>  

                <span style=" color:#91c540">SECTION 3</span>
                <h2>Disclosure</h2>
                <ul>
                <li>1.  Abaacorp may use third party service providers to provide certain services to you and we may share Personal Information with such service providers. We require any company with which we may share Personal Information to protect that data in a manner consistent with this policy and to limit the use of such Personal Information to the performance of services for Abaacorp.
                </li><li>2. Abaacorp may disclose Personal Information under special circumstances, such as to comply with court orders requiring us to do so or when your actions violate the Terms of Service.
                </li><li>3. We do not sell or otherwise provide Personal Information to other companies for the marketing of their own products or services.

                </li></ul>
                <br>
                <h3>Which means,</h3>
                <p>
                5.  In certain circumstances, we may disclose your personal information, like court orders</p>


                <br><br>  

                <span style=" color:#91c540">SECTION 4</span>
                <h2>Client Data Storage</h2>
                <p>Abaacorp owns the data storage, databases and all rights to the Abaacorp application however we make no claim to the rights of your data. You retain all rights to your data and we will never contact your clients directly, or use your data for our own business advantage or to compete with you or market to your clients.</p>
                <br>
                <h3>Which means,</h3>
                <p>
                You own your data and we will respect that. We won't try and compete with you or write to your customers.
                </p>


                <br><br>  

                <span style=" color:#91c540">SECTION 5</span>
                <h2>Cookies</h2>
                <p>A cookie is a small amount of data, which may include an anonymous unique identifier. Cookies are sent to your browser from a web site and stored on your computer's hard drive. Every computer that accesses our website is assigned a different cookie by us.</p>
                <p>Google Analytics and Remarketing</p>
                <p>We use a service provided by Google called Google Analytics (GA). GA permits us to reach people who have previously visited our site, and show them relevant advertisements when they visit other sites across the Internet in the Google Display Network. This is often called 'remarketing'.
                Cookies can be used to track your session on our website, to serve customized ads from Google and other third party vendors. When you visit this website, you may view advertisements posted on the site by Google or other third parties. Through first-party and third party cookies, these third parties may collect information about you while you are visiting this website and other websites. They may use this data to show you advertisements on this website and across the Internet based on your prior visits to this website and elsewhere on the Internet. We do not collect this information or control the content of the advertisements that you will see.

                </p>

                <br><br>  

                <span style=" color:#91c540">SECTION 6</span>
                <h2>PCI-DSS</h2>
                <p>The Payment Card Industry Data Security Standard (PCI-DSS) is a set of security requirements managed by the PCI Security Standards Council, a joint effort of the payment brands, including Visa, MasterCard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of credit card information by merchants and service providers.</p>
                <h3>Which means,</h3>
                <p>
                We will use industry standards in security, the same ones used by the big credit card companies, to help you keep a secure Abaacorp account.</p>


                <br><br>  
                <span style=" color:#91c540">SECTION 7</span>
                <h2>Changes to this Privacy Policy</h2>
                <p>We reserve the right to modify this privacy statement at any time, so please review it frequently. If we make material changes to this policy, we will notify you here or by means of a notice on our homepage so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we disclose it.</p>
                <br>
                <h3>Which means,</h3>
                <p>
                We may change this Privacy Statement. If it's a big change, we will inform you, right here.</p>

                <br><br>  
                <h3>Questions</h3>
                <p>Any questions about this Privacy Policy should be addressed to support@abaacorp.net:</p>

                <br><br>  
                <p>Abaacorp Ltd</p>
                <p>17811 Vail street, </p>
                <p>Suite 25301</p>
                <p>Dallas, TX 75287</p>
                <p>USA</p>
                <p>support@abaacorp.net</p>
                </div>
       
           </div>
       </div>

    @include('landing.layouts.footer')
        
</body>

</html>