<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\TimeAvailable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class setTimeSlotController extends Controller
{
    function booking(Request $request){
    	$ym = $request->ym;
    	echo view('teacher.calender')->with(compact('ym'));
    }


    function getTimeSlot(Request $request){
        $data = [];
        $data['start']= strtotime('06:00');
        $data['end']= strtotime('24:00');
        $data['interval'] = 30;
    	$data['slotDate'] = $request->ym;

        $data['get_avaible_time'] = TimeAvailable::with(['bookingSlot' => function($query){  // check booking status active
            $query->where('booking_status', 1); }])->where('slotDate', $data['slotDate'])->get();
        //multi teacher
        //$teacher_id = Auth::user()->id;
        // $get_avaible_time = TimeAvailable:::with(['bookingSlot' => function($query){ 
        //     $query->where('booking_status', 1); }])->where('slotDate', $data['slotDate'])->where('teacher_id', $teacher_id)->get();
        
        echo view('teacher.include.bookingSlote')->with($data);

    }

    public function insertTimeSlot(Request $request)
    {
        $teacher_id = Auth::user()->id;
        $check_avaible_time = TimeAvailable::where('slotDate', $request->slotDate)->where('teacher_id', $teacher_id )->first();
       // dd($request->all());
        foreach($request->totalSlots as $slotTime => $value) {

           $data = [
                'teacher_id' => $teacher_id,
                'slotDate' => $request->slotDate,
                'slotTime' => $slotTime,
                'duration' => 30,
                'status' => (isset($request->availableTime[$slotTime])) ? 1 : 0,
           ];
           if($check_avaible_time){
                TimeAvailable::where('id', $request->Slot_id[$slotTime])->update($data);
           }else{
                TimeAvailable::create($data);
           }

        }
        if($check_avaible_time){
            Toastr::success('Available time updated successfully.');
        }else{
            Toastr::success('Available time inserted successfully.');
        }
        Session::flash('slotDate', $request->slotDate);
        return back();
    }

    function calender_sitebar(Request $request){
        $ym_sitebar = $request->ym_sitebar;
        echo view('common.calender-sitebar')->with(compact('ym_sitebar'));
    }


}
