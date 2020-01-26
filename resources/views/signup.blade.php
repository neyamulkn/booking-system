<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>
  <title>Register</title>

  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">

  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300,700">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/font-awesome.min.css">
  <link rel="stylesheet" href="{{asset('scripts/js')}}/libs/{{asset('scripts/css')}}/ui-lightness/jquery-ui-1.9.2.custom.min.css">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/bootstrap.min.css">

    <!-- App CSS -->
  <link rel="stylesheet" href="{{asset('scripts/css')}}/target-admin.css">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/custom.css">

</head>

<body class="account-bg">

<div class="navbar">

  <div class="container">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <i class="fa fa-cogs"></i>
      </button>

      <a class="navbar-brand navbar-brand-image" href="index-2.html">
        <img src="{{asset('images')}}/logo.png" alt="Site Logo">
      </a>

    </div> <!-- /.navbar-header -->

    <div class="navbar-collapse collapse">

      <ul class="nav navbar-nav navbar-right">   

        <li>
          <a href="javascript:;">
            <i class="fa fa-angle-double-left"></i> 
            &nbsp;Back to Homepage
          </a>
        </li> 

      </ul>
       

    </div> <!--/.navbar-collapse -->

  </div> <!-- /.container -->

</div> <!-- /.navbar -->

<div class="account-wrapper">



  <div class="account-logo">
    <img src="{{asset('images')}}/logo-login.png" alt="Target Admin">
  </div>


    <div class="account-body">

      <h3 class="account-body-title">Get Started with a Free Account.</h3>

      <h5 class="account-body-subtitle">Sign up in 30 seconds. No credit card required.</h5>

      <form class="form account-form" method="POST" action="{{ route('register') }}">

        <div class="form-group">
        <label for="signup-email" class="placeholder-hidden">Email Address</label>
         <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
          @error('email')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
        </div> <!-- /.form-group -->

        <div class="form-group">
            <label for="signup-fullname" class="placeholder-hidden">Your Name</label>
           <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div> <!-- /.form-group -->

        <div class="form-group">
          <label for="signup-username" class="placeholder-hidden">Username</label>
          <input type="text" class="form-control" id="signup-username" placeholder="Username" tabindex="3">
        </div> <!-- /.form-group -->

        <div class="form-group">
          <label for="login-password" class="placeholder-hidden">Password</label>
          <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

          @error('password')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
        </div> <!-- /.form-group -->
        <div class="form-group">
          <label for="password-confirm" class="placeholder-hidden">Password</label>
         
          <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
        
        </div> <!-- /.form-group -->

        <div class="form-group">
          <label class="checkbox-inline">
          <input type="checkbox" class="" value="" tabindex="5"> I agree to the <a href="javascript:;" target="_blank">Terms of Service</a> &amp; <a href="javascript:;" target="_blank">Privacy Policy</a>
          </label>
        </div> <!-- /.form-group -->

        <div class="form-group">
          <button type="submit" class="btn btn-secondary btn-block btn-lg" tabindex="6">
          Create My Account &nbsp; <i class="fa fa-play-circle"></i>
          </button>
        </div> <!-- /.form-group -->

      </form>

    </div> <!-- /.account-body -->

    <div class="account-footer">
      <p>
      Already have an account? &nbsp;
      <a href="account-login.html" class="">Login to your Account!</a>
      </p>
    </div> <!-- /.account-footer -->

  </div> <!-- /.account-wrapper -->

  <script src="{{asset('scripts/js')}}/libs/jquery-1.10.1.min.js"></script>
  <script src="{{asset('scripts/js')}}/libs/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="{{asset('scripts/js')}}/libs/bootstrap.min.js"></script>

  <!--[if lt IE 9]>
  <script src="./{{asset('scripts/js')}}/libs/excanvas.compiled.js"></script>
  <![endif]-->
  <!-- App JS -->
  <script src="{{asset('scripts/js')}}/target-admin.js"></script>
  
  <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/target-account.js"></script>

  


  

</body>

<!-- Mirrored from jumpstartthemespreview.com/target-admin/account-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 14 Oct 2019 12:25:26 GMT -->
</html>
