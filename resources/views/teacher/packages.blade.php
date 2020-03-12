@extends('layouts.master')
<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
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
                @else

                <h1>You Have Not Package </h1>
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
      <br>
      
      <div class="row">

        <div class="col-sm-7 col-md-5">

          <div class="well">
            <h4>You are currently on the <span class="text-primary">Starter</span> plan</h4>
            <p>Your  monthly charge for the <strong>$9.00</strong> is paid on the 11th of each month.</p>

            <br>

            <h5>Card Details</h5>

              <table class="table">
                <tbody>
                  <tr>
                    <th>Card Type</th>
                    <td>Visa</td>
                  </tr>

                  <tr>
                    <th>Card Number</th>
                    <td>************9349 &nbsp;<small>(<a href="javascript:;">change card</a>)</small></td>
                  </tr>

                  <tr>
                    <th>Valid Until</th>
                    <td>07/16</td>
                  </tr>
                </tbody>
              </table>

          </div> <!-- /.well -->

        </div> <!-- /.col -->

        <div class="col-sm-5 col-md-4">

          <div class="portlet">

            <div class="portlet-content">

              <h4 class="heading">Package Usage</h4>

              <div class="progress-stat">

                <div class="progress-stat-label">
                HDD Space
                </div>

                <div class="progress-stat-value">
                1.7/10 GB
                </div>

                <div class="progress progress-sm">
                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="17" aria-valuemin="0" aria-valuemax="100" style="width: 17%">
                  <span class="sr-only">17 HDD Space Used</span>
                  </div>
                </div> <!-- /.progress -->

              </div> <!-- /.progress-stat -->

              <div class="progress-stat">

                <div class="progress-stat-label">
                Users
                </div>

                <div class="progress-stat-value">
                5/10
                </div>

                <div class="progress progress-sm">
                  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                  <span class="sr-only">50% Users Used</span>
                  </div>
                </div> <!-- /.progress -->

              </div> <!-- /.progress-stat -->

              <div class="progress-stat">

                <div class="progress-stat-label">
                Projects
                </div>

                <div class="progress-stat-value">
                9/10
                </div>

                <div class="progress progress-sm">
                  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                  <span class="sr-only">90% Projects Used</span>
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

@endsection
@section('js')

  <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/datatables/DT_bootstrap.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/tableCheckable/jquery.tableCheckable.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/icheck/jquery.icheck.min.js"></script>

@endsection


