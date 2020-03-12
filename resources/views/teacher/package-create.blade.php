@extends('layouts.master')
@section('css')
 <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">
@endsection
@section('content')

<div class="container">

  <div class="content">

    <div class="content-container">

      <div class="content-header">
        <h2 class="content-header-title">Set Package Plan</h2>
        <ol class="breadcrumb">
          <li><a href="#">Setting</a></li>
          <li class="active">Package Plan</li> 
        </ol>
      </div> <!-- /.content-header -->

      <?php
      

//                 $dates = date('Y-m-d H:i:s', strtotime(now()));
              

//                  $db_zone = 'America/Los_Angeles';//PST time

// $client_zone = 'Asia/Dhaka';

// $db_time = DateTime::createFromFormat(

// 'Y-m-d H:i:s', $dates, new DateTimeZone($db_zone));

// $date = $db_time->setTimeZone(new DateTimeZone($client_zone));

// echo $date->format('d M y h:i:s A');
                 ?>

      <div class="portlet">

        <div class="portlet-content">
          <form action="{{ route('package.store') }}" class="floating-labels" method="post">
            @csrf
          <div class="row">

            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
              <div class="form-group">

                <label for="packageName">Plan Name</label>
                <input type="text" required name="packageName" id="packageName" class="form-control">
              </div>
            </div> <!-- /.col -->

            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
               <div class="form-group">
                  <label for="class_no">Number Of Session</label>
                  <input type="number" required name="class_no" id="class_no" class="form-control">
                </div>
            </div> <!-- /.col -->
            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
               <div class="form-group">
                  <label for="validity_day">Validity day</label>
                  <input type="number" required name="validity_day" id="validity_day" class="form-control">
                </div>
            </div> <!-- /.col -->
<!-- 
              <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">
                    <label for="timeSlot">Time per class</label>
                    <input type="number" name="time" id="timeSlot" class="form-control">
                  </div>
              </div>  --><!-- /.col -->

              <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="number" required="" name="amount" id="amount" class="form-control">
                  </div>
              </div> <!-- /.col -->

              <div  class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">
                    <label for="amount">Package Type</label>
                   <select onchange="changeType(this.value)" name="packageType" class="form-control">
                     <option selected="" value="1">Regular</option>
                     <option value="2">Custom</option>
                   </select>
                  </div>
              </div> <!-- /.col -->
            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                <div class="form-group">
                  <button type="submit" class="btn btn-secondary btn-block btn-lg" tabindex="6">
                  Create 
                  </button>
                </div> <!-- /.form-group -->

              </div> <!-- /.col -->

            </div> <!-- /.row -->
          </form>
         

        </div> <!-- /.portlet-content -->

      </div> <!-- /.portlet -->

        

    </div> <!-- /.content-container -->
      
  </div> <!-- /.content -->

</div> <!-- /.container -->
@endsection

@section('js')

<script type="text/javascript">
  function changeType(type){
    alert(type);
    if(type == 1){
      document.getElementById("validity_day").required = true;
      document.getElementById("class_no").required = true;
      document.getElementById("amount").required = true;
    }else{
      document.getElementById("validity_day").required = false;
      document.getElementById("class_no").required = false;
      document.getElementById("amount").required = false;
    }
  }
</script>
 <!-- for label -->
  <script type="text/javascript">
    $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
  </script>
<!--end label -->
@endsection
