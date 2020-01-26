<div class="mainbar">

  <div class="container">

    <button type="button" class="btn mainbar-toggle" data-toggle="collapse" data-target=".mainbar-collapse">
      <i class="fa fa-bars"></i>
    </button>

    <div class="mainbar-collapse collapse">

      <ul class="nav navbar-nav mainbar-nav">

        <li class="active">
          <a href="{{url('/')}}">
            <i class="fa fa-dashboard"></i>
            Dashboard
          </a>
        </li>

        
        <li class="dropdown ">
          <a href="{{route('bookingList')}}" >
            <i class="fa fa-calendar"></i>
            Scheduler
          </a>
        </li>

        <li class="dropdown ">
          <a href="{{route('students')}}" >
            <i class="fa fa-align-left"></i>
            Students
          </a>
        </li>

        <li class="dropdown ">
          <a href="{{route('class_records')}}" >
            <i class="fa fa-align-left"></i>
            Class Records
          </a>
        </li>
  
        <li class="dropdown ">
          <a href="{{route('package.create')}}" >
            <i class="fa fa-files-o"></i>
            Packages
          </a>
        </li>

        <li class="dropdown ">
          <a href="#contact" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
            <i class="fa fa-external-link"></i>
            Settings
            <span class="caret"></span>
          </a>

          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="{{route('package.create')}}">
              <i class="fa fa-setting"></i> 
              &nbsp;&nbsp;Set Package
              </a>
             </li>     
              <li>
              <a href="page-notifications.html">
              <i class="fa fa-bell"></i> 
              &nbsp;&nbsp;Notifications
              </a>
            </li>     

            <li>
              <a href="ui-icons.html">
              <i class="fa fa-smile-o"></i> 
              &nbsp;&nbsp;Font Icons
              </a>
            </li> 

            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">
              <i class="fa fa-ban"></i> 
              &nbsp;&nbsp;Error Pages
              </a>

              <ul class="dropdown-menu">
                <li>
                  <a href="page-404.html">
                  <i class="fa fa-ban"></i> 
                  &nbsp;&nbsp;404 Error
                  </a>
                </li>

                <li>
                  <a href="page-500.html">
                  <i class="fa fa-ban"></i> 
                  &nbsp;&nbsp;500 Error
                  </a>
                </li>
              </ul>
            </li>

            <li class="dropdown-submenu">

              <a tabindex="-1" href="#">
              <i class="fa fa-lock"></i> 
              &nbsp;&nbsp;Login Pages
              </a>

              <ul class="dropdown-menu">
                <li>
                  <a href="account-login.html">
                  <i class="fa fa-unlock"></i> 
                  &nbsp;&nbsp;Login
                  </a>
                </li>

                <li>
                  <a href="account-login-social.html">
                  <i class="fa fa-unlock"></i> 
                  &nbsp;&nbsp;Login Social
                  </a>
                </li>

                <li>
                  <a href="account-signup.html">
                  <i class="fa fa-star"></i> 
                  &nbsp;&nbsp;Signup
                  </a>
                  </li>

                <li>
                  <a href="account-forgot.html">
                  <i class="fa fa-envelope"></i> 
                  &nbsp;&nbsp;Forgot Password
                  </a>
                </li>
              </ul>
            </li> 

            <li class="divider"></li>

            <li>
              <a href="page-blank.html">
              <i class="fa fa-square-o"></i> 
              &nbsp;&nbsp;Blank Page
              </a>
            </li> 

          </ul>
        </li>

      </ul>

    </div> <!-- /.navbar-collapse -->   

  </div> <!-- /.container --> 

</div> <!-- /.mainbar -->
