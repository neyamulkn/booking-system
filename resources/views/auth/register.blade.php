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
<title>Create Account</title>
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
input.phoneNumber {
    padding: 0 15px 0 65px !important;
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
        <div class="body">
            <div class="register">
                <h1>Reliable Online Booking System</h1>
                <p>If you already have an account, please click <a href="Javascript:void(0);" class="login">Log in</a></p>
                <h4 style="margin-bottom: 10px;">Please sign up to get access.</h4>

                <div class="alert alert-danger" id="err_container" style="display:none;">
                                     </div>
                <div class="alert alert-success" id="succ_container" style="display:none;">
                                     </div>
                <form action="{{route('register')}}" method="post" id="form_signup"  autocomplete="off">
                    @csrf
                    <ul>
                        <li>
                          <input id="fname" type="text" class="form-control @error('fname') is-invalid @enderror" name="fname" value="{{ old('fname') }}" placeholder="First Name" required autocomplete="fname" autofocus>

                          @error('fname')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                          @enderror

                        </li>
                        <li>
                            <input id="lname" type="text" class="form-control @error('lname') is-invalid @enderror" name="lname" placeholder="Last Name" value="{{ old('lname') }}" required autocomplete="lname" autofocus>

                            @error('lname')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </li>
                        <li>
                          <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email Address" required autocomplete="email">
                          @error('email')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                          @enderror
                        </li>

                        <li>
                          <select name="gender" id="gender" required="required" class="form-control @error('gender') is-invalid @enderror">
                             <option value="">Select Gender</option>
                             <option @if( old('gender') == 1) selected @endif value="1">Male</option>
                             <option @if( old('gender') == 2) selected @endif value="2">Female</option>
                           </select>

                            @error('gender')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                            @enderror
                        </li>

                        <li>
                            <input id="birthday" placeholder="Birthday" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" class="form-control @error('birthday') is-invalid @enderror" name="birthday"  value="{{ old('birthday') }}" value="fasdkf" required autocomplete="birthday" autofocus>

                            @error('birthday')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </li>

                        <li>

                            <?php $get_countries = DB::table('countries')->get(); ?>
                            <select name="country" onchange="get_state(this.value)" id="country" class="form-control validate[required]">
                                <option value="0" data-phonecode="+1">Select Country</option>
                                @foreach($get_countries as $country)
                                <option @if( old('country') == $country->id) selected @endif value="{{$country->id}}" data-phonecode="{{$country->phonecode}}" >{{$country->name}}</option>
                                @endforeach

                            </select>
                        </li>
                        <!--
                        <li>
                            <select name="state" id="state"  onchange="get_city(this.value)" required="required" class="form-control @error('state') is-invalid @enderror">
                               <option value="">Select State</option>
                             </select>

                              @error('state')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror

                        </li>
                        <li>
                            <select name="city" id="city" class="form-control @error('city') is-invalid @enderror">
                               <option value="">Select City</option>
                             </select>

                            @error('city')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                            @enderror

                        </li> -->

                        <li><span class="phonecode" id="phonecode">+1</span>
                            <input type="hidden" id="hid_phonecode" name="hid_phonecode" value="+1"/>
                         <input id="businessphone" type="tel" class="form-control phoneNumber @error('mobile') is-invalid @enderror " name="mobile" value="{{ old('mobile') }}" placeholder="Mobile Number" required autocomplete="mobile">
                              @error('mobile')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                             @enderror
                        </li>
                       <!--  <li>
                            <input id="contact" type="text" class="form-control @error('contact') is-invalid @enderror" name="contact" value="{{ old('contact') }}" placeholder="Contact No" required autocomplete="contact" autofocus>

                              @error('contact')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                        </li> -->
                        <li>
                            <input type="text"  value="{{old('wechat') }}" placeholder="Wechat ID (optional)"  name="wechat" class="form-control" id="wechat" tabindex="3">
                        </li>

                        <li>
                            <input type="text" value="{{old('qq')}}" placeholder="QQ ID (optional)" name="qq" class="form-control" id="QQ" tabindex="3">
                        </li>
                        <li><input type="text" value="{{old('skype')}}" placeholder="Skype ID (optional)" name="skype" class="form-control" id="skype" tabindex="3">
                        </li>
                        <li> <input type="text" value="{{old('facebook')}}" placeholder="Facebook profile link (optional)" name="facebook" class="form-control" id="facebook" tabindex="3"></li>
                        <li>
                            <input type="text" value="{{old('username') }}" name="username" required="required" placeholder="Username " class="form-control" id="username" tabindex="3">
                            @error('username')
                              <span class="invalid-feedback" role="alert">
                                  <strong>{{ $message }}</strong>
                              </span>
                            @enderror
                        </li>
                        <li>
                            <input id="password" placeholder="Password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </li>

                        <li>
                            <input id="password-confirm" placeholder="Retype password" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                        </li>

                        <li style="width: 100%">
                            <select name="role" id="role"  required="required" class="form-control @error('role') is-invalid @enderror">
                               <option value="">Select Profession</option>
                               <option value="{{env('TEACHER')}}">Business</option>
                               <option value="{{env('TEACHER')}}">Beauty</option>
                               <option value="{{env('TEACHER')}}">Education</option>
                               <option value="{{env('TEACHER')}}">Events</option>
                               <option value="{{env('TEACHER')}}">Entertainment</option>

                               <option value="{{env('TEACHER')}}">Medical</option>
                               <option value="{{env('TEACHER')}}">Official</option>
                              <option value="{{env('TEACHER')}}">Personal meetings</option>
                               <option value="{{env('STUDENT')}}">Student</option>
                               <option value="{{env('TEACHER')}}">Sales</option>
                               <option value="{{env('TEACHER')}}">Sports</option>
                               <option value="{{env('TEACHER')}}">Teaching</option>
                               <option value="{{env('TEACHER')}}">Tourism</option>
                               <option value="{{env('TEACHER')}}">Transportation</option>
                              <option value="{{env('TEACHER')}}">Wellness</option>
                              <option value="{{env('OTHERS')}}">Others</option>
                             </select>

                              @error('role')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror

                        </li>


                        <li class="fullWidth text-center">
                            <input type="submit" name="signup" id="signup" value="Sign Up">
                            <img id="slog" src="{{ asset('landing/assets') }}/images/loader.html" alt="" style=" display: none; float: left;"/>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
        <!--Signup end-->


@include('landing.layouts.footer')
 <script src = "{{asset('scripts/js')}}/libs/jquery-3.2.1.min.js"></script>


<script>

  @if(old('country'))
   var countrycode = $('#country').find(':selected').data("phonecode");
    document.getElementById('phonecode').innerHTML = countrycode;
  @endif

    function get_state(id=0){
        var countrycode = $('#country').find(':selected').data("phonecode");
        document.getElementById('phonecode').innerHTML = countrycode;
        var  url = '{{route("get_state", ":id")}}';
        url = url.replace(':id',id);
        $.ajax({
            url:url,
            method:"get",
            success:function(data){
                if(data){
                    $("#state").html(data);
                    $("#state").focus();
                    document.getElementById('city').innerHTML = "<option>Select First State</option>";
                }else{
                    document.getElementById('state').innerHTML = "<option>Select First Country</option>";
                    document.getElementById('city').innerHTML = "<option>Select First State</option>";
                }
            }
        });
    }

    function get_city(id=0){
        var  url = '{{route("get_city", ":id")}}';
        url = url.replace(':id',id);

        $.ajax({
            url:url,
            method:"get",
            success:function(data){
                if(data){
                    $("#city").html(data);
                     $("#city").focus();
                }else{
                    $("#city").html('<option>Select First State</option>');
                }
            }
        });
    }

</script>
</body>

</html>
