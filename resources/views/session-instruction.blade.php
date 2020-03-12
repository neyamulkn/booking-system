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

  .counterWrap {
  padding: 30px;
  width: 100%;
}

.counter, .labelsq {
  display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flex;
    display: -o-flex;

}

.counter ul {
    display: -webkit-flex;
    display: -moz-flex;
    float: left !important;
    display: -ms-flex;
    display: -o-flex;
    margin: 0;

    padding: 0;
}

.counter > ul:after {
    content: ":";
    color: #2b373a9c;
    font-family: "GeometriaMedium";
    font-size: 30px;
    line-height: 33px;
    text-align: center;
    display: block;
    font-weight: bold;
    margin-left: 0px;
}
.counter > ul:last-of-type:after {
  content: "";
  margin: 0;
  padding: 0;
  width: 0;
}
.counter li {
    border: 1px solid #2b373a9c;
    margin-right: 3px;
    min-width: 30px;
    height: 30px;
    list-style: none;
    text-align: center;
    float: left;
    font-size: 25px;
    line-height: 1.2;
    font-family: "FiraSans";
    border-radius: 4px;
    box-shadow: 0 0 16px rgba(0, 0, 0, 0.2) inset;
    color: #2b373a9c;
}
.counter li:last-child {
  margin: 0;
}

.labelsq ul {
  display: flex;

  width: 100%;
  padding: 0;
  margin: 0;
}

.labelsq li {
  flex: 0 0 70px;
    max-width: 141px;
    text-align: center;
    font-family: "GeometriaMedium";
    font-size: 15px;
    line-height: 25px;
    list-style: none;
    color: #2b373a;

}

