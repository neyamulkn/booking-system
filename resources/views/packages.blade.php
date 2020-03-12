@extends('layouts.master')
<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
  }
  .package .col-md-2{
    padding: 8px !important;
  }
</style>
@section('content')

<div class="container">

  <div class="content">

    <div class="content-container">

  
      <div class="content-header">
        <h2 class="content-header-title">Package Plans & Billing</h2>
     
      </div> <!-- /.content-header -->

  
      <div class="row">
        <h3 style="text-align: center;color: red;margin-bottom: 50px;">Please confirm your package</h3>

        <div class="col-md-12">

          <div class="row">
              
            <div class="col-md-12">

              <div class="row package">

                @if($get_packages)
                  <?php $i = 1; ?>
                  @foreach($get_packages as $get_package)

                    @if($get_package->type == 1)
                    <div class="col-md-2 col-sm-6" @if($i==3)style="margin-top: -32px;text-align: center;" @endif>
                        @if($i==3)<span style="text-align: center !important;font-weight: bold;font-size: 20px;">Preferred</span>@endif
                        <div class="pricing-plan pricing-plan-secondary">
                            <div class="pricing-plan-header">
                              <h2 class="pricing-plan-title">{{$get_package->packageName}} </h2>
                              <span class="pricing-plan-price">${{$get_package->amount}} <span class="pricing-plan-price-term"><!-- / Mo --></span></span>
                            </div> <!-- /.pricing-header  -->

                          <form action="{{route('paypalPayment', [$get_package->id])}}"  id="formSubmit{{$get_package->id}}" method="post">
                           
                            @csrf
                            <div class="pricing-plan-body">
                              <ul class="pricing-plan-details">            
                                <li><i class="fa fa-book pricing-plan-detail-icon"></i> <strong>{{$get_package->class_no}}</strong>  Sessions</li>
                                <li><i class="fa fa-calendar-o pricing-plan-detail-icon"></i> <strong>{{$get_package->validity_day}}</strong>  days</li>  
                                <li> <button type="submit" class="btn pricing-plan-signup-btn">Buy</button></li>
                              </ul> 
                            </div> <!-- /.pricing-body -->
                        </form>
                      </div> <!-- /.pricing -->
                    </div> <!-- /.col -->
                    @else
                      <div class="col-md-2 col-sm-6">
                        <div class="pricing-plan pricing-plan-secondary">
                            <div class="pricing-plan-header">
                              <h2 class="pricing-plan-title">{{$get_package->packageName}}</h2>
                              <span class="pricing-plan-price">${{$get_package->amount}} <span class="pricing-plan-price-term"><!-- / Mo --></span></span>
                            </div> <!-- /.pricing-header  -->

                          <form action="{{route('paypalPayment', [$get_package->id])}}" id="formSubmit{{$get_package->id}}" method="post">
                           
                            @csrf
                            <div class="pricing-plan-body">
                              <ul class="pricing-plan-details">            
                                <li style="text-align: center;font-weight: bold;">Custom</li>
                                <li><input type="amount" style="height: 22px;width: 81%;margin: 0px auto;padding: 3px 10px;font-size: 12px;" placeholder="Enter Amount" required="" class="form-control" value="{{Session::get('cusAmount')}}" name="amount"></li>  
                                <li> <button type="submit" class="btn pricing-plan-signup-btn">Buy</button></li>
                              </ul> 
                            </div> <!-- /.pricing-body -->
                        </form>
                      </div> <!-- /.pricing -->
                    </div> <!-- /.col -->

                    @endif
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
@if(Session::get('customPackageId'))
<script type="text/javascript">
    document.getElementById("formSubmit{{Session::get('customPackageId')}}").submit(); // SUBMIT FORM
</script>
@endif
@endsection


