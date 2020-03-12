<?php

namespace App\Http\Controllers;

use App\BookingSlot;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Intervention\Image\Facades\Image;
use Illuminate\Validation\Rule;
use DB;
class UserController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function dashboard()
    {
        $userIfno = User::find(Auth::user()->id);


        if($userIfno->user_roleID == env('STUDENT')){
            //echo $this->slug();
            return view('student.index')->with(compact('userIfno'));
        }else{
             return view('teacher.index')->with(compact('userIfno'));
        }
    }

    public function profile( $username = null ){
//        $get_session = BookingSlot::where()
        $username = $username ? $username : Auth::user()->username;

        $userIfno = User::with(['totalSession:studentId,total_class', 'bookingSession'])->where('username', $username)->first();
      //echo array_sum( $userIfno->totalSession->pluck('total_class')->toArray());

        return view('profile')->with(compact('userIfno'));
    }

    public function updateProfile(Request $request){
        $request->validate([
            'fname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'max:50', 'unique:users,email,'. Auth::user()->id],
            'gender' => ['required'],
            'mobile' => ['required'],
            'birthday' => ['required'],
            'country' => ['required'],
        ]);

        $data = [
            'name' => $request->fname,
            'lname' => $request->lname,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'gender' => $request->gender,
            'birthday' => $request->birthday,
            'country' => $request->country,
            // 'state' => $request->state,
            // 'city' => $request->city,

        ];

        $update = User::where('id', Auth::user()->id)->update($data);
        if($update){
            Toastr::success('Your profile has been updated.');
        }else{
            Toastr::error('Cannot update your profile.');
        }
        return back();
    }

    public function updateContact(Request $request){
        $data = [
            'wechat' =>$request->wechat,
            'qq' => $request->qq,
            'skype' => $request->skype,
            'facebook' => $request->facebook,
        ];

        $update = User::where('id', Auth::user()->id)->update($data);
        if($update){
            Toastr::success('Your profile has been updated.');
        }else{
            Toastr::error('Cannot update your profile.');
        }
        return back();
    }

    public function userImageUpdate(Request $request){

        $user_id = Auth::user()->id;
        $this->validate($request, [
            'user_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        $image = $request->file('user_image');
        $image_name = $this->uniquePath($image->getClientOriginalName());

        $image_path = public_path('images/users/avaters/'.$image_name );
        $image_resize = Image::make($image);
        $image_resize->resize(60, 60);
        $image_resize->save($image_path);

        $image_path = public_path('images/users/'.$image_name );
        Image::make($image)->save($image_path);
    	$update = User::where('id', $user_id)->update(['image' => $image_name]);
    	if($update){
            $source_path = public_path('images/users/'. Auth::user()->image);
            if(file_exists($source_path)){ //If it exits, delete it from folder
                unlink($source_path);
                unlink(public_path('images/users/avaters/'.Auth::user()->image));
            }
    	    Toastr::success('Profile picture updated successfully.');
        }else{
    	    Toastr::error('Sorry profile picture update failed.');
        }
        return back();
    }

    public function contactList(Request $request){

        $contacts = User::where('id', $request->id)->first();
        echo view('contact-list')->with(compact('contacts'));
    }

    public function uniquePath($path)
    {
        $check_path = User::select('image')->where('image', 'like', '%'.$path)->get();
        if (count($check_path)>0){
            //find until find not used.
            for ($i = 1; $i <= count($check_path); $i++) {
                $newPath = $i.$path;
                if (!$check_path->contains('image', $newPath)) {
                    return $newPath;
                }
            }
        }else{ return $path; }
    }
}
