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
<title>Terms of use</title>
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
    </div>        
    <!-- /.header -->
    <div class="container">
        <div class="CmsDiv">
           <h2><strong>Terms of use</strong></h2> 
             <p style="background:#eee; padding:10px; border:1px solid #ddd">By signing up for the Abaacorp service ("Service") or any of the services of Abaacorp Ltd. ("Abaacorp") you are agreeing to be bound by the following terms and conditions ("Terms of Service"). Any new features or tools which are added to the current Service shall be also subject to the Terms of Service. You can review the most current version of the Terms of Service at any time at here. Abaacorp reserves the right to update and change the Terms of Service by posting updates and changes to the Abaacorp website. You are advised to check the Terms of Service from time to time for any updates or changes that may impact you.
            <br><br>
            Everyday language summaries are provided for your benefit and are not legally binding. Please read the "Terms of Service" for the complete picture of your legal requirements. By using Abaacorp or any Abaacorp services, you are agreeing to these terms. Be sure to occasionally check back for updates.
            </p>
             <br><br>    
            <span style=" color:#91c540">SECTION 1</span>
            <h2>Account Terms</h2>
            <ul>
            <li>1.  You must be 18 years or older to use this Service.
            </li><li>2. You must provide your full legal name, current address, a valid email address, and any other information needed in order to complete the signup process.
            </li><li>3. You are responsible for keeping your password secure. Abaacorp cannot and will not be liable for any loss or damage from your failure to maintain the security of your account and password.
            </li><li>4. You may not use the Abaacorp service for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (Including but not limited to copyright laws) as well as the laws of Canada and the Province of Ontario.
            </li><li>5. You are responsible for all activity and content (data, graphics, photos, links) that is uploaded under your Abaacorp account.
            </li><li>6. You must not transmit any worms or viruses or any code of a destructive nature.
            </li><li>7. A breach or violation of any of the Account Terms as determined in the sole discretion of Abaacorp will result in an immediate termination of your services.
            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            Don't use Abaacorp for anything illegal or transmit any harmful code. Remember that with any violation of these terms we will cancel your service.</p>




            <br><br>  
            <span style=" color:#91c540">SECTION 2</span>
            <h2>General Conditions</h2>
            <ul>
            You must read, agree with and accept all of the terms and conditions contained in this User Agreement and the Privacy Policy before you may become a member of Abaacorp.
            <li>1.  We reserve the right to modify or terminate the Service for any reason, without notice at any time.
            </li><li>2. We reserve the right to refuse service to anyone for any reason at any time.
            </li><li>3. Your use of the Service is at your sole risk. The Service is provided on an "as is" and "as available" basis without any warranty or condition, express, implied or statutory.
            </li><li>4. Abaacorp does not warrant that the service will be uninterrupted, timely, secure, or error-free.
            </li><li>5. Abaacorp does not warrant that the results that may be obtained from the use of the service will be accurate or reliable.
            </li><li>6. You understand that your Content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit Card information is always encrypted during transfer over networks.
            </li><li>7. We may, but have no obligation to, remove Content and Accounts containing Content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party's intellectual property or these Terms of Service.
            </li><li>8. Abaacorp does not warrant that the quality of any products, services, information, or other material purchased or obtained by you through the 
            Service will meet your expectations, or that any errors in the Service will be corrected.
            </li><li>9. You expressly understand and agree that Abaacorp shall not be liable for any direct, indirect, incidental, special, consequential or exemplary damages, including but not limited to, damages for loss of profits, goodwill, use, data or other intangible losses resulting from the use of or inability to use the service.
            </li><li>10.    In no event shall Abaacorp or our suppliers be liable for lost profits or any special, incidental or consequential damages arising out of or in connection with our site, our services or this agreement (however arising including negligence). You agree to indemnify and hold us and (as applicable) our parent, subsidiaries, affiliates, Abaacorp partners, officers, directors, agents, and employees, harmless from any claim or demand, including reasonable attorneys' fees, made by any third party due to or arising out of your breach of this Agreement or the documents it incorporates by reference, or your violation of any law or the rights of a third party.
            </li><li>11.    Technical support is only provided to paying account holders and is only available via email.
            </li><li>12.    You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service without the express written permission by Abaacorp.
            </li><li>13.    Verbal or written abuse of any kind (including threats of abuse or retribution) of any Abaacorp customer, Abaacorp employee, member, or officer will result in immediate account termination.
            </li><li>14.    We do not claim any intellectual property rights over the material you provide to the Abaacorp service. All material you upload remains yours. You can remove your Abaacorp store at any time by deleting your account. This will also remove all content you have stored on the Service.
            </li><li>15.    By uploading images and item description content to Abaacorp.net, you agree to allow other internet users to view them and you agree to allow Abaacorp to display and store them and you agree that Abaacorp can, at any time, review all the content submitted by you to its Service.
            </li><li>16.    The failure of Abaacorp to exercise or enforce any right or provision of the Terms of Service shall not constitute a waiver of such right or provision. The Terms of Service constitutes the entire agreement between you and Abaacorp and govern your use of the Service, superseding any prior agreements between you and Abaacorp (including, but not limited to, any prior versions of the Terms of Service).

            </li><li>17.    You retain ownership over all content that you submit to a Abaacorp store however, by making your store public, you agree to allow others to view your content.
            </li><li>18.    You shall not purchase search engine or other pay per click keywords (such as Google AdWords), or domain names that use Abaacorp or Abaacorp trademarks and/or variations and misspellings thereof.
            </li><li>19.    Abaacorp does not pre-screen Content and it is in their sole discretion to refuse or remove any Content that is available via the Service.
            </li><li>20.    Questions about the Terms of Service should be sent to support at Abaacorp dot com.

            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            We can modify, cancel or refuse the service at anytime. Service is "as is" so it may have errors or interruptions and we provide no warranties. This service is ours, respect that and don't rip-it-off.</p>
            <p>
            Your content may be transferred unencrypted and may be altered, but credit card information is always encrypted. Anything you upload remains yours and if you want to remove your content, just delete your account.
            </p>
            <p>We are not responsible if you break the law, breach this agreement or go against the rights of a third party, especially if you get sued.
            </p>



            <br><br>  

            <span style=" color:#91c540">SECTION 3</span>
            <h2>Abaacorp Experts</h2>
            <ul>
            <li>1.  Abaacorp and shall not be construed or imply permission, or an affiliation, position regarding any issue in controversy, authentication, appraisal, sponsorship, nor a recommendation or endorsement of any website, product, service, activity, business, organization, or person, and any offers, products, services, statements, opinions, content or information on any linked third-party website.
            </li><li>2. Under no circumstances shall Abaacorp be liable for any direct, indirect, incidental, special, consequential, exemplary or other damages whatsoever, including, without limitation, any direct, indirect, incidental, special, consequential, exemplary or other damages that result from any contractual relationship between you and Abaacorp experts. These limitations shall apply even if Abaacorp has been advised of the possibility of such damages. The foregoing limitations shall apply to the fullest extent permitted by law.

            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            Refrain from establishing any 'off the record' communication with Abaacorp experts other than the company agreed project.</p>


            <br><br>  

            <span style=" color:#91c540">SECTION 4</span>
            <h2>Payment of Fees</h2>
            <ul>
            <li>1.  All fees are exclusive of all federal, provincial, state or other governmental sales, goods and services, harmonized or other taxes, fees or charges now in force or enacted in the future ("Taxes"). If you are a resident of Canada , you are responsible for all applicable Taxes that arise from or as a result of your subscription to a Plan. These Taxes are based on the rates applicable to the Canadian billing address you provided to us. Such amounts are in addition to payment for the Plan and will be billed to your credit card. If you are exempt from payment of such Taxes, you must provide us with an original certificate that satisfies applicable legal requirements attesting to tax-exempt status. Tax exemption will only apply from and after the date we receive such a certificate.
            </li><li>2. If you are not a resident of Canada and not subject to Canadian Goods and Services Tax/Harmonized Sales Tax (GST/HST) in respect of the service, you must provide us with a statement by email to support@abaacorp.net that 1) you are not a resident of Canada 2) you are not GST/HST registered and 3) to the extent that you are an individual and not a corporation or other legal entity, you were not physically present in Canada when the service is made. The statement should also include your complete home and/or business location address. If you do not provide such information, you will be charged for Taxes on the Plan which will be billed to your credit card until after such time that you provide us with the information described to us.
            </li><li>3. To the extent that you are a non-resident individual and not a corporation or other legal entity, and your location of usage shifts to a place in Canada when the service is made, you must advise us immediately by email to the address provided above.
            </li><li>4. Abaacorp does not provide refunds.

            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            Tax is not included and will be billed to your credit card. If you're exempt from Canadian taxes, let us know by giving us your original exemption certificate and we'll stop adding taxes to your bill. No refunds.</p>


            <br><br>  

            <span style=" color:#91c540">SECTION 5</span>
            <h2>Cancellation and Termination</h2>
            <ul>
            <li>1.  For websites, no cancel request is processed.
            </li><li>2. For payment processing support service, you may cancel your account at anytime by  emailing support@abaacorp.net
            </li><li>3. Once your account is cancelled all of your Content will be immediately deleted from the Service. Since deletion of all data is final please be sure that you do in fact want to cancel your account before doing so.
            </li><li>4. If you cancel the Service in the middle of the month, you will receive one final invoice via email. Once that invoice has been paid you will not be charged again.
            </li><li>5. We reserve the right to modify or terminate the Abaacorp service for any reason, without notice at any time.
            </li><li>6. Fraud: Without limiting any other remedies, Abaacorp may suspend or terminate your account if we suspect that you (by conviction, settlement, insurance or escrow investigation, or otherwise) have engaged in fraudulent activity in connection with the Site.

            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            To cancel, e-mail support@abaacorp.net and all your content will be permanently deleted. If you cancel in the middle of the month, you'll have one last e-mail invoice. We may change or cancel the Abaacorp service at anytime. Any fraud and we will suspend or cancel your account.</p>


            <br><br>  

            <span style=" color:#91c540">SECTION 6</span>
            <h2>Modifications to the Service and Prices</h2>
            <ul>
            <li>1.  Prices for using Abaacorp are subject to change upon 30 days notice from Abaacorp. Such notice may be provided at any time by posting the changes to the Abaacorp Site (Abaacorp.net) or the administration menu of your Abaacorp store via an announcement.
            </li><li>2. Abaacorp reserves the right at any time to time to modify or discontinue, the Service (or any part thereof) with or without notice.
            </li><li>3. Abaacorp shall not be liable to you or to any third party for any modification, price change, suspension or discontinuance of the Service.

            </li></ul>
            <br>
            <h3>Which means,</h3>
            <p>
            We may change or discontinue the service at anytime, without liability.</p>


            <br><br>  
            <span style=" color:#91c540">SECTION 7</span>
            <h2>Optional Tools</h2>
            <ul>
            <li>1.  Abaacorp may provide you with access to third party tools over which Abaacorp neither monitors nor has any control or input.
            </li><li>2. You acknowledge and agree that Abaacorp provides access to such tools 'as is' without any warranties, representations or conditions of any kind and without any endorsement. Abaacorp shall have no liability whatsoever arising from or relating to your use of optional third party tools.
            </li><li>3. Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve the terms on which tools are provided by the relevant third party provider(s).
            </li><li>4. Abaacorp strongly recommends that merchants seek specialist advice before using or relying on certain tools. In particular, tax calculators should be used for reference only and not as a substitute for independent tax advice when assessing the correct tax rates merchants should charge end users.
            </li>
            </ul>
            <br>
            <h3>Which means,</h3>
            <p>
            We are not responsible for third party tools so use them at your own risk. If you use them you agree that we do not provide a warranty, so get advice beforehand.</p>

            <br><br>  

            <span style=" color:#91c540">SECTION 8</span>
            <h2>DMCA Notice and Takedown Procedure</h2>
            <ul>
            <li>1.  Abaacorp supports the protection of intellectual property and asks Abaacorp merchants to do the same. It our policy to respond to all notices of alleged copyright infringement.
            </li><li>2. If someone believes that one of our merchants is infringing their intellectual property rights, they can send a DMCA Notice to Abaacorp.
            </li><li>3. Upon receiving a DMCA Notice, we may remove or disable access to the material claimed to be a copyright infringement.
            </li><li>4. Once provided with a notice of takedown, the merchant can reply with a counter notification using our form if they object to the complaint.
            </li><li>5. The original complainant has 14 business days after we receive a counter notification to seek a court order restraining the merchant from engaging in the infringing activity, otherwise we restore the material.

            </li></ul>
            <br>
            <h3>For merchants this means,</h3>
            <p>
            Abaacorp respects intellectual property rights and you should too. If we receive a DMCA Notice, we may disable access or remove the allegedly infringing content from your website. If you don't think the claim is valid, you can proceed with a counter notification.</p>


            <br><br>  
            <h3>For everyone else this means,</h3>
            <p>
            If you believe one of our merchants is infringing your intellectual property rights, you can send Abaacorp a DMCA Notice. We will expeditiously disable access or remove the content and notify the merchant. Be advised that we post all notices we receive.</p>

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