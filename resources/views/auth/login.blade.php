<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>
  <title>Login</title>

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
  <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">

</head>
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
  <![endif]-->
</head>

<body class="account-bg">

<div class="navbar">

  <div class="container">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <i class="fa fa-cogs"></i>
      </button>

      <a class="navbar-brand navbar-brand-image" href="{{url('/')}}" style="padding-top: 8px">
        Teacher Jack
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

<hr class="account-header-divider">

<div class="account-wrapper">

    <div class="account-body">

      <h3 class="account-body-title">Welcome back to Teacher Jack.</h3>

      <h5 class="account-body-subtitle">Please sign in to get access.</h5>

      <form class="form account-form" method="POST" action="{{route('login')}}">
        @csrf
        <div class="form-group">
          <label for="login-username" class="placeholder-hidden">Email</label>
          <input type="text" name="email" class="form-control" id="login-username" placeholder="Email" tabindex="1">
          @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div> <!-- /.form-group -->

        <div class="form-group">
          <label for="login-password" class="placeholder-hidden">Password</label>
          <input type="password" name="password" class="form-control" id="login-password" placeholder="Password" tabindex="2">
          @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div> <!-- /.form-group -->

        <div class="form-group clearfix">
          <div class="pull-left">         
            <label class="checkbox-inline">
            <input type="checkbox" class="" value="" tabindex="3">Remember me
            </label>
          </div>

          <div class="pull-right">
            <a href="account-forgot.html">Forgot Password?</a>
          </div>
        </div> <!-- /.form-group -->

        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block btn-lg" tabindex="4">
            Signin &nbsp; <i class="fa fa-play-circle"></i>
          </button>
        </div> <!-- /.form-group -->

      </form>


    </div> <!-- /.account-body -->

    <div class="account-footer">
      <p>
      Don't have an account? &nbsp;
      <a href="{{route('register')}}" class="">Create an Account!</a>
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

 <!-- for label -->
  <script type="text/javascript">
    $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
  </script>
<!--end label -->

</body>
</body>

</html>
