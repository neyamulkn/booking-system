<?php

namespace App\Http\Controllers;

use App\Student;
use App\Package;
use App\TimeAvailable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{

    public function index()
    {
        return view('student.booking');
    }
    public function bookingCalender(Request $request){
        $ym = $request->ym;
        echo view('student.calender')->with(compact('ym'));
    }

    public function package()
    {
        $user_id = Auth::user()->id;
        $get_packages = Package::where('status', 1)->get();

        return view('student.packages')->with(compact('get_packages'));
    }
    




}
