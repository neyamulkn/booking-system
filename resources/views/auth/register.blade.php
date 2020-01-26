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

  <link rel="stylesheet" href="{{asset('scripts/css')}}/bootstrap.min.css">

    <!-- App CSS -->
  <link rel="stylesheet" href="{{asset('scripts/css')}}/target-admin.css">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/custom.css">
  <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">

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

<div class="account-wrapper" style="width: 50% !important">

    <div class="account-body">

      <h3 class="account-body-title">Get Started with a Free Account.</h3>

      <h5 class="account-body-subtitle">Please signup to get access.</h5>

      <form class="form account-form floating-labels" method="POST" action="{{ route('register') }}">
      <div class="row">
        @csrf
        <div class="col-md-6">
          <div class="form-group">
              <label for="fname" >First Name</label>
             <input id="fname" type="text" class="form-control @error('fname') is-invalid @enderror" name="fname" value="{{ old('fname') }}" required autocomplete="fname" autofocus>

              @error('fname')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div> 
        </div> 

        <div class="col-md-6">
          <div class="form-group">
              <label for="lname" >Last Name</label>
             <input id="lname" type="text" class="form-control @error('lname') is-invalid @enderror" name="lname" value="{{ old('lname') }}" required autocomplete="lname" autofocus>

              @error('lname')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-6">
          <div class="form-group">
          <label for="email" >Email Address</label>
           <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
          </div> <!-- /.form-group -->
        </div>

        <div class="col-md-6">
          <div class="form-group">
          <label for="mobile" >Mobile Number</label>
           <input id="mobile" type="mobile" class="form-control @error('mobile') is-invalid @enderror" name="mobile" value="{{ old('mobile') }}" required autocomplete="mobile">
            @error('mobile')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
          </div> <!-- /.form-group -->
        </div>

        <div class="col-md-6">
            <div class="form-group">
              <label for="gender" >Gender</label>
               <select name="gender" id="gender" required="required" class="form-control @error('gender') is-invalid @enderror">
                 <option value=""></option>
                 <option value="1">Male</option>
                 <option value="2">Female</option>
               </select>

                @error('gender')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
              <label for="birthday" >Birthday date</label>
             <input id="birthday" type="date" class="form-control @error('birthday') is-invalid @enderror" name="birthday"  value="{{ old('birthday') }}" value="fasdkf" required autocomplete="birthday" autofocus>

              @error('birthday')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div> 
        </div>
        <div class="col-md-6">
            <div class="form-group">
              <label for="country" >Country</label>
               <select name="country" required="required" id="country" class="form-control @error('country') is-invalid @enderror">
                 <option value=""></option>
                 <option value="1">Bangladesh</option>
                 <option value="2">India</option>
               </select>

                @error('country')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="state" >State</label>
             <select name="state" id="state" required="required" class="form-control @error('state') is-invalid @enderror">
               <option value=""></option>
               <option value="1">Dhaka</option>
               <option value="2">Rangpur</option>
             </select>

              @error('state')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label for="city" >City</label>
             <select name="city" id="city" class="form-control @error('city') is-invalid @enderror">
               <option value=""></option>
               <option value="1">Dhaka</option>
               <option value="2">Rangpur</option>
             </select>

              @error('city')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div>
          </div>
        
        <div class="col-md-6">
          <div class="form-group">
              <label for="contact" >Contact No</label>
             <input id="contact" type="text" class="form-control @error('contact') is-invalid @enderror" name="contact" value="{{ old('contact') }}" required autocomplete="contact" autofocus>

              @error('contact')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div> 
        </div>
        

        <div class="col-md-6">
          <div class="form-group">
            <label for="wechat" >Wechat ID (optional)</label>
            <input type="text" name="wechat" class="form-control" id="wechat" tabindex="3">
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="QQ" >QQ ID (optional)</label>
            <input type="text" name="qq" class="form-control" id="QQ" tabindex="3">
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="skype" >Skype ID (optional)</label>
            <input type="text" name="skype" class="form-control" id="skype" tabindex="3">
          </div> <!-- /.form-group -->
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label for="facebook">Facebook profile link (optional)</label>
            <input type="text" name="facebook" class="form-control" id="facebook" tabindex="3">
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-12">
          <div class="form-group">
            <label for="username" >Username</label>
            <input type="text" value="{{old('username') }}" name="username" required="required" class="form-control" id="username" tabindex="3">
            @error('username')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="password" >Password</label>
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="password-confirm">Confirm Password</label>
           
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
            @error('password_confirmation')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
          </div> <!-- /.form-group -->
        </div>
        <div class="col-md-12">
          <div class="form-group">
            <span class="checkbox-inline">
            <input type="checkbox" class="" value="" tabindex="5"> I agree to the <a href="javascript:;" target="_blank">Terms of Service</a> &amp; <a href="javascript:;" target="_blank">Privacy Policy</a>
            </span>
          </div> <!-- /.form-group -->
          </div>
        </div>
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
      <a href="{{route('login')}}" class="">Login to your Account!</a>
      </p>
    </div> <!-- /.account-footer -->

  </div> <!-- /.account-wrapper -->

  <script src="{{asset('scripts/js')}}/libs/jquery-3.2.1.min.js"></script>
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

</html>
