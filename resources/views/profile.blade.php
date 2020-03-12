@extends('layouts.master')

<link href="{{asset('scripts/css')}}/floating-label.css" rel="stylesheet">

<style type="text/css">
  .nav-pills{
    margin-bottom: 0px !important;
  }

  .image_upload{
      position: absolute;left:0; border-radius: 50%; background:rgba(255,255,255,.7); text-align: center; padding-top:40%; width: 100%; height: 100%; display: none;transition: 2s;
    }

    h2{position: relative;font-size: 20px !important;}

    .user_imagess:hover .image_upload{
        display: block;
        position: absolute;left:0;
        top: 0px;
        transition: 2s;
    }
    .profileDiv{
        width: 100%;
        position: relative;
        height: 250px;
    }


    .editBtn{
        position: absolute;
        bottom: 0;
        right: 0px;
        padding: 2px 8px;
        font-size: 15px;
        background: #fff;
        color: #11419b;
        cursor: pointer;
    }

</style>

@section('content')

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

              <div class="thumbnail profileDiv" data-toggle="modal" data-target="#user_imageModal">
                <img style="height: 100%; width: 100%; object-fit: contain" src="{{ asset('images/users/'. ($userIfno->image ? $userIfno->image: 'avatar.png'))}}" alt="Profile Picture" />
               @if($userIfno->id == Auth::user()->id)<div class="editBtn"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit </div>@endif
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

              <h2>{{$userIfno->name}}
                @if($userIfno->id == Auth::user()->id)<div data-toggle="modal" data-target="#user_profile" class="editBtn"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit </div>@endif
              </h2>

              <hr />


              <ul class="icons-list">
                <li><i class="icon-li fa fa-envelope"></i>Email: {{$userIfno->email}}</li>
                <li><i class="icon-li fa fa-mobile"></i> Mobile:  {{$userIfno->mobile}}</li>
                <li><i class="icon-li fa fa-frown-o"></i> Gender: {{ ($userIfno->gender == 1 ? 'Male' : ( $userIfno->gender == 2  ? 'Female' : 'Others' ))}} </li>
                <li><i class="icon-li fa fa-clock-o"></i> Birthday: {{ Carbon\Carbon::parse($userIfno->birthday)->format('d M, Y')}} </li>
                <li><i class="icon-li fa fa-map-marker"></i> Country: {{$userIfno->getCountry->name}} </li>
              </ul>

              <br />
                <div class="contact-details">
                <h2>Contact Details
                @if($userIfno->id == Auth::user()->id)<div data-toggle="modal" data-target="#contact_details" class="editBtn"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit </div>@endif

                </h2>
                <hr />


                <ul class="icons-list">
                    <li><i class="icon-li fa fa-qq"></i>QQ ID: {{$userIfno->qq}}</li>
                    <li><i class="icon-li fa fa-weixin"></i> Wechat ID:  {{$userIfno->wechat}}</li>
                    <li><i class="icon-li fa fa-skype"></i> Skype ID: {{ $userIfno->skype }} </li>
                    <li><i class="icon-li fa fa-facebook"></i> Facebook : {{ $userIfno->facebook }} </li>

                </ul>
                </div>



            </div> <!-- /.col -->

          </div> <!-- /.row -->

        </div> <!-- /.col -->


        <div class="col-md-3 col-sm-6 col-sidebar-right">

          <h4>Booking Record</h4>


          <div class="list-group">

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">{{array_sum( $userIfno->totalSession->pluck('total_class')->toArray())}}</h4>
                  <p class="list-group-item-text">Purchased Session</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">@if($userIfno->bookingSession) {{$userIfno->bookingSession->booked_class }} @else 0 @endif</h4>
                  <p class="list-group-item-text">Booked Session</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">@if($userIfno->bookingSession) {{$userIfno->bookingSession->finish_class }} @else 0 @endif</h4>
                  <p class="list-group-item-text">Finish Session</p>

                </a>

            <a href="javascript:;" class="list-group-item"><h3 class="pull-right"><i class="fa fa-clock-o"></i></h3>
                  <h4 class="list-group-item-heading">{{$userIfno->total_class}}</h4>
                  <p class="list-group-item-text">Remaining Session</p>

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
@if($userIfno->id == Auth::user()->id)
    <div class="modal fade" id="user_imageModal" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Update image</h4>
          </div>
          <form action="{{route('userImageUpdate')}}" method="post" enctype="multipart/form-data" id="form1" runat="server">
            <div class="modal-body" style="text-align: center;">

              {{csrf_field()}}
                <label for="user_imagess" class="user_imagess"  style="position: relative; margin: 0px auto; width: 200px;height: 200px; background: #ccc;border-radius: 50%;">
                <input type='file' required="" name="user_image" style="display: none;" id="user_imagess" onchange="changeImage(this);" />
                <img id="userimage" src="{{asset('images/users/'. ($userIfno->image ? $userIfno->image: 'avatar.png'))}}" alt="" style=" width: 200px; height: 200px;border-radius: 50%;" />

                <span class="image_upload"><span style="font-size: 35px" class="fa fa-picture-o"></span></span>
                </label>

            </div>
            <div class="modal-footer">
               <button type="button"  data-dismiss="modal" class="btn btn-default" >Close</button>
              <button type="submit" class="btn btn-primary" >Update</button>
            </div>
          </form>
        </div>

      </div>
    </div>
    <div class="modal fade" id="contact_details" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Update contact</h4>

          </div>
          <form style="padding: 20px 10px;" action="{{route('updateContact')}}" method="post" class="floating-labels" >
            <div class="row" style="text-align: center;">

              {{csrf_field()}}
              <div class="col-md-6">
                        <div class="form-group">
                            <label for="wechat" >Wechat ID (optional)</label>
                            <input type="text" value="{{ $userIfno->wechat }}" name="wechat" class="form-control" id="wechat" tabindex="3">
                        </div> <!-- /.form-group -->
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="QQ" >QQ ID (optional)</label>
                            <input type="text" value="{{ $userIfno->qq }}" name="qq" class="form-control" id="QQ" tabindex="3">
                        </div> <!-- /.form-group -->
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="skype" >Skype ID (optional)</label>
                            <input type="text" value="{{ $userIfno->skype }}" name="skype" class="form-control" id="skype" tabindex="3">
                        </div> <!-- /.form-group -->
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="facebook">Facebook profile link (optional)</label>
                            <input type="text" value="{{ $userIfno->facebook }}" name="facebook" class="form-control" id="facebook" tabindex="3">
                        </div> <!-- /.form-group -->
                    </div>

            </div>
            <div class="modal-footer">
              <button type="button"  data-dismiss="modal" class="btn btn-default" >Close</button>
              <button type="submit" class="btn btn-primary" >Update</button>
            </div>
          </form>
        </div>

      </div>
    </div>

    <div class="modal fade" id="user_profile" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Update Profile</h4>
          </div>
            <form style="padding: 10px;" class="form account-form floating-labels" method="POST" action="{{ route('updateProfile') }}">
                <div class="row">
                    @csrf
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="fname" >First Name</label>
                            <input id="fname" type="text" class="form-control @error('fname') is-invalid @enderror" name="fname" value="{{$userIfno->name}}" required autocomplete="fname" autofocus>

                            @error('fname')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lname" >Last Name</label>
                            <input id="lname" type="text" class="form-control @error('lname') is-invalid @enderror" name="lname" value="{{ $userIfno->lname }}" required autocomplete="lname" autofocus>

                            @error('lname')
                            <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                            @enderror
                        </div> <!-- /.form-group -->
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email" >Email Address</label>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $userIfno->email }}" required autocomplete="email">
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                            @enderror
                        </div> <!-- /.form-group -->
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="mobile" >Mobile Number</label>
                            <input id="mobile" type="mobile" class="form-control @error('mobile') is-invalid @enderror" name="mobile" value="{{ $userIfno->mobile }}" required autocomplete="mobile">
                            @error('mobile')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                            @enderror
                        </div> <!-- /.form-group -->
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="gender" >Gender</label>
                            <select name="gender" id="gender" required="required" class="form-control @error('gender') is-invalid @enderror">

                                <option @if($userIfno->gender == 1) selected @endif value="1">Male</option>
                                <option @if($userIfno->gender == 2) selected @endif value="2">Female</option>
                            </select>

                            @error('gender')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="birthday" >Birthday date</label>
                            <input id="birthday" type="date" class="form-control @error('birthday') is-invalid @enderror" name="birthday"  value="{{ $userIfno->birthday }}" required autocomplete="birthday" autofocus>

                            @error('birthday')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="country" >Country</label>
                             <?php $get_countries = DB::table('countries')->get(); ?>
                            <select required name="country" onchange="get_state(this.value)" id="country" class="form-control validate[required]">
                                <option value="0" data-phonecode="+1">Select Country</option>
                                @foreach($get_countries as $country)
                                <option @if( $userIfno->id == $country->id) selected @endif value="{{$country->id}}" data-phonecode="{{$country->phonecode}}" >{{$country->name}}</option>
                                @endforeach
                            </select>

                            @error('country')
                            <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                            @enderror
                        </div>
                    </div>
                <!--     <div class="col-md-6">
                        <div class="form-group">
                            <label for="state" >State</label>
                            <select name="state" id="state" required="required" class="form-control @error('state') is-invalid @enderror">
                                <option value=""></option>
                                <option value="1">Dhaka</option>
                                <option value="2">Rangpur</option>
                            </select>

                            @error('state')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                            @enderror
                        </div>
                    </div> -->

                 <!--    <div class="col-md-6">
                        <div class="form-group">
                            <label for="city" >City</label>
                            <select name="city" id="city" class="form-control @error('city') is-invalid @enderror">
                                <option value=""></option>
                                <option value="1">Dhaka</option>
                                <option value="2">Rangpur</option>
                            </select>

                            @error('city')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                            @enderror
                        </div>
                    </div> -->

                  <!--   <div class="col-md-6">
                        <div class="form-group">
                            <label for="contact" >Contact No</label>
                            <input id="contact" type="text" class="form-control @error('contact') is-invalid @enderror" name="contact" value="{{ old('contact') }}" required autocomplete="contact" autofocus>

                            @error('contact')
                            <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                            @enderror
                        </div>
                    </div> -->

                </div>
                <div class="form-group">
                   <button type="button"  data-dismiss="modal" class="btn btn-default" >Close</button>
                    <button type="submit" class="btn btn-primary" tabindex="6">
                        Update
                    </button>
                </div> <!-- /.form-group -->

            </form>
        </div>

      </div>
    </div>
@endif
@endsection

@section('js')
    <!-- for label -->
    <script type="text/javascript">
        $(".floating-labels .form-control").on("focus blur",function(e){$(this).parents(".form-group").toggleClass("focused","focus"===e.type||0<this.value.length)}).trigger("blur")
    </script>
    <!--end label -->
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
