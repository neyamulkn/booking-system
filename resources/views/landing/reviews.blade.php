
@extends('landing.layouts.master')
@section('content')
<!-- BANNER -->
<div class="Featurebanner" style="background-image:url({{ asset('landing/assets') }}/images/banner_bg.jpg);">
<div class="bannerText">
<div class="container">
<h1>Smart features calendar to help manage your business</h1>
<a class="SignBtn btn-default" href="{{route('register')}}">Sign Up</a></div>
</div>
</div>
<!-- BODY -->
<div class="body">
  <div class="ReviewDiv">
    <div class="container">
      <div class="row">
        <ul class="waterfall">
            
          <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12 item">
            <div class="whiteDiv">
                <div class="imgDiv">
                    <img src="upload/reviewer/thumb/1534580028CJXQYEZGNO_thumb.png" alt="">
              </div>
              <div class="textDiv">
                <h3>Louisa Johnson</h3>
                <h5>Fine Style Salon, US</h5>
              </div>
              <div class="clearfix"></div>
              <div class="bottomTestimonials"><p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Abbacorp booking has really saved my life. As a startup owner I was overwhelmed by the responses of customers and managing the salon at the same time. But with their <span style=\"color:red\">abbacorp booking scheduling software </span>I was able to manage both, and still find time to do my marketing! Thank you!&nbsp;</span></span></span></p></div>
            </div>
          </li>
          
          <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12 item">
            <div class="whiteDiv">
                <div class="imgDiv">
                                            <img src="upload/reviewer/thumb/1534579547PJLUVRACEQ_thumb.png" alt="">
                                    </div>
              <div class="textDiv">
                <h3>Rory Nice</h3>
                <h5>Nice N Spice, US</h5>
              </div>
              <div class="clearfix"></div>
              <div class="bottomTestimonials"><p><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">I&rsquo;ve just started using this amazing <span style=\"color:red\">scheduling app </span>a couple of months ago, and I must say I&rsquo;m impressed. Life is a piece of cake now, literally (I offer baking services for weddings). </span></span></span></p></div>
            </div>
          </li>
          
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- FOOTER-SUUPORTA -->
<div class="supportDiv">
            <div class="container">
                <h2>Need Support</h2>
                <h4>Send us an email with your inquiry</h4>                
                <ul>
                    <li><a href="#">support@abaacorp.com</a></li>
                </ul>
            </div>
        </div>
@endsection