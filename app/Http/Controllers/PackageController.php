<?php

namespace App\Http\Controllers;

use App\Package;

use App\PackagePurchase;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class PackageController extends Controller
{


    public function create()
    {
        return view('teacher.package-create');
    }

    public function store(Request $request)
    {

        $teacherId = Auth::user()->id;
        $data = [
            'teacherId' => $teacherId,
            'packageName' => $request->packageName,
            'class' => $request->class,
            'days' => $request->days,
            'timeSlot' => $request->timeSlot,
            'amount' => $request->amount,
        ];
        $insert = Package::create($data);
        if($insert){
            Toastr::success('Package Created Successfull.');
        }else{
            Toastr::success('Sorry Package Can\'t Created.');
        }
        return back();
    }

    // Package list by teacher id
    public function package()
    {
        $user_id = Auth::user()->id;
        $get_packages = Package::where('teacherId', $user_id)->where('status', 1)->get();

        return view('teacher.packages')->with(compact('get_packages'));
    }

    public function purchase()
    {
        // protect direct access url
        if(empty(Session::get('paypal_payment_id')) && empty(Session::get('paymentStatus'))){
            return Redirect::route('package');
        }
        $payment_id = Session::get('paypal_payment_id');
        Session::forget('paypal_payment_id');
        Session::forget('paymentStatus');
        /// end
        $studentId = Auth::user()->id;
        $packageId = Session::get('packageId');
        $paymentMethod = Session::get('paymentMethod');
        $trnx_id = strtoupper(substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), -8));
        $get_package = Package::where('id', $packageId)->first();
        $data = [
            'trnx_id' => $trnx_id,
            'studentId' => $studentId,
            'teacherId' =>  $get_package->teacherId,
            'packageId' => $packageId,
            'paymentMethod' => $paymentMethod,
            'paymentTrnx_id' => $payment_id,
        ];

        $success = PackagePurchase::create($data);
        if($success){
            User::find(Auth::user()->id)->increment('total_class', $get_package->class);
        }
        Toastr::success('Payment successfully done');

        return Redirect::route('package');
    }

}
