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

  #loadtime{
    background: url("{{asset('images/loader.gif')}}");
    background-repeat: no-repeat;
    background-position: center;
    background-color: #00000005;
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    z-index: 999;   
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
                <li >
                  <a href="#getBookingList"  data-toggle="tab">Booking Calender</a>
                </li>
                <li class="active">
                  <a href="#Schedule"  data-toggle="tab" > Teaching Schedule</a>
                </li>
                 <li>
                  <a href="{{route('class_records')}}" > Class Records</a>
                </li><li>
                  <a href="#Attendance"  data-toggle="tab"> Attendance Page</a>
                </li>
              </ul>
            </div>
            <div class="portlet-content">

                <div id="myTab1Content" class="tab-content">
                    <div class="tab-pane fade in active" id="Schedule">
                        @include('teacher.calender')
                    </div>
                    <div class="tab-pane fade in" id="getBookingList">
                        <div class="pull-left">
                            <h4>
                                <i class="fa fa-file-text-o"></i>
                                {{Carbon\Carbon::parse(now())->format('d M, Y D')}}
                            </h4>
                        </div>
                        <div class="pull-right">
                            <button type="button" class="btn btn-secondary">Refresh</button>
                        </div>
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
        </div> <!-- /.col -->



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
                 @include('common.calender-sitebar')

              </div>


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
        $("#label"+id).removeClass('booked');
    } else {
        $("#label"+id).addClass('active');
    }
  }

  $(document).ready(function(){
      get_timeSlot('{{ (Session::get("slotDate") ) ? Session::get("slotDate") : date("Y-m-d")}}');
  });

  $('tr td').click(function() {
      $('td').removeClass('today');
      $(this).addClass('today');
  });

  </script>



@endsection
