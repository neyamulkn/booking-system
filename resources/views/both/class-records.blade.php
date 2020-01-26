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
  .modal ul {padding: 10px;}


/****** Style Star Rating Widget *****/
#feeback ul li{
  margin-bottom: 15px;
  list-style: none;
}

.rating { 
  border: none;
  float: left;
  margin:0px 0px 0px 28px;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin-top: 2px;
  padding:0px 5px 0px 5px;
  font-size: 14px;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
    color: #fff; 
    float: right;
    margin:4px 1px 0px 0px;
    color:#D8D8D8;
    border-radius:15px;

}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label ,
.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { 
    color:#FEC42D !important;
  cursor:pointer;
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
                <li>
                  <a href="#getBookingList"  data-toggle="tab" >Booking Calender</a>
                </li>
                <li>
                  <a href="{{route('timeSlotCalender')}}" > Teaching Schedule</a>
                </li>
                 <li class="active">
                  <a href="#Records"  data-toggle="tab"> Class Records</a>
                </li><li>
                  <a href="#Attendance"  data-toggle="tab"> Attendance Page</a>
                </li>
              </ul>
            </div>
            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
                <div class="tab-pane fade " id="getBookingList">
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
               
                <div class="tab-pane fade in active" id="Records">
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
                                    <td>08:30<br/>09:00</td>
                                    <td>Larry</td>
                                    <td>Smith</td>
                                    <td>Smith</td>
                                    <td>@lsmith</td>
                                    <td><span class="label label-default" data-toggle="modal" href="#feeback" >View Comment</span></td>
                                    <td>
                                        <span class="label label-default" data-toggle="modal" href="#feeback" >View Comment</span>
                                    </td>
                                </tr>
                            
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="Attendance">
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
                                    <td>Comment</td>
                                    <td><span class="label label-primary"><a  data-toggle="modal" href="#feeback"></a>View Comment</span></td>
                                    <td>
                                        <span class="label label-primary"><a  data-toggle="modal" href="#feeback"></a>View Comment</span>
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
<div id="feeback" class="modal fade">
  <div class="modal-dialog">
    <form action="{{route('feeback')}}" method="post">
      @csrf
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3 class="modal-title">Class Feeback</h3>
      </div>
      <div class="modal-body">
        <ul>
          @foreach($rattings as $ratting)
            <li>
              <strong>{{$ratting->title}}</strong><br/>
             {{$ratting->summary}}
             <input type="hidden" name="ratingType[]" value="{{$ratting->id}}">
             <fieldset class="rating" style="float: right;">
                  @for($i=3; $i>=1; $i--)
                  <input type="radio" id="rating{{$i}}" name="rating[]" value="{{$i}}" />
                  <label class = "full" title="Star {{$i}}"  for="rating{{$i}}"></label>
                  @endfor
              </fieldset>
            </li>
          @endforeach
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Give Feedback</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

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
<script type="text/javascript">
    $("label").click(function(){
    $(this).parent().find("label").css({"color": "#D8D8D8"});
    $(this).css({"color": "#FEC42D"});
    $(this).nextAll().css({"color": "#FEC42D"});
  });
</script>

@endsection
