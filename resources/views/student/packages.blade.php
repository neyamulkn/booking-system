@extends('layouts.master')
<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
  }
</style>
@section('content')
@include('student.menubar')
<div class="container">

  <div class="content">

    <div class="content-container">

  
      <div class="content-header">
        <h2 class="content-header-title">Package Plans & Billing</h2>
       
      </div> <!-- /.content-header -->

  
      <div class="row">

        <div class="col-md-12">

          <div class="row">
              
            <div class="col-md-10 col-md-push-1">

              <div class="row">

                @if($get_packages)
                  <?php $i = 1; ?>
                  @foreach($get_packages as $get_package)
                    <div class="col-md-3 col-sm-6">
                        <div class="{{ ($i%2==0) ? 'pricing-plan' : 'pricing-plan pricing-plan-secondary' }}">
                            <div class="pricing-plan-header">
                              <h2 class="pricing-plan-title">{{$get_package->packageName}}</h2>
                              <span class="pricing-plan-price">${{$get_package->amount}} <span class="pricing-plan-price-term"><!-- / Mo --></span></span>
                            </div> <!-- /.pricing-header -->

                          <form action="{{route('paypalPayment', [$get_package->id])}}" method="post">
                           
                            @csrf
                            <div class="pricing-plan-body">
                              <ul class="pricing-plan-details">            
                                <li><i class="fa fa-book pricing-plan-detail-icon"></i> <strong>{{$get_package->class}}</strong>  classes</li>
                                <li><i class="fa fa-calendar-o pricing-plan-detail-icon"></i> <strong>{{$get_package->days}}</strong>  days</li>  
                                <li> <button type="submit" class="btn pricing-plan-signup-btn">Purchase Now</button></li>
                              </ul> 
                            </div> <!-- /.pricing-body -->
                        </form>
                      </div> <!-- /.pricing -->
                    </div> <!-- /.col -->
                    <?php $i++; ?>
                  @endforeach
                
                @endif
              
              </div> <!-- /.row -->

            </div> <!-- /.col -->

          </div> <!-- /.row -->


          <br>

          <h4 class="text-center">
            <strong>Need More?</strong>
            <span>We offer larger plans for companies with even more contacts.</span>
            <a href="javascript:;">Learn More <i class="fa fa-expand"></i></a>
          </h4>

        </div> <!-- /.col-md-12 -->

      </div> <!-- /.row -->
      
    </div> <!-- /.content-container -->
      
  </div> <!-- /.content -->

</div> <!-- /.container -->

@endsection
@section('js')

  <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/datatables/DT_bootstrap.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/tableCheckable/jquery.tableCheckable.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/icheck/jquery.icheck.min.js"></script>

@endsection


