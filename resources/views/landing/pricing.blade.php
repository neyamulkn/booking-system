
@extends('landing.layouts.master')
@section('content')

<style type="text/css">

   .tab-pd {
        padding: 10px 40px;
        border: 1px solid #f1f0f0;
        border-radius: 5px;
    }
    .featureService .btn-default {
        color: #06adef;
        border: 2px solid #06adef;
        padding: 10px 0;
        width: 80%;
        font-size: 18px;
        border-radius: 30px;
        transition: all .25s ease;
    }

.no-gutter{
    
    padding: 10px;
}

 .cap {
    font-size: 18px;
    font-weight: 600;
    margin-top: 15px;
}
</style>
<!-- BANNER -->
 <div class="Featurebanner" style="background-image:url({{ asset('landing/assets') }}/images/banner_bg.jpg);">
<div class="bannerText">
<div class="container">
<h1> Abaacorp Schedule Booking System for Managing Your Business&nbsp;</h1>
<a class="SignBtn btn-default" href="{{route('register')}}">Sign Up </a></div>
</div>
</div>
<!-- BODY -->
<div class="body">
  <div class="featureService">
    <div class="container">
      <div class="row">
          <h1>Booking packages</h1>
          <div class="tab-pd">
                <form action="#" method="get">
                    
                    <div class="row mg no-gutter">
                        <div class="col-sm-7">
                            <p class="cap">
                               20 bookings  
                            </p>
                        </div>
                        <div class="col-sm-5">
                            <div class="bar">
                                <button value="1" name="price" class="btn btn-default">
                                    5 USD
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="row mg no-gutter">
                        <div class="col-sm-7">
                            <p class="cap">
                               40 bookings  
                            </p>
                        </div>
                        <div class="col-sm-5">
                            <div class="bar">
                                <button value="2" name="price" class="btn btn-default">
                                    10 USD
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="row mg no-gutter">
                        <div class="col-sm-7">
                            <p class="cap">
                               100 bookings  
                            </p>
                        </div>
                        <div class="col-sm-5">
                            <div class="bar">
                                <button value="3" name="price" class="btn btn-default">
                                    20 USD
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="row mg no-gutter">
                        <div class="col-sm-7">
                            <p class="cap">
                               300 bookings  
                            </p>
                        </div>
                        <div class="col-sm-5">
                            <div class="bar">
                                <button value="4" name="price" class="btn btn-default">
                                    50 USD
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="row mg no-gutter">
                        <div class="col-sm-7">
                            <p class="cap">
                                Unlimited Bookings
                            </p>
                        </div>
                        <div class="col-sm-5">
                            <div class="bar">
                                <button value="5" name="price" class="btn btn-default">
                                     89 USD
                                </button>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>

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
           
            <li><a href="#">support@Abaacorp.com</a></li>
        </ul>
    </div>
</div>
@endsection