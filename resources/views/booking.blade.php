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
      <div class="row">

        <div class="col-md-8 ">
          <div class="portlet">
            <div class="portlet-header">
                <ul id="myTab1" class="nav nav-pills">
                <li class="active">
                  <a href="#Calender"  data-toggle="tab">Booking Calender</a>
                </li>
                <li>
                  <a href="#Schedule"  data-toggle="tab"> Teaching Schedule</a>
                </li>
                 <li>
                  <a href="#Records"  data-toggle="tab"> Class Records</a>
                </li><li>
                  <a href="#Attendance"  data-toggle="tab"> Attendance Page</a>
                </li>
              </ul>
            </div>
            <div class="portlet-content">
              <div id="myTab1Content" class="tab-content">
                <div class="tab-pane fade in active" id="Calender">

                    <div class="pull-left">
                      <h4>
                        <i class="fa fa-file-text-o"></i>
                        {{Carbon\Carbon::parse(now())->format('d M, Y D')}}
                      </h4>
                    </div>
                    <div class="pull-right">
                      <button type="button" class="btn btn-secondary">Refresh</button>
                    </div>
                    <div class="clear"></div>
                    <hr/>
                  <div class="panel-thread">

                    <ul class="panel-lists">

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                            <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                            <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                            <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                            <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                            <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                            <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                            <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                        </div>
                      </li>

                      <li>
                        <img src="{{asset('scripts')}}/img/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                        <div class="panel-list-content">
                            <span class="panel-list-time">20 mins</span>
                            <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                            <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                        </div>
                      </li>
                                              
                    </ul>


                  </div> <!-- /.portlet-content -->

                </div>

                <div class="tab-pane fade" id="Schedule">
                  <div class="">
                     @include('calender')
                  </div> <!-- /#area-chart -->

                </div>

                <div class="tab-pane fade" id="Records">
                  <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>

                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</p>
                </div>

                <div class="tab-pane fade" id="Attendance">
                  <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>

                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.</p>
                </div>
              </div>
          </div>
        </div>
    
        </div> <!-- /.col -->



        <div class="col-md-4">

          <div class="portlet">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-bar-chart-o"></i>
                Donut Chart
              </h3>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content">

              <div >
                 @include('calender-sitebar')

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




          <div class="portlet">

            <div class="portlet-header">
              <h3>
                <i class="fa fa-bar-chart-o"></i>
                Sparkline
              </h3>
            </div> <!-- /.portlet-header -->

            <div class="portlet-content">

              <div class="row row-marginless">

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="total-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">1,564</span>
                  <h5 class="spark-stat-label">Total Visits</h5>

                </div> <!-- /.col -->

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="new-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">872</span>
                  <h5 class="spark-stat-label">New Visits</h5>

                </div> <!-- /.col -->

              </div> <!-- /.row -->


              <div class="row row-marginless">

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="unique-visits">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">845</span>
                  <h5 class="spark-stat-label">Unique Visits</h5>

                </div> <!-- /.col -->

                <div class="spark-stat col-md-6 col-sm-6 col-xs-6">

                  <div id="revenue-visits" data-bar-color="#c00">32, 38, 46, 49, 53, 48, 47, 56</div>
                  <span class="spark-stat-value">$13,492</span>
                  <h5 class="spark-stat-label">Revenue Visits</h5>

                </div> <!-- /.col -->

              </div> <!-- /.row -->

            </div> <!-- /.portlet-content -->

          </div> <!-- /.portlet -->

        </div> <!-- /.col -->

      </div> <!-- /.row -->

    </div> <!-- /.content-container -->
      
  </div> <!-- /.content -->

</div> <!-- /.container -->

@endsection
