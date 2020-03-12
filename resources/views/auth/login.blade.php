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
<title>Login Pannel</title>
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

        <!-- header -->
 <style>
.navbar-wrapper .navbar .navbar-collapse .topNav li .loginDiv .loginWhite::before{background: none!important}
#dd-lang
{

    background: none;
    padding: 4px 0px;
    color: white;
    border: none;
    font-size: 14px;

}

#form_signin ul li{width: 100%;padding: 0;}
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
                    <li class=""><a href="{{route('register')}}">Sign Up</a></li>

                </ul>
              

            </div>
        </nav>
    </div>
</div>        <!-- /.header -->
        <div class="body">
            <div class="register">
                <h1>Fast and reliable online scheduling software</h1>
                <h4 style="margin-bottom: 10px;">Please login to get access..</h4>
                
               
                <form id="form_signin" action="{{route('login')}}" method="post">
                  @csrf
                  <ul>
                  <li><input type="text" name="email" placeholder="Email Address" id="email" class="hs validate[required,custom[email]]">
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </li>

                  <li><input type="password" name="password" placeholder="Password" id="password" class="hs validate[required]">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </li>
                  <li>
                      <input type="submit" value="Login" class="btn-info" id="btn_log">
                      <img id="log" src="{{ asset('landing/assets') }}/images/loader.html" alt="" style=" display: none; float: left;"/>
                  </li>
                  <li>
                      <input type="checkbox" name="remember" id="remember" value="">
                      <span class="remember">Remember Me</span>
                      <a href="#" class="forgotPassword">Forgot your password?</a>
                  </li></ul>
              </form>
            </div>
        </div>
        <!--Signup end-->


@include('landing.layouts.footer')

</body>

</html>