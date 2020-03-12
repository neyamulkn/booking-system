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

<div class="container">

  <div class="content">

  <div class="content-container">
      <div class="row">

        <div class="col-md-12">
          <div class="portlet">
            
            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
               
               
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
                                    <th>Session Date</th>
                                    <th>Session Day</th>
                                    <th>Session Time</th>
                                    @if($role != env('TEACHER'))
                                    <th>Teacher Name</th>
                                    @else
                                    <th>Client Name</th>
                                    @endif
                                    <th>Client Status</th>
                                    <th>Session Type</th>
                                    <th>Host Status</th>
                                    <th>Client Comment</th>
                                    <th>Host Comment</th>
                                </tr>
                                </thead>
                                <tbody>
                                  @if(count($get_records)>0)
                                    @foreach($get_records as $record)
                                    <tr>
                                        <td>{{Carbon\Carbon::parse($record->slote_date)->format('d M, Y')}}</td>
                                        <td>{{Carbon\Carbon::parse($record->slote_date)->format('l')}}</td>
                                        <td>{{Carbon\Carbon::parse($record->startTime)->format('h:m').' - '.Carbon\Carbon::parse($record->endTime)->format('h:m')}}</td>
                                        <td>{{ ( $role == env('TEACHER')  ? $record->user->name :  $record->user->name ) }}</td>
                                        <td>N/A</td>
                                        <td>Single</td>
                                        <td>N/A</td>
                                        <td><span class="label label-default" data-toggle="modal" href="#feeback" >View Comment</span></td>
                                        <td>
                                            <span class="label label-default" data-toggle="modal" href="#feeback" >View Comment</span>
                                        </td>
                                    </tr>
                                    @endforeach
                                  @endif
                                </tbody>

                            </table>
                            <div style="text-align: right;">
                              {{$get_records->links()}}
                            </div>
                        </div>
                    </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>

        
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
                  <input type="radio" id="{{$ratting->id}}rating{{$i}}" name="rating[{{$ratting->id}}]" value="{{$i}}" />
                  <label class = "full" title="Star {{$i}}"  for="{{$ratting->id}}rating{{$i}}"></label>
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
