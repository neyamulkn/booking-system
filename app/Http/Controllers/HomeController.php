<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use Session;
use Redirect;
class HomeController extends Controller
{

    public function index(){
        return view('landing.index');
    }
    public function features(){
        return view('landing.features');
    }
    public function reviews(){
        return view('landing.reviews');
    } 

    public function privacy_policy(){
        return view('landing.privacy-policy');
    }
    public function pricing(){
        return view('landing.pricing');
    }
  

    public function terms_of_use(){
        return view('landing.terms-of-use');
    }

    public function customPayment(Request $request, $packageId){
        Session::put('customPackageId', $packageId);
        
        if($request->cusAmount){ Session::put('cusAmount', $request->cusAmount); }

        return redirect::route('package');
    }

}
