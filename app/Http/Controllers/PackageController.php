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
        $request->validate([
            'packageName' => 'required'
        ]);

        $teacherId = Auth::user()->id;
        $data = [
            'teacherId' => $teacherId,
            'packageName' => $request->packageName,
            'class_no' => $request->class_no,
            'validity_day' => $request->validity_day,
            'amount' => $request->amount,
            'type' => ($request->packageType) ? $request->packageType : 1,
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
        $get_packages = Package::where('teacherId', $user_id)->where('type', 1)->where('status', 1)->get();

        return view('packages')->with(compact('get_packages'));
    }

    public function purchase()
    {
        //protect direct access url
        if(empty(Session::get('paypal_payment_id')) && empty(Session::get('paymentStatus'))){
            return Redirect::route('package');
        }
        $payment_id = Session::get('paypal_payment_id');
        
        $studentId = Auth::user()->id;
        $packageId = Session::get('packageId');
        $paymentMethod = Session::get('paymentMethod');
        $trnx_id = strtoupper(substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), -8));

        $get_package = Package::where('id', $packageId)->first();
        $expiry_day = ($get_package->validity_day) ? $get_package->validity_day : 0;
        $data = [
            'trnx_id' => $trnx_id,
            'studentId' => $studentId,
            'teacherId' => $get_package->teacherId,
            'packageId' => $get_package->id,
            'total_class' => $get_package->class_no,
            'remaining_class' => $get_package->class_no, // when booking class decrement this column
            'amount' => ($get_package->amount) ? $get_package->amount : Session::get('customAmount'), // custom amount 
            'expiry_day' => date('Y-m-d H:i:s', strtotime(now(). '+'. $expiry_day . ' days')),
            'paymentMethod' => $paymentMethod,
            'paymentTrnx_id' => $payment_id,
        ];

        $success = PackagePurchase::create($data);
        if($success){
            // forget payment id and status
            Session::forget('paypal_payment_id');
            Session::forget('paymentStatus');
            // increment total class with purchase class 
            User::find(Auth::user()->id)->increment('total_class', ($get_package->class_no) ? $get_package->validity_day : 0 );
        }
        Toastr::error('Payment successful.');

        return Redirect::route('purchaseList');
    }

    public function purchaseList(){
        $purchasLists = PackagePurchase::with('user')->where('studentId', Auth::user()->id);
        if(Auth::user()->user_roleID == env('TEACHER')){
            $purchasLists = $purchasLists->orWhere(Auth::user()->id);
        }
        $purchasLists = $purchasLists->orderBy('id', 'DESC')->get();

        // dd($purchasLists);
        return view('purchase-list')->with(compact('purchasLists'));
    }

}
