<!DOCTYPE html>

<head>
  <title>Dashboard - Teacher Jack</title>

  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300,700">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/font-awesome.min.css">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/bootstrap.min.css">

  <!-- Plugin CSS -->
  <link rel="stylesheet" href="{{asset('scripts/js')}}/plugins/morris/morris.css">
  <link rel="stylesheet" href="{{asset('scripts/js')}}/plugins/icheck/skins/minimal/blue.css">
  <link rel="stylesheet" href="{{asset('scripts/js')}}/plugins/select2/select2.css">
  <link rel="stylesheet" href="{{asset('scripts/js')}}/plugins/fullcalendar/fullcalendar.css">

  <!-- App CSS -->
  <link rel="stylesheet" href="{{asset('scripts/css')}}/target-admin.css">
  <link rel="stylesheet" href="{{asset('scripts/css')}}/custom.css">
  <link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
  @yield('css')

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.{{asset('scripts/js')}}/1.3.0/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<div class="navbar">

  <div class="container">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <i class="fa fa-cogs"></i>
      </button>

      <a class="navbar-brand navbar-brand-image" href="{{url('/')}}" style="font-weight: bold;padding: 13px 0 0;color:#fff">
        TeacherJack
      </a>

    </div> <!-- /.navbar-header -->

    <div class="navbar-collapse collapse">



      <ul class="nav navbar-nav noticebar navbar-right">

        <li class="dropdown">
          <a href="page-notifications.html" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-bell"></i>
            <span class="navbar-visible-collapsed">&nbsp;Notifications&nbsp;</span>
            <span class="badge">3</span>
          </a>

          <ul class="dropdown-menu noticebar-menu" role="menu">
            <li class="nav-header">
              <div class="pull-left">
                Notifications
              </div>

              <div class="pull-right">
                <a href="javascript:;">Mark as Read</a>
              </div>
            </li>

            <li>
              <a href="page-notifications.html" class="noticebar-item">
                <span class="noticebar-item-image">
                  <i class="fa fa-cloud-upload text-success"></i>
                </span>
                <span class="noticebar-item-body">
                  <strong class="noticebar-item-title">Templates Synced</strong>
                  <span class="noticebar-item-text">20 Templates have been synced to the Mashon Demo instance.</span>
                  <span class="noticebar-item-time"><i class="fa fa-clock-o"></i> 12 minutes ago</span>
                </span>
              </a>
            </li>

            <li>
              <a href="page-notifications.html" class="noticebar-item">
                <span class="noticebar-item-image">
                  <i class="fa fa-ban text-danger"></i>
                </span>
                <span class="noticebar-item-body">
                  <strong class="noticebar-item-title">Sync Error</strong>
                  <span class="noticebar-item-text">5 Designs have been failed to be synced to the Mashon Demo instance.</span>
                  <span class="noticebar-item-time"><i class="fa fa-clock-o"></i> 20 minutes ago</span>
                </span>
              </a>
            </li>

            <li class="noticebar-menu-view-all">
              <a href="page-notifications.html">View All Notifications</a>
            </li>
          </ul>
        </li>


        <li class="dropdown">
          <a href="page-notifications.html" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-envelope"></i>
            <span class="navbar-visible-collapsed">&nbsp;Messages&nbsp;</span>
          </a>

          <ul class="dropdown-menu noticebar-menu" role="menu">
            <li class="nav-header">
              <div class="pull-left">
                Messages
              </div>

              <div class="pull-right">
                <a href="javascript:;">New Message</a>
              </div>
            </li>

            <li>
              <a href="page-notifications.html" class="noticebar-item">
                <span class="noticebar-item-image">
                  <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" style="width: 50px" alt="">
                </span>

                <span class="noticebar-item-body">
                  <strong class="noticebar-item-title">New Message</strong>
                  <span class="noticebar-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit...</span>
                  <span class="noticebar-item-time"><i class="fa fa-clock-o"></i> 20 minutes ago</span>
                </span>
              </a>
            </li>

            <li>
              <a href="page-notifications.html" class="noticebar-item">
                <span class="noticebar-item-image">
                  <img src="{{asset('images')}}/avatars/avatar-2-md.jpg" style="width: 50px" alt="">
                </span>

                <span class="noticebar-item-body">
                  <strong class="noticebar-item-title">New Message</strong>
                  <span class="noticebar-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit...</span>
                  <span class="noticebar-item-time"><i class="fa fa-clock-o"></i> 5 hours ago</span>
                </span>
              </a>
            </li>

            <li class="noticebar-menu-view-all">
              <a href="page-notifications.html">View All Messages</a>
            </li>
          </ul>
        </li>


        <li class="dropdown navbar-profile">
          <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">
            <img src="{{asset('images')}}/avatars/avatar-1-xs.jpg" class="navbar-profile-avatar" alt="">
            <span class="navbar-profile-label">rod@rod.me &nbsp;</span>
            <i class="fa fa-caret-down"></i>
          </a>

          <ul class="dropdown-menu" role="menu">

            <li>
              <a href="{{route('profile')}}">
                <i class="fa fa-user"></i>
                &nbsp;&nbsp;My Profile
              </a>
            </li>

            <li>
              <a href="page-pricing.html">
                <i class="fa fa-dollar"></i>
                &nbsp;&nbsp;Plans &amp; Billing
              </a>
            </li>

            <li>
              <a href="page-settings.html">
                <i class="fa fa-cogs"></i>
                &nbsp;&nbsp;Settings
              </a>
            </li>

            <li class="divider"></li>

            <li>
              <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <i class="fa fa-sign-out"></i>
                &nbsp;&nbsp;Logout
              </a>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
              </form>
            </li>
          </ul>
        </li>

      </ul>

    </div> <!--/.navbar-collapse -->
  </div> <!-- /.container -->
</div> <!-- /.navbar -->

@include('layouts.menu')


@yield('content')


<footer class="footer">


    <p style="text-align: center;">Copyright 2019 © abaacorp.com All rights reserved.</p>


</footer>

 <script src = "{{asset('scripts/js')}}/libs/jquery-3.2.1.min.js"></script>
  <script src="{{asset('scripts/js')}}/libs/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="{{asset('scripts/js')}}/libs/bootstrap.min.js"></script>

  <!--[if lt IE 9]>
  <script src="./{{asset('scripts/js')}}/libs/excanvas.compiled.js"></script>
  <![endif]-->

  <!-- Plugin JS -->

  <script src="{{asset('scripts/js')}}/plugins/select2/select2.js"></script>
  <script src="{{asset('scripts/js')}}/libs/raphael-2.1.2.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/morris/morris.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/sparkline/jquery.sparkline.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/fullcalendar/fullcalendar.min.js"></script>
  <script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
  {!! Toastr::message() !!}
    <script>
      @if($errors->any())
      @foreach($errors->all() as $error)
      toastr.error("{{ $error }}");
      @endforeach
      @endif
  </script>
  <!-- App JS -->
  <script src="{{asset('scripts/js')}}/target-admin.js"></script>

  <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/demos/dashboard.js"></script>
  <script src="{{asset('scripts/js')}}/demos/calendar.js"></script>
  <script src="{{asset('scripts/js')}}/demos/charts/morris/area.js"></script>
  <script src="{{asset('scripts/js')}}/demos/charts/morris/donut.js"></script>


@yield('js')
</body>

</html>

