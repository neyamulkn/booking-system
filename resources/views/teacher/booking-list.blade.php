@extends('layouts.master')

@section('css')
  <link rel="stylesheet" href="{{asset('scripts')}}/js/plugins/datepicker/datepicker.css">

@endsection

@section('content')
<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
  }

  .class-record tr th{
    padding:10px 3px !important;
  }
</style>
@include('teacher.menubar')
<div class="container">

  <div class="content">

  <div class="content-container">
      <div class="row">

        <div class="col-md-8 ">
          <div class="portlet">
            <div class="portlet-header">
                <ul id="myTab1" class="nav nav-pills">
                <li class="active">
                  <a href="{{route('bookingList')}}" >Booking Calender</a>
                </li>
                <li>
                  <a href="{{route('timeSlotCalender')}}" > Teaching Schedule</a>
                </li>
                 <li>
                  <a href="#Records"  data-toggle="tab"> Class Records</a>
                </li><li>
                  <a href="#Attendance"  data-toggle="tab"> Attendance Page</a>
                </li>
              </ul>
            </div>
            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
                <div class="tab-pane fade in active" id="getBookingList">
                    <div class="pull-left">
                      <h4>
                            <i class="fa fa-file-text-o"></i>
                            {{Carbon\Carbon::parse(now())->format('d M, Y D')}}
                      </h4>
                    </div>
                    <div class="pull-right">
                      <button type="button" class="btn btn-secondary">Refresh</button>
                    </div>
                    <div class="clear"></div>
                    <hr/>
                    <div class="panel-thread">

                      <ul class="panel-lists">
                        @if($booking_lists)
                        @foreach($booking_lists as $booking_list)
                        <li>
                          <div class="row">
                            <div class="col-xs-10">
                              <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                              <div class="panel-list-content">
                                  <span> <strong>Name:</strong> {{$booking_list->user->name}} <span style="float: right;"><strong>Class Type:</strong> Group Class</span></span>
                                  <a class="panel-list-title"><strong>Course : </strong> Proin malesuada consectetur lectus.</a>
                                  <span class="panel-list-meta"><strong>Dhaka Time :</strong>  {{$booking_list->slotTime}} |  <strong> Duration:</strong> 30 Minutes | <strong>Commulative Number:</strong> 40 </span>
                              </div>
                            </div>
                            <div class="col-xs-2">
                              <a style="width: 100%;border: 1px solid #ccc; margin-bottom: 5px;" href="#" class="btn btn-defualt">Start</a>
                              <a href="#" class="btn btn-secondary">Comment</a>
                            </div>
                          </div>
                        </li>
                        @endforeach
                        @endif

                      </ul>
                    </div> <!-- /.portlet-content -->

                </div>
                
                <div class="tab-pane fade" id="Records">
                    <p><strong><i class="fa fa-calendar"></i> Class Records</strong></p>
                    <div class="row">
                        <div class="col-sm-4">
                            <span>From</span>
                            <div id="dp-ex-3" class="input-group date" data-auto-close="true" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-autoclose="true">
                                <input class="form-control" type="text">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <span>To</span>
                            <div id="dp-ex-4" class="input-group date" data-auto-close="true" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-autoclose="true">
                                <input class="form-control" type="text">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-sm-4">

                            <div style="padding-top: 25px;">
                                <label class="radio-inline">
                                    <input type="radio" name="inline_optionsRadios" id="inline_optionsRadios1" value="option1">
                                    All
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="inline_optionsRadios" id="inline_optionsRadios2" value="option2" checked="">
                                    No Comment
                                </label>

                            </div>
                        </div>
                    </div> <!-- /.col --><br/>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-highlight class-record">
                                <thead>
                                <tr>
                                    <th>Class Time</th>
                                    <th>Lesson</th>
                                    <th>Student/School</th>
                                    <th>Class Type</th>
                                    <th>Teacher Status</th>
                                    <th>Teacher's Comments</th>
                                    <th>Student's Comments</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Larry</td>
                                    <td>Smith</td>
                                    <td>Smith</td>
                                    <td>@lsmith</td>
                                    <td>@lsmith</td>
                                    <td>
                                        <span class="label label-primary">Approved</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Mark</td>
                                    <td>Mark</td>
                                    <td>Williams</td>
                                    <td>Williams</td>
                                    <td>@mwills</td>
                                    <td>
                                        <span class="label label-secondary">Pending</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Jeremy</td>
                                    <td>Jones</td>
                                    <td>Jones</td>
                                    <td>@jj</td>
                                    <td>@jj</td>
                                    <td>
                                        <span class="label label-success">Success</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Carlos</td>
                                    <td>Carlos</td>
                                    <td>Martin</td>
                                    <td>Martin</td>
                                    <td>@cmar</td>
                                    <td>
                                        <span class="label label-default">Suspended</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="Attendance">
                   
                    <div class="row">
                        <div class="col-sm-4">
                            <span>From</span>
                            <div id="dp-ex-3" class="input-group date" data-auto-close="true" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-autoclose="true">
                                <input class="form-control" type="text">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <span>To</span>
                            <div id="dp-ex-4" class="input-group date" data-auto-close="true" data-date="12-02-2012" data-date-format="dd-mm-yyyy" data-date-autoclose="true">
                                <input class="form-control" type="text">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            </div>
                        </div>
                        <div class="col-sm-3">

                            <div style="padding-top: 25px;">
                                <button class="btn-secondary ">
                                    Ask for leave
                                </button>
                            </div>
                        </div>
                    </div> <!-- /.col --><br/>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-highlight class-record">
                                <thead>
                                <tr>
                                    <th>Events</th>
                                    <th>Number of classes</th>
                                    <th>Hours</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Total open time</td>
                                    <td>1 view</td>
                                    <td>5</td>
                                   
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
              </div>
          </div>
        </div>
        </div>

        <div class="col-md-4">

          <div class="portlet">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-bar-chart-o"></i>
                Donut Chart
              </h3>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content">

              <div class="sitebar">
                 @include('both.calender-sitebar')

              </div>


            </div> <!-- /.portlet-content -->

          </div> <!-- /.portlet -->



          <div class="portlet">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-compass"></i>
                Traffic Overview
              </h3>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content">

              <div class="progress-stat">

                <div class="progress-stat-label">
                  % New Visits
                </div> <!-- /.stat-label -->

                <div class="progress-stat-value">
                  77.7%
                </div> <!-- /.stat-value -->

                <div class="progress progress-striped active">
                  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%">
                    <span class="sr-only">77.74% Visit Rate</span>
                  </div>
                </div> <!-- /.progress -->

              </div> <!-- /.progress-stat -->


              <div class="progress-stat">

                <div class="progress-stat-label">
                  % Mobile Visitors
                </div> <!-- /.stat-label -->

                <div class="progress-stat-value">
                  33.2%
                </div> <!-- /.stat-value -->

                <div class="progress progress-striped active">
                  <div class="progress-bar progress-bar-tertiary" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                    <span class="sr-only">33% Mobile Visitors</span>
                  </div>
                </div> <!-- /.progress -->

              </div> <!-- /.progress-stat -->


              <div class="progress-stat">

                <div class="progress-stat-label">
                  Bounce Rate
                </div> <!-- /.stat-label -->

                <div class="progress-stat-value">
                  42.7%
                </div> <!-- /.stat-value -->

                <div class="progress progress-striped active">
                  <div class="progress-bar progress-bar-secondary" role="progressbar" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100" style="width: 42%">
                    <span class="sr-only">42.7% Bounce Rate</span>
                  </div>
                </div> <!-- /.progress -->

              </div> <!-- /.progress-stat -->

            </div> <!-- /.portlet-content -->

          </div> <!-- /.portlet -->




          <div class="portlet">

            <div class="portlet-header">
              <h3>
                <i class="fa fa-bar-chart-o"></i>
                Sparkline
              </h3>
            </div> <!-- /.portlet-header -->

            <div class="portlet-content">

              <div class="row row-marginless">

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="total-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">1,564</span>
                  <h5 class="spark-stat-label">Total Visits</h5>

                </div> <!-- /.col -->

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="new-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">872</span>
                  <h5 class="spark-stat-label">New Visits</h5>

                </div> <!-- /.col -->

              </div> <!-- /.row -->


              <div class="row row-marginless">

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="unique-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">845</span>
                  <h5 class="spark-stat-label">Unique Visits</h5>

                </div> <!-- /.col -->

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="revenue-visits" data-bar-color="#c00">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">$13,492</span>
                  <h5 class="spark-stat-label">Revenue Visits</h5>

                </div> <!-- /.col -->

              </div> <!-- /.row -->

            </div> <!-- /.portlet-content -->

          </div> <!-- /.portlet -->

        </div> <!-- /.col -->

      </div> <!-- /.row -->

    </div> <!-- /.content-container -->

  </div> <!-- /.content -->

</div> <!-- /.container -->

@endsection

@section('js')
  <script src="{{asset('scripts/js')}}/plugins/datepicker/bootstrap-datepicker.js"></script>

    <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/demos/form-extended.js"></script>


  <script type="text/javascript">
        function colorToggle(id){


    if($("#"+id).is(":checked")) {
        $("#label"+id).removeClass('active');
    } else {
        $("#label"+id).addClass('active');
    }
  }
  </script>


@endsection
