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

    <div class="container">

        <div class="content">

            <div class="content-container">
                <div class="row">

                    <div class="col-md-8 ">
                        <div class="portlet">
                            <div class="portlet-content">
                                @include('student.calender')  
                            </div>
                        </div>

                    </div> <!-- /.col -->

                    <div class="col-md-4">

                        <div class="portlet">

                            <div class="portlet-header">

                                <h3>
                                    <i class="fa fa-bar-chart-o"></i>
                                    Calender
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
