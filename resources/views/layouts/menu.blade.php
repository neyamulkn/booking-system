<div class="mainbar">

  <div class="container">

    <button type="button" class="btn mainbar-toggle" data-toggle="collapse" data-target=".mainbar-collapse">
      <i class="fa fa-bars"></i>
    </button>

    <div class="mainbar-collapse collapse">

      <ul class="nav navbar-nav mainbar-nav">

        <li class="{{ (request()->is('dashboard')) ? 'active' : ''  }}">
          <a href="{{route('dashboard')}}">
            <i class="fa fa-dashboard"></i>
            Dashboard
          </a>
        </li>

        @if(Auth::user()->user_roleID == env('TEACHER'))
        <li class="{{ (Request::segment(1) == 'calender') ? 'active' : ''  }}">
          <a href=" {{route('timeSlotCalender')}}" >
            <i class="fa fa-calendar"></i>
           Calender
          </a>
        </li>
        @else
        <li class="{{ (Request::segment(1) == 'calender') ? 'active' : ''  }}">
          <a href="{{route('booking.index')}}" >
            <i class="fa fa-calendar"></i>
           Calender
          </a>
        </li>
        @endif

        <li class="{{ (Request::segment(1) == 'booking') ? 'active' : ''  }} ">
          <a href="{{route('bookingList')}}" >
            <i class="fa fa-clock-o"></i>
            Time Slots
          </a>
        </li>



        <li class="{{ ( Request::segment(1) == 'client') ? 'active' : ''  }} ">
          <a href="{{route('students')}}" >
            <i class="fa fa-users"></i>
            Clients
          </a>
        </li>

        <li class="{{ (Request::segment(1) == 'class') ? 'active' : ''  }} ">
          <a href="{{route('class_records')}}" >
            <i class="fa fa-history"></i>
            Session History
          </a>
        </li>

       <!--  <li class="dropdown ">
          <a href="{{route('package')}}" >
            <i class="fa fa-files-o"></i>
            Packages
          </a>
        </li> -->
        <li class="{{ (Request::segment(1) == 'teaching') ? 'active' : ''  }} ">
          <a href="{{route('teaching.material')}}" >
            <i class="fa fa-files-o"></i>
            Resources
          </a>
        </li>

        <li class="dropdown {{ (Request::segment(1) == 'package') ? 'active' : ''  }} ">
          <a href="#contact" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
            <i class="fa fa-list"></i>
            Package
            <span class="caret"></span>
          </a>

          <ul class="dropdown-menu" role="menu">
            @if( Auth::user()->user_roleID == env('TEACHER'))
            <li>
              <a href="{{route('package.create')}}">
            
              &nbsp;&nbsp;Set Package
              </a>
             </li>
            @endif
             <li>
              <a href="{{route('package')}}">
             
              &nbsp;&nbsp; Package List
              </a>
             </li>
            <li>
              <a href="{{route('purchaseList')}}">
              
              &nbsp;&nbsp;Purchase history
              </a>
            </li>

          </ul>
        </li>

        <li class="dropdown ">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
            <i class="fa fa-external-link"></i>
            Settings
            
          </a>

         
        </li>

      </ul>

    </div> <!-- /.navbar-collapse -->

  </div> <!-- /.container -->

</div> <!-- /.mainbar -->