@media only screen and (max-width: 767px) {
  .counterWrap {
    width: 100%;
    max-width: 500px;
  }

  .counter ul {
    flex: 0 0 101px;
    max-width: 101px;
  }
  .counter ul li {
    width: 40px;
    min-width: 40px;
    height: 40px;
    font-size: 25px;
    line-height: 1.2;
  }

  .counter > ul:after {
    content: ":";
    font-size: 30px;
    line-height: 30px;
    padding-left: 0px;
  }

  .labelsq li {
    flex: 0 0 101px;
    max-width: 101px;
  }
}
@media only screen and (max-width: 575px) {
  .counterWrap {
    width: 100%;
    max-width: 400px;
  }

  .counter ul {
    flex: 0 0 81px;
  }
  .counter ul li {
    width: 30px;
    min-width: 30px;
    height: 30px;
    font-size: 25px;
    line-height: 1.2;
  }

  .counter > ul:after {
    content: ":";
    font-size: 30px;
    line-height: 30px;
    padding-left: 0px;
  }

  .labelsq li {
    flex: 0 0 81px;
    max-width: 81px;
    font-size: 18px;
  }
}
@media only screen and (max-width: 480px) {
  .counterWrap {
    width: 100%;
    max-width: 290px;
    padding: 30px 5px;
  }

  .counter ul {
    flex: 0 0 64px;

  }
  .counter ul li {
    width: 30px;
    min-width: 30px;
    height: 30px;
    font-size: 25px;
    line-height: 1.2;
  }

  .counter > ul:after {
    content: ":";
    font-size: 30px;
    line-height: 25px;
    padding-left: 0px;
  }

  .labelsq li {
    flex: 0 0 64px;
    max-width: 64px;
    font-size: 14px;
  }


</style>

<div class="container">

  <div class="content">

  <div class="content-container">
      <div class="row">

        <div class="col-md-8 ">
          <div class="portlet">
              <?php


              $date = \Carbon\Carbon::parse($booking_list->created_at)->format('m/d/Y');
              if($booking_list->gig_payment_type == 'monthly'){
                  $date = strtotime(date("m/d/Y", strtotime($date)) . " +1 month");
                  $date = date("m/d/Y", $date);
                  $date = $date." ".\Carbon\Carbon::parse($booking_list->created_at)->format('H:i:s');
              }else{
                  $date =  date('m/d/Y', strtotime($date. ' +6 days'));
                  $date = $date." ".\Carbon\Carbon::parse($booking_list->created_at)->format('H:i:s');
              }
              ?>
            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
                <div class="tab-pane fade in active" id="getBookingList">
                    <div class="pull-left">
                      <h4>
                          <i class="fa fa-file-text-o"></i> SESSION START INSTRUCTIONS
                      </h4>
                      <i class="fa fa-clock-0"> </i> Session Time: {{ Carbon\Carbon::parse($booking_list->startTime)->format('g:i').'-'.Carbon\Carbon::parse($booking_list->endTime)->format('g:i A') }}
                    </div>
                     <!--  <div class="pull-right">
                        <p>Session Start Remaining Time </p>
                        <div class="counter"></div>
                        <div class="labelsq"><ul><li>Days</li><li>Hours</li><li>Minutes</li><li>Seconds</li></ul></div>
                        <div style="display:none;" id="dataSet">
                               <?php echo  $date;  ?>
                            </div>
                      </div> -->
                       <div class="clear"></div>
                    <hr/>
                    <div class="panel-thread">
                      <div class="instructions">
                      <ul>
                        <li>Number of questions: </li>
                        <li>Total Marks: </li>
                        <li>Has time limit.</li>
                        <li>Must be finished in one sitting. You cannot save and finish later.</li>
                        <li>Questions displayed per page: <strong>5</strong></li>
                        <li>Will allow you to go back and change your answers.</li>
                        <li>Click on Start button to start the test</li>
                        <li>After the test starts, don’t press back or refresh button or don’t close the browser window</li>
                      </ul>

                      <h4>Contact Requirements </h4>
                       <hr/>
                      <ul>
                        <li>Wechat Id, Skype ID, Facebook, QQ ID, Firefox 1, or Google Chrome are required to log into the session</li>
                      </ul>

                      <h4>Support </h4>
                       <hr/>
                      <ul>
                        <li>If you have any questions, please contact the  email support@abaacorp.com.</li>
                      </ul>

                      <div class="pull-right">
                        <button type="button" class="btn btn-secondary">Start Now</button>
                      </div>
                    </div>
                    </div> <!-- /.portlet-content -->
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

        </div> <!-- /.col -->

      </div> <!-- /.row -->

    </div> <!-- /.content-container -->

  </div> <!-- /.content -->

</div> <!-- /.container -->

<div id="basicModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3 class="modal-title">Contacts</h3>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">

            <tbody>

              <span id="get-contacts"></span>

            </tbody>
          </table>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

@endsection

@section('js')
  <script src="{{asset('scripts/js')}}/plugins/datepicker/bootstrap-datepicker.js"></script>

    <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/demos/form-extended.js"></script>
  <script>
      function getContact(id) {
          $.ajax({
              url:'{{route('contactList')}}',
              method:"get",
              data:{
                  id:id
              },
              success:function(data){
                if(data){
                  $('#get-contacts').html(data);
                }
              }
          });
      }
  </script>

  <script type="text/javascript">

    function colorToggle(id){
        if($("#"+id).is(":checked")) {
            $("#label"+id).removeClass('active');
        } else {
            $("#label"+id).addClass('active');
        }
      }

  </script>
<script>
  ;(function ($) {

  $.fn.countdown = function(options){
    //global variables
    var vars = $.extend({}, $.fn.countdown.defaults, options),
        $counter = $(this),
        t = {day: 0, hour: 0, minute: 0, sec: 0},
        targetDate = new Date(vars.targetDate).getTime(),
        secondsLeft;

    //private methods
    methods = {
      setup: function () {

        $.each(t, function(time, value){
          var currentSection = '<ul id="'+time+'"><li>0</li><li>0</li></ul>';
          $counter.append(currentSection);
        });

        if (vars.labels) {
          //var labelHtml = '<div class="labels"><ul><li>Days</li><li>Hours</li><li>Minutes</li><li>Seconds</li></ul></div>';
                  var labelHtml = document.querySelector('.labelsq');
          $counter.append(labelHtml);
        }

      },

      updateTime: function(){
        var currentTime = new Date().getTime(),
            secondsLeft = (targetDate - currentTime) / 1000,
            secsIn = {day: 86400, hour: 3600, minute: 60};

        if (secondsLeft < 0) {secondsLeft = 0;}

        $.each(t, function(timePeriod, value){
          t[timePeriod] = parseInt( (secondsLeft / secsIn[timePeriod]), 10);
          if (timePeriod !== 'sec'){
           secondsLeft = secondsLeft % secsIn[timePeriod];
          }
          else {
            t[timePeriod] = secondsLeft;
          }
        });
      },

      updateCounter: function() {
        $.each(t, function(period, value){
          var section = $counter.find('#'+period).children(),
              digit = splitDigits(value);

          section.eq(0).html(digit[0]);
          section.eq(1).html(digit[1]);
        });

        function splitDigits(number) {
          var digits = [];
          digits[0] = Math.floor(number / 10);
          digits[1] = Math.floor(number % 10);
          return digits;
        }
      },

      tick: function () {
        if (secondsLeft < 1) {}
        else {
          methods.updateTime();
          methods.updateCounter();
          setTimeout(function() {methods.tick();}, 1000);
        }
      },

      init: function () {
        methods.setup();
        methods.updateTime();
        methods.updateCounter();
        methods.tick();
      },
    };

    //initiate countdown
    methods.init();
  };

  $.fn.countdown.defaults = {
    targetDate: '',    //string: the date you want the counter to count down to.
    labels:     true              //boolean: toggles the {day / hour / minute / second} labels
  };
}(jQuery));
// end of countdown plugin



$(function() {
  //дата берется из html
  var setData = document.querySelector('#dataSet').innerHTML;
  var newDate = new Date(setData);
  $('.counter').countdown({
        targetDate: newDate,
        labels: false
    });
});
</script>

<script>
    var deadline = new Date(" <?php echo  $date;  ?>").getTime();
    var x = setInterval(function() {
    var now = new Date().getTime();
    var t = deadline - now;
    var days = Math.floor(t / (1000 * 60 * 60 * 24));
    var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60));
    var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((t % (1000 * 60)) / 1000);

        if (t < 0) {
            clearInterval(x);
            document.getElementById("expired_time").innerHTML = '<span >Time Expired</span><br/><button class="btn btn-success btn-sm" value="extra_time" name="order_review_time" type="submit">Extra Time</button> <button class="btn btn-success btn-sm" value="cancel" name="order_review_time" type="submit">Chancal Order</button>';
        }
    }, 1000);
</script>

@endsection
