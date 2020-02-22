@extends('layouts.master')

@section('css')
 <link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">
 <style type="text/css">
   .table>tbody>tr>td{
    vertical-align: middle !important;
   }
 </style>
@endsection

@section('content')

@include('admin.menubar')


<div class="container">

  <div class="content">

    <div class="content-container">
      <div class="row">

        <div class="col-md-12">

          <div class="portlet">

            <div class="portlet-header">

              <h3>
                <i class="fa fa-check"></i>
                subject subjects
              </h3>

              <div style="text-align: right;"><button data-toggle="modal" href="#subject"  class="btn btn-primary">Upload subjects</button></div>

            </div> <!-- /.portlet-header -->

            <div class="portlet-content">           


              <div class="table-responsive">

              <table class="table table-striped table-bordered ">
                  <thead>
                    <tr>
                      <th class="checkbox-column">
                        #
                      </th>
                      <th>Subject Name</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr> 
                  </thead>
                  <tbody>
                    @foreach($subjects as $subject)
                      <tr id="item{{$subject->id}}">
                        <td>{{$subject->subject_name}}</td>
                        <td>{{$subject->status}}
                        </td>
                        <td style="width: 130px;">
                          
                         
                          <button class="btn btn-success btn-sm"><i class="fa fa-edit"></i></button>
                          <button onclick="deleteItem('{{ $subject->id }}' )"  class="btn btn-primary btn-sm"><i class="fa fa-trash"></i></button>
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

    </div> <!-- /.content-container -->
        
  </div> <!-- /.content -->

</div> <!-- /.container -->
<div id="subject" class="modal fade">
  <div class="modal-dialog">
   
    <div class="modal-content">
      <form action="{{route('admin.subject.store')}}" enctype="multipart/form-data" class="floating-labels" method="post">
      @csrf
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h3 class="modal-title">Course subject</h3>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label for="course_name">Course Name</label>
            <input type="text" required name="course_name" id="course_name" class="form-control">
          </div>

          <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" required name="subject" id="subject" class="form-control">
          </div>

        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Upload</button>
        </div>
      </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

@endsection

@section('js')
<script type="text/javascript">
  function subjectAddRemove(id){
    var slote_id = "{{ Request::segment(3) }}";
    $.ajax({
      type:'post',
      url:"{{ route('subjectAddRemove') }}",
      dataType: "json",
      data:{subject_id:id, slote_id:slote_id, "_token": "{{ csrf_token() }}"},
      success:function(data){
        if(data.status == 'success'){
          toastr.success(data.msg);
        }else{
          toastr.error(data.msg);
        }
      }
    });
  }

  function deleteItem(id) {
    if (confirm("Are you sure delete it.?")) {
        var link = '{{route("admin.subject.delete", ":id")}}';
        var link = link.replace(':id', id);
            $.ajax({
            url:link,
            method:"get",
            success:function(data){
                if(data.status == 'success'){
                    $("#item"+id).hide();
                    toastr.success(data.msg);
                }else{
                  toastr.error(data.msg)
                }
            }
        });
    }
    return false;
  }

</script>
 <!-- for label -->
  <script type="text/javascript">
    $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
  </script>
<!--end label -->
@endsection
