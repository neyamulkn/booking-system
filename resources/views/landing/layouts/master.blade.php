<!DOCTYPE html>
<html lang="en">

    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
    <meta property="og:url" content="index.html">
    <meta property="og:site_name" content="Appointmantic"/>
    <meta property="og:image" content="images/og_image_new.png"/>
    <meta property="og:title" content="Online  Booking and Scheduling Software"/>
    <meta property="og:description" content="With appointmantic you can easily manage all your bookings, customers and staff members online"/>

    <style>

    .body .greenWide .systemFull .systemUl li .textSpan {
        display: block !important;
        padding-bottom: 2rem !important;
    }
    .textSpanVid{
        cursor: pointer;
    }

    .navbar-wrapper .navbar .navbar-collapse .navbar-nav > .active > a{border-bottom: 3px solid #c72429 !important;}

    .navbar-wrapper .navbar .navbar-collapse .topNav li a.signUp { background:#d9534f !important;}

    .navbar-wrapper .navbar .navbar-collapse .topNav li a {border: 2px solid  #fff !important;}
    </style>

    <meta charset="utf-8">
    <meta http-equiv="Pragma" content="no-cache" /> 
    <meta http-equiv="Expires" content="-1" /> 
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <meta name="description" content="">
    <meta name="keywords" content="Appoint Mantic">
    <meta name="author" content="Free Online Appointment Booking and Scheduling Software">
    <link rel="shortcut icon" type="image/ico" href="{{ asset('landing/assets') }}/images/favicon.ico"/>
    <link rel="shortcut icon" type="image/ico" href="{{ asset('landing/assets') }}/images/favicon.ico"/>
    <title>Online Booking and Scheduling Software</title>
    <!--Custome Css-->
    <link href="{{ asset('landing/assets') }}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{ asset('landing/assets') }}/css/validationEngine.jquery.min.css" />
    <link rel="stylesheet" href="{{ asset('landing/assets') }}/css/jquery-confirm.min.css" />  
    <link rel="stylesheet" href="{{ asset('landing/assets') }}/css/custom.css" />  
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    </head>

    <body>

    <div class="navbar-wrapper ">
    <div class="container-fluid">
    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="navbar-header"> 
            <a class="navbar-brand" href="{{url('/')}}">
                <img src="{{ asset('landing/assets') }}/images/logo.png" width="45%" alt="">
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

                <li class="{{ (request()->is('/')) ? 'active' : ''  }}"><a href="{{url('/')}}">Home</a></li>
                <li class="{{ (request()->is('features')) ? 'active' : ''  }}"><a href="{{route('features')}}">Features</a></li>
                <li class="{{ (request()->is('reviews')) ? 'active' : ''  }}"><a href="{{route('reviews')}}">Reviews</a></li>
                <li class="{{ (request()->is('pricing')) ? 'active' : ''  }}"><a href="{{route('pricing')}}">Pricing</a></li>
                
            </ul>
            <ul class="topNav" style="display: block;">
                @guest
                <li>
                    <a href="Javascript:void(0);" class="login">Login</a>
                    <div class="loginDiv">
                        <div class="loginWhite">
                            <div class="alert alert-danger" id="lerr_container" style="display:none"> </div>
                            <div class="alert alert-success" id="lsucc_container" style="display:none"></div>
                            <ul>

                                <form id="form_signinssss" action="{{route('login')}}" method="post">
                                    @csrf
                                    <li><input type="text" name="email" placeholder="Email Address" id="email" class="hs validate[required,custom[email]]"></li>
                                    <li><input type="password" name="password" placeholder="Password" id="password" class="hs validate[required]"></li>
                                    <li>
                                        <input type="submit" class=" btn-info" value="Login" id="btn_log">
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
                <li><a href="{{route('register')}}" class="signUp">Sign Up</a></li>
                @else
                    <li><a href="{{route('dashboard')}}">Dashboard</a></li>
                    <li><a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                @endguest
            </ul>
        </div>
    </nav>
    </div>
    </div>  



    @yield('content')

    @include('landing.layouts.footer')

    @yield('js')


    </body>

</html>