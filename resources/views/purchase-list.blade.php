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
        <h2 class="content-header-title">Purchase Package Lists</h2>

      </div> <!-- /.content-header -->


      <div class="row">

        <div class="col-md-12">

          <div class="portlet">


            <div class="portlet-content">

          <div class="">

            <table
                class="table table-striped table-bordered table-hover ">
                  <thead>

                      <tr>
                       
                        <th>Client Name</th>
                       
                        <th >Purchase Date</th>
                        <th  >Expiry Date</th>
                        <th >Total Sessions</th>
                        <th  class="hidden-xs hidden-sm">Remaining Sessions</th>
                        <th  class="hidden-xs hidden-sm">Package Price</th>
                      </tr>
                  </thead>
                  <tbody>
                    @if(count($purchasLists)>0)
                     @foreach($purchasLists as $purchasList)
                    <tr>
                      
                      <td>{{ $purchasList->user->name }}</td>
                     
                      <td>{{Carbon\Carbon::parse($purchasList->created_at)->format('j F, Y')}}</td>
                      <td>{{Carbon\Carbon::parse($purchasList->expiry_day)->format('j F, Y')}}</td>
                      <td>{{ $purchasList->total_class }}</td>
                      <td>{{ $purchasList->remaining_class }}</td>
                      <td>{{$purchasList->amount}}</td>
                    </tr>
                    @endforeach
                    @else
                    <tr><td colspan="6">No purchase history </td></tr>
                    @endif
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


