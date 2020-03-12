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

                <div id="myTab1Content" class="tab-content">
                    <div class="tab-pane fade in active" id="Schedule">
                        @include('teacher.calender')
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
