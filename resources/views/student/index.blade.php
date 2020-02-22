@extends('layouts.master')
<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
  }

  .image_upload{
      position: absolute;left:0; border-radius: 50%; background:rgba(255,255,255,.7); text-align: center; padding-top:40%; width: 100%; height: 100%; display: none;transition: 2s;
    }

    .user_imagess:hover .image_upload{
        display: block;
        position: absolute;left:0;
        top: 0px;
        transition: 2s;
    }

    .editBtn{
        position: absolute;
        bottom: 0;
        right: 0px;
        padding: 2px 8px;
        background: #0000009e;
        color: #fff;
        cursor: pointer;
    }
   
</style>

@section('content')
@include('student.menubar')
  <div class="container">

  <div class="content">

    <div class="content-container">

      <div class="content-header">
        <h2 class="content-header-title">User Profile </h2>

      </div> <!-- /.content-header -->

      <div class="row">

        <div class="col-md-9">

          <div class="row">

            <div class="col-md-4 col-sm-5">

              <div class="thumbnail" data-toggle="modal" data-target="#user_imageModal" style="position: relative;">
                <img src="{{ asset('images/users/'.$userIfno->image)}}" alt="Profile Picture" />
               <div class="editBtn"> Edit </div>
              </div> <!-- /.thumbnail -->

              <br />

              <div class="list-group">

                <a href="javascript:;" class="list-group-item">
                  <i class="fa fa-asterisk"></i> &nbsp;&nbsp;Activity Feed

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                </a>

                <a href="javascript:;" class="list-group-item">
                  <i class="fa fa-book"></i> &nbsp;&nbsp;Projects

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                  <span class="badge">3</span>
                </a>

                <a href="javascript:;" class="list-group-item">
                  <i class="fa fa-envelope"></i> &nbsp;&nbsp;Messages

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                </a>

                <a href="javascript:;" class="list-group-item">
                  <i class="fa fa-group"></i> &nbsp;&nbsp;Friends

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                  <span class="badge">7</span>
                </a>

                <a href="javascript:;" class="list-group-item">
                  <i class="fa fa-cog"></i> &nbsp;&nbsp;Settings

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                </a>
              </div> <!-- /.list-group -->

            </div> <!-- /.col -->


            <div class="col-md-8 col-sm-7">

              <h2>{{$userIfno->name}}</h2>

              <h4>Visual, UI, UX Designer</h4>

              <hr />

              <p>
                <a href="javascript:;" class="btn btn-primary">Follow Rod</a>
                &nbsp;&nbsp;
                <a href="javascript:;" class="btn btn-secondary">Send Message</a>
              </p>

              <hr />


              <ul class="icons-list">
                <li><i class="icon-li fa fa-envelope"></i>Email: {{$userIfno->email}}</li>
                <li><i class="icon-li fa fa-globe"></i> Phone  {{$userIfno->phone}}</li>
                <li><i class="icon-li fa fa-map-marker"></i> Gender: {{ ($userIfno->gender == 1 ? 'Male' : ( $userIfno->gender == 2  ? 'Female' : 'Others' ))}} </li>
                <li><i class="icon-li fa fa-map-marker"></i> Birthday: {{ Carbon\Carbon::parse($userIfno->birthday)->format('d M, Y')}} </li>
                <li><i class="icon-li fa fa-map-marker"></i> State: {{$userIfno->state}} </li>
                <li><i class="icon-li fa fa-map-marker"></i> City: {{$userIfno->city}} </li>
                <li><i class="icon-li fa fa-map-marker"></i> Country: {{$userIfno->country}} </li>
              </ul>

              <br />

              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec.</p>

             
          
            </div> <!-- /.col -->

          </div> <!-- /.row -->

        </div> <!-- /.col -->


        <div class="col-md-3 col-sm-6 col-sidebar-right">

          <h4>Easy Statistics</h4>


          <div class="list-group">

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">{{$userIfno->total_class}}</h4>
                  <p class="list-group-item-text">Purchas Classes</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">3</h4>
                  <p class="list-group-item-text">Booked Classes</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">3</h4>
                  <p class="list-group-item-text">Finish Classes</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">5</h4>
                  <p class="list-group-item-text">Remaining Classes</p>

                </a>
          </div> <!-- /.list-group -->

          <br />



          <div class="well">
            <h4>Recent Activity</h4>


            <ul class="icons-list text-md">

              <li>
                <i class="icon-li fa fa-location-arrow"></i>

                <strong>Rod</strong> uploaded 6 files.
                <br />
                <small>about 4 hours ago</small>
              </li>

              <li>
                <i class="icon-li fa fa-location-arrow"></i>

                <strong>Rod</strong> followed the research interest: <a href="javascript:;">Open Access Books in Linguistics</a>.
                <br />
                <small>about 23 hours ago</small>
              </li>

              <li>
                <i class="icon-li fa fa-location-arrow"></i>

                <strong>Rod</strong> added 51 papers.
                <br />
                <small>2 days ago</small>
              </li>
            </ul>

          </div>
        </div> <!-- /.col -->

      </div> <!-- /.row -->

    </div> <!-- /.content-container -->

  </div> <!-- /.content -->

</div> <!-- /.container -->

<div class="modal fade" id="user_imageModal" role="dialog">
  <div class="modal-dialog">
              
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Update image</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button> 
      </div>
      <form action="{{route('userImageUpdate')}}" method="post" enctype="multipart/form-data" id="form1" runat="server">
        <div class="modal-body" style="text-align: center;">
         
          {{csrf_field()}}
            <label for="user_imagess" class="user_imagess"  style="position: relative; margin: 0px auto; width: 200px;height: 200px; background: #ccc;border-radius: 50%;">
            <input type='file' required="" name="user_image" style="display: none;" id="user_imagess" onchange="changeImage(this);" />
            <img id="userimage" src="{{asset('images/users/'.$userIfno->image)}}" alt="" style=" width: 200px; height: 200px;border-radius: 50%;" />

            <span class="image_upload"><span style="font-size: 35px" class="fa fa-picture-o"></span></span>
            </label>
       
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" >Update</button>
        </div>
      </form>
    </div>

  </div>
</div>
        
@endsection

@section('js')

<script type="text/javascript">
    function changeImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#userimage').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
@endsection
