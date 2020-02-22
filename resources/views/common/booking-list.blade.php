<style type="text/css">
  .course-metetial a{
    margin:5px;
}

</style>
<div class="pull-left">
  <h4>
    <i class="fa fa-file-text-o"></i>
    {{Carbon\Carbon::parse($slotDate)->format('d M, Y D')}}
  </h4>
</div>
<div class="pull-right">
  <button type="button" class="btn btn-secondary">Refresh</button>
</div>
<div class="clear"></div>
<hr/>
<div class="panel-thread">

  <ul class="panel-lists">
    @if(count($booking_lists)>0)
      @foreach($booking_lists as $booking_list)
      <li>
        <div class="row">
          <div class="col-xs-10">
            <div class="row">
              <div class="col-xs-4"><strong>Dhaka Time</strong><br/>  {{$booking_list->slotTime}}</div>
              <div class="col-xs-4 col-sm-3">  <strong>Duration</strong><br/> 30 Minutes </div>
              <div class="col-sm-5 col-xs-12" style="text-align: center;"><strong> Commulative Number</strong><br/> 40 </div>
            </div>
            <img src="{{asset('images/users/avaters/'.$booking_list->user->image)}}" alt="Avatar" class="panel-list-avatar">
            <div class="panel-list-content course-metetial">
                <p class="panel-list-meta"> <strong>Name:</strong> {{$booking_list->user->name}} <span style="float: right;"><strong>Class Type:</strong> Group Class</span></p>
                <!-- <a class="panel-list-title"><strong>Course : </strong>@if($booking_list->ClassMaterials) nai @else Course not set @endif</a>
 -->
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
            <a style="width: 100%;border: 1px solid #ccc; margin-bottom: 5px;" href="#" class="btn btn-defualt">Start</a>
            <a href="#" class="btn btn-secondary">Comment</a>
          </div>
        </div>
      </li>
      @endforeach
    @else
      <h3>{{ __('lang.noBooking') }}</h3>
    @endif

  </ul>
</div> <!-- /.portlet-content -->
