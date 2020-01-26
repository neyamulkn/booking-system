@extends('layouts.master')
@section('css')
 <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">
@endsection
@section('content')
@include('teacher.menubar')
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
                  <label for="class">Number Of clases</label>
                  <input type="number" required name="class" id="class" class="form-control">
                </div>
            </div> <!-- /.col -->
            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
               <div class="form-group">
                  <label for="days">Number Of days</label>
                  <input type="number" required name="days" id="days" class="form-control">
                </div>
            </div> <!-- /.col -->

              <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">
                    <label for="timeSlot">Time per class</label>
                    <input type="number" name="timeSlot" id="timeSlot" class="form-control">
                  </div>
              </div> <!-- /.col -->

              <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="number" required="" name="amount" id="amount" class="form-control">
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
 <!-- for label -->
  <script type="text/javascript">
    $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
  </script>
<!--end label -->
@endsection
