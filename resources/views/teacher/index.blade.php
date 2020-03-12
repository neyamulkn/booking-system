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
      <div>
        <h4 class="heading-inline">Weekly Teaching Stats
        &nbsp;&nbsp;<small>For the week of Jun 01 - Jun 07, 2020</small>
        &nbsp;&nbsp;</h4>
      </div>

      <br>

      <div class="row">

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Studens</p>
            <h3 class="row-stat-value">50</h3>
            <span class="label label-success row-stat-badge">+43%</span>
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Today Clases</p>
            <h3 class="row-stat-value">12</h3>
            <span class="label label-success row-stat-badge">+17%</span>
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Clases</p>
            <h3 class="row-stat-value">98,290</h3>
            <span class="label label-success row-stat-badge">+26%</span>
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Currently Active Students</p>
            <h3 class="row-stat-value">19</h3>
            <span class="label label-danger row-stat-badge">+5%</span>
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->
        
      </div> <!-- /.row -->


      <br>



      <div class="row">

        <div class="col-md-8">


          <div class="portlet">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-file-text-o"></i>
                Student Booking List
              </h3>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content panel-thread scrollable-panel">

              <ul class="panel-lists">

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                      <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                      <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                      <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                      <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                      <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                      <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-1-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Proin malesuada consectetur lectus. Ut vel lorem sed metus vulputate bibendum.</a>
                      <span class="panel-list-meta">asked by <a href="#">John Doe</a> in <a href="#">Admin Themes</a></span>
                  </div>
                </li>

                <li>
                  <img src="{{asset('images')}}/avatars/avatar-2-md.jpg" alt="Avatar" class="panel-list-avatar">
                  <div class="panel-list-content">
                      <span class="panel-list-time">20 mins</span>
                      <a href="#" class="panel-list-title">Nunc egestas, sapien vel feugiat varius, ligula urna mattis odio, ut mollis urna nunc id risus. Mauris congue bibendum turpis</a>
                      <span class="panel-list-meta">asked by <a href="#">Jane Doe</a> in <a href="#">Site Templates</a></span>
                  </div>
                </li>
                                        
              </ul>


            </div> <!-- /.portlet-content -->

          </div> <!-- /.portlet -->


          <div class="portlet portlet-table">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-group"></i>
                Recent Signups
              </h3>

              <ul class="portlet-tools pull-right">
                <li>
                  <button class="btn btn-sm btn-default">
                    Add User
                  </button>
                </li>
              </ul>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content">


              <div class="table-responsive">

                <table id="user-signups" class="table table-striped table-bordered table-checkable"> 
                  <thead> 
                    <tr> 
                      <th class="checkbox-column"> 
                        <input type="checkbox" id="check-all" class="icheck-input" />
                      </th> 
                      <th class="hidden-xs">First Name</th> 
                      <th>Last Name</th> 
                      <th>Status</th>
                      <th class="text-center" style="width: 90px">Approve</th>
                    </tr> 
                  </thead> 

                  <tbody> 
                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" name="actiony" value="joey" class="icheck-input"> 
                      </td> 

                      <td class="hidden-xs">Joey</td> 
                      <td>Greyson</td> 
                      <td><span class="label label-success">Approved</span></td> 
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td> 
                    </tr> 

                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" name="actiony" value="wolf" class="icheck-input">
                      </td> 
                      <td class="hidden-xs">Wolf</td> 
                      <td>Bud</td> <td><span class="label label-default">Pending</span>
                      </td>  
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td> 
                    </tr> 

                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" name="actiony" value="sam" class="icheck-input"> 
                      </td> 

                      <td class="hidden-xs">Sam</td> 
                      <td>Mitchell</td> 
                      <td><span class="label label-success">Approved</span></td>  
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td> 
                    </tr> 

                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" value="carlos" name="actiony" class="icheck-input"> 
                      </td> 
                      <td class="hidden-xs">Carlos</td> 
                      <td>Lopez</td> 
                      <td><span class="label label-success">Approved</span></td> 
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td>  
                    </tr>  

                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" name="actiony" value="rob" class="icheck-input"> 
                      </td> 
                      <td class="hidden-xs">Rob</td> 
                      <td>Johnson</td> 
                      <td><span class="label label-default">Pending</span></td> 
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td> 
                    </tr> 

                    <tr> 
                      <td class="checkbox-column"> 
                        <input type="checkbox" value="mike" name="actiony" class="icheck-input"> 
                      </td> 
                      <td class="hidden-xs">Mike</td> 
                      <td>Jones</td> 
                      <td><span class="label label-default">Pending</span></td>  
                      <td class="text-center">
                        <a href="javascript:void(0);" class="btn btn-xs btn-primary" data-original-title="Approve">
                          <i class="fa fa-check"></i>
                        </a> 
                      </td> 
                    </tr>            

                  </tbody> 

                </table>
                  

              </div> <!-- /.table-responsive -->
                  
            </div> <!-- /.portlet-content -->

            <div class="portlet-footer">
              <div class="text-right">                  
                Apply to Selected: &nbsp;&nbsp;
                <select id="apply-selected" name="table-select" class="ui-select2" style="width: 125px">
                  <option value="">Select Action</option>
                  <option value="approve">Approve</option>
                  <option value="edit">Edit</option>
                  <option value="delete">Delete</option>
                  
                </select>
              </div>
            </div> <!-- /.portlet-footer -->

          </div> <!-- /.portlet -->

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

              <div id="donut-chart" class="chart-holder-225"></div>
                  

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

        </div> <!-- /.col -->

      </div> <!-- /.row -->

    </div> <!-- /.content-container -->
      
  </div> <!-- /.content -->

</div> <!-- /.container -->


@endsection
