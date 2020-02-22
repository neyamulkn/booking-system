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
    @include('student.menubar')
    <div class="container">

        <div class="content">

            <div class="content-container">
                <div class="row">

                    <div class="col-md-8 ">
                        <div class="portlet">
                            <div class="portlet-header">
                                <ul id="myTab1" class="nav nav-pills">
                                    <li class="active">
                                        <a href="#getBookingList"  data-toggle="tab">Booking Calender</a>
                                    </li>
                                    <li>
                                        <a href="#Schedule"  data-toggle="tab"> Teaching Schedule</a>
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
                                                {{Carbon\Carbon::parse(now())->format('d M, Y l')}}
                                            </h4>
                                        </div>
                                        <div class="pull-right">
                                            <button type="button" class="btn btn-secondary">Refresh</button>
                                        </div>
                                        <div class="clear"></div>
                                        <hr/>
                                        <div class="panel-thread">
                                            <ul class="panel-lists">
                                                <!--  -->
                                              </ul>
                                        </div> <!-- /.portlet-content -->

                                    </div>

                                    <div class="tab-pane fade" id="Schedule">
                                        <div class="">

                                            @include('student.calender')
                                        </div> <!-- /#area-chart -->

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
                                        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>

                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</p>
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
                $("#label"+id).removeClass('ownbooked');
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
