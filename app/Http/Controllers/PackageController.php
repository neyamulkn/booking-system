<?php

namespace App\Http\Controllers;

use App\Package;

use App\PackagePurchase;
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


    public function show(Package $package)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function edit(Package $package)
    {
        //
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

        PackagePurchase::create($data);
        Toastr::success('Payment successfully done');

        return Redirect::route('package');
    }

}
