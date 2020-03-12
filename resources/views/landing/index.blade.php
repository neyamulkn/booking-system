
@extends('landing.layouts.master')


@section('css')
<style>

#dd-lang
{

    background: none;
    padding: 4px 0px;
    color: white;
    border: none;
    font-size: 14px;

}
#dd-lang option{
    color: black;
}


    .dd-lang a:hover{
        cursor: pointer;
    }
    .dd-lang{
        position: absolute;top: 0;margin-top: 10px !important;right: 26px;
    }
    .dd-lang li.selected a{opacity: 1;color: #fff !important;}
    .dd-lang li a img{    margin: 2px 1px 6px 0px;}
    .navbar-wrapper .navbar .navbar-collapse .nav {margin: 54px 0 0;}
    .navbar-wrapper .navbar .navbar-collapse .topNav {margin: 40px 0 0 19px;}
    @media screen and (max-width: 990px){
        .dd-lang{
            position: relative;left: 0;
        }
        .navbar-wrapper .navbar .navbar-collapse .nav {margin: 15px 0 0;}
        .navbar-wrapper .navbar .navbar-collapse .topNav {margin: 15px 0 0 19px;}
    }

</style>
@endsection

@section('content')
<div class="banner" style="background-image:url({{ asset('landing/assets/images') }}/banner_bg.jpg);">
<div class="bannerComp" style="background-image:url({{ asset('landing/assets/images') }}/banner_computer_bg.png);">&nbsp;</div>

<div class="bannerText">
<div class="container">
<div class="bannerBox">
<h1>Online Appointment Booking and  Scheduling Software</h1>

<a class="btn btn-danger" href="{{route('register')}}">Sign Up </a></div>
</div>
</div>
</div>        
<div class="body">
<div class="container">
<h2>Online Booking and Scheduling Tool That Helps You Win Customers Online</h2>

<h4>Let your clients book appointments comfortably in their own home and space 24/7. You can now effortlessly manage appointments, customers and staff members with Abaacorp’s easy online booking system. We are taking care of the back-end to save you time so you can concentrate on growing your business.</h4>

<ul class="homeFeature">
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/schedule-online-img.png" /></div>

	<h2>Online Scheduling&nbsp;</h2>

	<p>Makes online scheduling for customers, clients and staff members easy and fast with just a few clicks.</p>
	</li>
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/mobile-ready-img.png" /></div>

	<h2>Mobile Friendly</h2>

	<p>Schedule appointments from any device because our booking responsive web&nbsp;is fully optimized and mobile friendly.&nbsp;</p>
	</li>
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/email-alerts-img.png" /></div>

	<h2>Email Notifications&nbsp;</h2>

	<p>Get instant email alerts as soon as you schedule an appointment or your customer makes a booking.&nbsp;</p>
	</li>
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/get-discovered-img.png" /></div>

	<h2>Reviews</h2>

	<p>Become a rock star business owner by automatically inviting your customers to give reviews instantly.</p>
	</li>
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/retain-customers-img.png" /></div>

	<h2>Customer Loyalty</h2>

	<p>Give loyal customers the VIP treatment by giving them promotional discounts and personalized services.&nbsp;</p>
	</li>
	<li class="col-md-4 col-sm-4">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/reserve-with-google-integration-img.png" /></div>

	<h2>Google Calendar&nbsp;</h2>

	</li>
</ul>                <div class="hmFeatureSlider">
                    <div class="owl-carousel owl-theme" id="homeFeature">
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/schedule-online-img.png" alt=""></div>
                                <h2>Schedule online</h2>
                                                            </div>
                        </div>
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/mobile-ready-img.png" alt=""></div>
                                <h2>Mobile Ready</h2>
                                                          </div>
                        </div>
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/email-alerts-img.png" alt=""></div>
                                <h2>SMS/Email Alerts</h2>
                                                          </div>
                        </div>
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/get-discovered-img.png" alt=""></div>
                                <h2>Get Discovered</h2>
                                                              </div>
                        </div>
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/retain-customers-img.png" alt=""></div>
                                <h2>Retain Customers</h2>
                                                             </div>
                        </div>
                        <div class="item">
                            <div class="featureContent">
                                <div class="imgDiv"><img src="{{ asset('landing/assets/images') }}/reserve-with-google-integration-img.png" alt=""></div>
                                <h2>Reserve-with-Google Integration</h2>
                                                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="greenWide">
               <h2>How the Online Booking System Works</h2>

<h4>With an online booking system you can easily manage all your bookings, clients and staff members online. It allows you to log on, schedule or change appointments on the go.</h4>

<div class="container">
<div class="systemFull">
<div class="col-md-7 col-sm-7 text-right hidden-sm hidden-md visible-xs">
<div class="videoBox"><img src="{{ asset('landing/assets/images') }}/youtube.png"></div>
</div>

<div class="col-md-5 col-sm-5">
<ul class="systemUl">
	<li>
<span class="number">1</span><br>
<span class="textSpan" >Sign up and enter service details to create a business profile.<br><b></b></span> 
</li>
<li>
<span class="number">2</span><br>
<span class="textSpan"> Log in and specify your availability. <b>

</li>

<li><span class="number">3</span> 
<span class="textSpan">Embed a “Book Now” button on your website to start booking. You can also share your Abaacorp Booking page with clients for appointment scheduling directly.<br><b></li>
    <li><span class="number">4</span> <br>
     <span class="textSpan" >Watch your business grow as appointments pour in.<br><b></li>
</ul>
</div>

<div class="col-md-7 col-sm-7 text-right hidden-xs">

<div class="videoBox">
	<img style="    border: 1px solid #fff; padding: 3px;" src="{{ asset('landing/assets/images/time.PNG') }}">
<!-- 
<video class="afterglow" id="myvideo" width="600" height="400"  poster="{{ asset('landing/assets/videos') }}/how-appointmantic-works.png">
<source src="{{ asset('landing/assets/videos') }}/how-appointmantic-works-step1.mp4" type="video/mp4">
 Your browser does not support the video tag.
</video> -->
</div>

</div>
</div>
</div>            </div>
            <div class="clearfix"></div>
            <div class="container">
               <h2>Our Booking System is Best for Businesses</h2>

<h4>We offer top notch customer support. Whichever is your business type, you can easily integrate Abaacorp’s booking app onto your website or use your Abaacorp business profile page on its own. Best booking software for:</h4>

<ul class="hmService">
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/beauty-n-salon-img.png" /></div>

	<h2>Education</h2>

	<p>Universities, Colleges, Schools, Libraries, Tutoring Services</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/gaming-img.png" /></div>

	<h2>Professional Services</h2>

	<p>Legal Services, Attorneys, Tax Consultants, Photographers</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/mental-health-img.png" /></div>

	<h2>Beauty &amp; Salon</h2>

	<p>Hair Salons, Spa Salons, Beauty Salons, Nail Salons</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/education-img.png" /></div>

	

	<h2>Gaming &amp; Sports</h2>

	<p>Gaming Arenas, Golf Classes, E-Gaming</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/government-img.png" /></div>

	<h2>Government</h2>

	<p>Government Offices, City Councils, Attorneys, Embassies &amp; Consulates</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/healthcare-img.png" /></div>

	<h2>Healthcare</h2>

	<p>Doctors, Dentists, Chiropractors, Eye Clinics</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/health-img.png" /></div>

	<h2>Health &amp; Wellness</h2>

	<p>Acupuncture, Massage, Spa</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/personal-fitness-img.png" /></div>

	<h2>Personal Fitness</h2>

	<p>Personal Trainers, Gyms, Clubs</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/professional-services-img.png" /></div>



	<h2>Mental Health</h2>

	<p>Psychologists, Counselors, Therapists, Social Workers</p>
	</li>
	<li class="col-md-2">
	<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/vocational-n-trade-img.png" /></div>

	<h2>Vocational &amp; Trade</h2>

	<p>Electrician, Carpenters, Plumbers, Auto Mechanics, Landscapers</p>
	</li>
</ul>

<div class="hmoeServiceSlider">
<div class="owl-carousel owl-theme owl-loaded owl-drag" id="homeService">
<div class="owl-stage-outer">
<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s;">
<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/beauty-n-salon-img.png" /></div>

<h2>Beauty &amp; Salon</h2>

<p>Hair Salons, Spa Salons, Beauty Salons, Nail Salons</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/education-img.png" /></div>

<h2>Education</h2>

<p>Universities, Colleges, Schools, Libraries, Tutoring Services</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/gaming-img.png" /></div>

<h2>Gaming &amp; Sports</h2>

<p>Gaming Arenas, Golf Classes, E-Gaming</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/government-img.png" /></div>

<h2>Government</h2>

<p>Government Offices, City Councils, Attorneys, Embassies &amp; Consulates</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/healthcare-img.png" /></div>

<h2>Healthcare</h2>

<p>Doctors, Dentists, Chiropractors, Eye Clinics</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/health-img.png" /></div>

<h2>Health &amp; Wellness</h2>

<p>Acupuncture, Massage, Spa</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/personal-fitness-img.png" /></div>

<h2>Personal Fitness</h2>

<p>Personal Trainers, Gyms, Clubs</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/professional-services-img.png" /></div>

<h2>Professional Services</h2>

<p>Legal Services, Attorneys, Tax Consultants, Photographers</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/mental-health-img.png" /></div>

<h2>Mental Health</h2>

<p>Psychologists, Counselors, Therapists, Social Workers</p>
</div>
</div>
</div>

<div class="owl-item">
<div class="item">
<div class="serviceContent">
<div class="imgDiv"><img alt="" src="{{ asset('landing/assets/images') }}/vocational-n-trade-img.png" /></div>

<h2>Vocational &amp; Trade</h2>

<p>Electrician, Carpenters, Plumbers, Auto Mechanics, Landscapers</p>
</div>
</div>
</div>
</div>
</div>

<div class="owl-nav">
<div class="owl-prev">prev</div>

<div class="owl-next">next</div>
</div>

<div class="owl-dots disabled">&nbsp;</div>
</div>
</div>

<p class="signUp"><a class="btn btn-danger" href="{{route('register')}}">Sign Up </a></p>            </div>

            <div class="lightGreenDiv">
                <div class="container">
                    <h2>Customer Reviews&nbsp;</h2>

<h4>See what our customer say about our online scheduling and booking platform.</h4>                   
                    <div class="hmTestimonilas">
                        <div class="owl-carousel owl-theme" id="homeClientSays">
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                            <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534580028CJXQYEZGNO_thumb.png" alt="">
                                    </div>
                                    <div class="textDiv">
                                        <h3>Louisa Johnson</h3>
                                        <h5>Fine Style Salon, US</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">AppointMantic has really saved my life. As a startup owner I was overwhelmed by the responses of customers and managing the salon at the same time. But with their <span style=\"color:red\">appointment scheduling software </span>I was able to manage both, and still find time to do my marketing! Thank you!&nbsp;</span></span></span></p></div>
                                </div>
                            </div>
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                                                                    <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534579547PJLUVRACEQ_thumb.png" alt="">
                                                                            </div>
                                    <div class="textDiv">
                                        <h3>Rory Nice</h3>
                                        <h5>Nice N Spice, US</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">I&rsquo;ve just started using this amazing <span style=\"color:red\">scheduling app </span>a couple of months ago, and I must say I&rsquo;m impressed. Life is a piece of cake now, literally (I offer baking services for weddings). </span></span></span></p></div>
                                </div>
                            </div>
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                                                                    <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534579454CDWPSZBUNK_thumb.png" alt="">
                                                                            </div>
                                    <div class="textDiv">
                                        <h3>Tim Dale</h3>
                                        <h5>Shutter Bean, US</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">You guys rock! I am so happy that I found AppointMantic when I did. Just a few clicks, and I got my photography studio appointments all sorted out. Thank you so much for such a cool tool! </span></span></span></p></div>
                                </div>
                            </div>
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                                                                    <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534579281LUKCFPIMVE_thumb.png" alt="">
                                                                            </div>
                                    <div class="textDiv">
                                        <h3>Carol Smith</h3>
                                        <h5>EduCare, London</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">We would like to let you know that we really appreciate all the hard work you have done on building an incredible <span style=\"color:red\">scheduling software </span>like AppointMantic. We like the easy-to-use layout, the ability to scale up or down staff members, and most importantly, make bookings easy for our clients. Well done team AppoinMantic! </span></span></span></p></div>
                                </div>
                            </div>
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                                                                    <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534579162RXOHGPQVUA_thumb.png" alt="">
                                                                            </div>
                                    <div class="textDiv">
                                        <h3>Dr. Jim Sloan</h3>
                                        <h5>US</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">I would highly recommend AppointMantic to anyone who&rsquo;s looking for an easy way to schedule appointments online. As a therapist I don&rsquo;t have the head for complex technologies and I must say this is as easy as it gets. You just sign up, add your services, and start taking appointments online. Fantastic idea! </span></span></span></p></div>
                                </div>
                            </div>
                                                        <div class="item">
                                <div class="whiteDiv">
                                    <div class="imgDiv">
                                                                                    <img src="{{ asset('landing/upload/reviewer') }}/thumb/1534579087VXDYCHAFTO_thumb.png" alt="">
                                                                            </div>
                                    <div class="textDiv">
                                        <h3>Joel Hoffman</h3>
                                        <h5>US</h5>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="bottomTestimonials elimore"><p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Hey there! Just wanted to send in a quick word about your great booking app. I run a hair studio, and ever since I started using it, it&rsquo;s been a breeze handling clients and my employees. Thanks a bunch! </span></span></span></p></div>
                                </div>
                            </div>
                                                    </div>
                    </div>
                                    </div>
            </div>
        </div>
        <div class="supportDiv">
            <div class="container">
                <h2>Need Support</h2>
              <h4>Send us an email with your inquiry</h4>                <ul>
                    <li><a href="#">support@abaacorp.com</a></li>
                </ul>
            </div>
        </div>
@endsection

@section('js')
<script>
    $('.hs').attr("readonly", false); 
    $('#form_signin').validationEngine({
        binded: false,
        onValidationComplete: function (form, status) {
            if (status) {
                var email = $.trim(stripTags($("#email").val()));
                var password = $.trim(stripTags($("#password").val()));
                var rember = $("#remember").is(':checked') ? 1 : 0;
                $.ajax({
                    type: "POST",
                    data: {
                        "email": email,
                        "password": password,
                        "remeber": rember
                    },
                    dataType: "json",
                    url: "{{route('login')}}",
                    beforeSend: function () {

                    },
                    success: function (res) {
                        $('#log').css("display", "none");
                        $('#btn_log').css("display", "block");

                        if (res.result === false) {
                            
                            
                             if(res.data != null){

                                if(res.data.profile_redirect === true){

                                    window.location.href = base_url + 'business-profile-setup/' +res.data.AMUserId;

                                }
                              
                            }
                            
                            
                            $('html, body').animate({
                                scrollTop: 0
                            }, 900);
                            $('#lsucc_container').animate({
                                height: 'hide',
                                width: 'hide',
                                opacity: 'hide'
                            }, 500);
                            $('#lerr_container').fadeIn(1500);
                            $('#lerr_container').text(res.msg);

                        } else {

                            $('#lerr_container').animate({
                                height: 'hide',
                                width: 'hide',
                                opacity: 'hide'
                            }, 500);

                            window.localStorage.setItem("user_arr", JSON.stringify(res.data));
                            window.location.href = base_url + res.data.AMSlug + '/admin';
                        }
                    },
                    error: function () {
                        $('#log').css("display", "none");
                        $('#btn_log').css("display", "block");
                    }
                });
            }
        }
    });
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-129673104-1"></script>

<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());

 

  gtag('config', 'UA-129673104-1');

</script>        <script src="{{ asset('landing/assets/js') }}/jquery.elimore.js"></script>
          <script>

            $(document).ready(function () {

                $(document).on("click" , ".textSpanVid" , function () {

                    var vidsrc = $(this).data('vidsrc');

                    if( typeof( vidsrc)  !== "undefined" ){

                        $('.videoBox video source').attr('src', vidsrc);
                        $(".videoBox video")[0].load();
                       // $("#myvideo").play();
                        $("#myvideo video")[0].play();

                    }


                });
            });

        </script>
        <!-- /.footer --> 
@endsection