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
        <h2 class="content-header-title">Ratting create</h2>
        <ol class="breadcrumb">
          <li><a href="#">Ratting</a></li>
          <li class="active">create</li>
        </ol>
      </div> <!-- /.content-header -->

      

      <div class="portlet">

        <div class="portlet-content">
          <form action="{{ route('ratting.store') }}" class="floating-labels" method="post">
            @csrf
          <div class="row">

            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
              <div class="form-group">
                <label for="packageName">Ratting Title</label>
                <input type="text" required name="title" id="packageName" class="form-control">
              </div>
            </div> <!-- /.col -->

            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
               <div class="form-group">
                  <label for="class">Summary</label>
                  <input type="text" required name="summary" id="class" class="form-control">
                </div>
            </div> <!-- /.col -->
            <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
               <div class="form-group">
                  <label for="days">Star</label>
                  <input type="number" value="3" required name="star" id="days" class="form-control">
                </div>
            </div> <!-- /.col -->

              <div class="col-sm-6 col-sm-offset-6 col-sm-pull-3">
                  <div class="form-group">  
                    <label for="select-input">Who is for</label>
                    <select name="whosFor" id="select-input" class="form-control">
                      <option value="1">Teacher</option>
                      <option value="2">Student</option>
                      <option value="3">Both</option>
                      
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
 <!-- for label -->
  <script type="text/javascript">
    $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
  </script>
<!--end label -->
@endsection
