<style type="text/css">
  .course-metetial span{
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
            <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
            <div class="panel-list-content course-metetial">
                <p class="panel-list-meta"> <strong>Name:</strong> {{$booking_list->user->name}} <span style="float: right;"><strong>Class Type:</strong> Group Class</span></p>
                <a class="panel-list-title"><strong>Course : </strong> Proin malesuada consectetur lectus.</a>
                
                <div ><strong>Download:</strong>
                  <span class="label label-info"> PPT Slide </span>  
                  <span class="label label-info"> PPT Slide </span>  </div>
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
