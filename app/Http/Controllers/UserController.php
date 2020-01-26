<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Intervention\Image\Facades\Image;

class UserController extends Controller
{
    public function userImageUpdate(Request $request){


        $user_id = Auth::user()->id;
        $this->validate($request, [
            'user_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);
        $image = $request->file('user_image');
        echo $image_name = $this->uniquePath($image->getClientOriginalName());
        $image_path = public_path('images/users/avaters/'.$image_name );
        $image_resize = Image::make($image);
        $image_resize->resize(60, 60);
        $image_resize->save($image_path);

        $image_path = public_path('images/users/'.$image_name );
        Image::make($image)->save($image_path);
    	$update = User::where('id', $user_id)->update(['image' => $image_name]);
    	if($update){
    	    Toastr::success('Profile picture updated successfully.');
        }else{
    	    Toastr::error('Sorry profile picture update failed.');
        }
        return back();
    }

    public function contactList(Request $request){
        $contacts = User::where('id', $request->id)->first();
    }

    public function uniquePath($path)
    {
        $check_path = User::select('image')->where('image', 'like', '%'.$path)->get();
        if (count($check_path)>0){
            //find until find not used.
            for ($i = 1; $i <= count($check_path); $i++) {
                $newPath = $i.'-'.$path;
                if (!$check_path->contains('image', $newPath)) {
                    return $newPath;
                }
            }
        }else{ return $path; }
    }
}
