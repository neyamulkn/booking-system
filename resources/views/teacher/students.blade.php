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
        <h2 class="content-header-title">Client List</h2>

      </div> <!-- /.content-header -->


      <div class="row">

        <div class="col-md-12">

          <div class="portlet">


            <div class="portlet-content">

          <div class="table-responsive">

            <table
                class="table table-striped table-bordered table-hover  table-checkable"
                data-provide="datatable"
                data-display-rows="10"
                data-info="true"
                data-search="true"
                data-length-change="true"
                data-paginate="true"
              >
                  <thead>

                      <tr>
                        <th class="checkbox-column">
                          <input type="checkbox" class="icheck-input">
                        </th>
                        <th data-filterable="false" data-sortable="true" data-direction="desc">Client Name</th>
                        <th data-direction="asc" data-filterable="false" data-sortable="true">Sign Up Date</th>
                        <th data-filterable="false" data-sortable="true">First Booking Date</th>
                        <th data-filterable="false" class="hidden-xs hidden-sm">Booked Sessions</th>
                        <th data-filterable="false" class="hidden-xs hidden-sm">Finished Sessions</th>
                        <th data-filterable="false" class="hidden-xs hidden-sm">Remaining Sessions</th>
                        <th data-filterable="false" class="hidden-xs hidden-sm">Contact</th>
                      </tr>

                  </thead>
                  <tbody>
                     @foreach($students as $student)
                    <tr>
                      <td class="checkbox-column">
                        <input type="checkbox" class="icheck-input">
                      </td>
                      <td>{{ $student->user->name }}</td>
                      <td>{{Carbon\Carbon::parse($student->created_at)->format('j F, Y')}}
                      <td>{{Carbon\Carbon::parse($student->created_at)->format('j F, Y')}}
                      </td>
                     
                      <td>{{$student->booked_class}}</td>
                      <td>{{$student->finish_class}}</td>
                      <td class="hidden-xs hidden-sm">{{$student->user->total_class}}</td>
                      <td class="hidden-xs hidden-sm">
                          <button type="button" onclick="getContact('{{ $student->id}}')" data-toggle="modal" href="#basicModal" class="btn btn-secondary">
                          <i class="fa fa-comment"></i>
                        </button>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div> <!-- /.table-responsive -->
            </div> <!-- /.portlet-content -->
          </div> <!-- /.portlet -->
        </div> <!-- /.col -->
      </div> <!-- /.row -->
  </div> <!-- /.content -->

</div> <!-- /.container -->

<div id="basicModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3 class="modal-title">Contacts</h3>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">

            <tbody>

              <span id="get-contacts"></span>

            </tbody>
          </table>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

@endsection
@section('js')

  <!-- Plugin JS -->
  <script src="{{asset('scripts/js')}}/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/datatables/DT_bootstrap.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/tableCheckable/jquery.tableCheckable.js"></script>
  <script src="{{asset('scripts/js')}}/plugins/icheck/jquery.icheck.min.js"></script>
      <script>
          function getContact(id) {
              $.ajax({
                  url:'{{route('contactList')}}',
                  method:"get",
                  data:{
                      id:id
                  },
                  success:function(data){
                      if(data){

                          $('#get-contacts').html(data);

                      }
                  }
              });
          }
      </script>
@endsection


