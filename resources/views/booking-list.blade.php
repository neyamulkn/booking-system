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

<div class="container">

  <div class="content">

  <div class="content-container">
      <div class="row">

        <div class="col-md-8 ">
          <div class="portlet">

            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
                <div class="tab-pane fade in active" id="getBookingList">
                    <div class="pull-left">
                      <h4>
                          <i class="fa fa-file-text-o"></i>  {{Carbon\Carbon::parse($slotDate)->format('d M, Y D')}}
                      </h4>
                    </div>
                    <div class="pull-right">
                      <button type="button" class="btn btn-secondary">Refresh</button>

                    </div>
                    <div class="clear"></div>
                    <hr/>
                    <?php

                    ?>
                    <div class="panel-thread">

                      <ul class="panel-lists">
                      @if(count($booking_lists)>0)
                        @foreach($booking_lists as $booking_list)
                        <li>

                        </li>
                        <li>
                          <div class="row">
                            <div class="col-xs-10">
                              <div class="row">
                                <div class="col-xs-4"><strong>Session Time</strong><br/>  {{ Carbon\Carbon::parse($booking_list->bookingSlot->startTime)->format('g:i').'-'.Carbon\Carbon::parse($booking_list->bookingSlot->endTime)->format('g:i A') }}</div>
                                <div class="col-xs-4 col-sm-3">  <strong>Duration</strong><br/> 30 Minutes </div>
                                <div class="col-sm-5 col-xs-12" style="text-align: center;"><strong> Commulative Number</strong><br/> 40 </div>
                              </div>
                              <img src="{{asset('images/users/avaters/'. $booking_list->user->image )}}" alt="Avatar" class="panel-list-avatar">
                              <div class="panel-list-content course-metetial">
                                  <p class="panel-list-meta"> <strong>Name:</strong>
                                     <a href="{{route('profile', $booking_list->user->username) }}"> {{$booking_list->user->name}} </a>
                                    <span style="float: right;"><strong>Session Type:</strong> Group Class</span>
                                  </p>
                                  <!-- <a class="panel-list-title"><strong>Course : </strong>@if($booking_list->ClassMaterials) nai @else Course not set @endif</a>-->
                                  <div><strong>Download:</strong>
                                    @if($booking_list->ClassMaterials)
                                    @foreach($booking_list->ClassMaterials as $material)
                                    <a href="{{ asset('materials/'.$material->teachingMaterial->course_material) }} " target="_blank" class="label label-info"> {{$material->teachingMaterial->course_name}} </a>
                                    @endforeach
                                    <a href="{{route('teaching.material', [$booking_list->id])}}" target="_blank" class="label label-info">Change Teaching Materails </a>
                                    @else

                                    <a href="{{route('teaching.material', [$booking_list->id])}}" target="_blank" class="label label-info">Add Teaching Materails </a>
                                    @endif
                                  </div>
                              </div>
                            </div>
                            <div class="col-xs-2">
                              <a style="width: 100%;border: 1px solid #ccc; margin-bottom: 5px;" href="{{route('bookingSessionIns', $booking_list->id)}}" target="_blank" class="btn btn-defualt">Start</a>
                              <a onclick="getContact({{$booking_list->id}})" data-toggle="modal" href="#PreferredTool" class="btn btn-secondary btn-sm">Preferred Tool</a>
                            </div>
                          </div>
                        </li>
                        @endforeach

                      @else
                        <h3>{{ __('lang.noBooking') }}</h3>
                      @endif

                      </ul>
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

<div id="PreferredTool" class="modal fade">
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
        alert(id);
          $.ajax({
              url:"{{route('contactList')}}",
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


@endsection
