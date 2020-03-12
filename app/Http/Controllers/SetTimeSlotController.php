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

    // get time slot by date for teacher ajax request 
    function getTimeSlot(Request $request){
        $data = [];
        $data['start']= strtotime('06:00');
        $data['end']= strtotime('24:00');
        $data['interval'] = 30;
    	$data['slotDate'] = $request->ym;

        $data['get_available_time'] = TimeAvailable::with(['bookingSlot' => function($query){  // check booking status active
            $query->where('booking_status', 1); }])
            ->where('slotDate', $data['slotDate'])->get();
        //multi teacher
        //$teacher_id = Auth::user()->id;
        // $get_available_time = TimeAvailable:::with(['bookingSlot' => function($query){ 
        //     $query->where('booking_status', 1); }])
            //->where('slotDate', $data['slotDate'])->where('teacher_id', $teacher_id)->get();
       
        echo view('teacher.include.bookingSlote')->with($data);

    }

    /// Insert available time slot by teacher

    public function insertTimeSlot(Request $request)
    {

       
        $teacher_id = Auth::user()->id;
        $check_avaible_time = TimeAvailable::where('slotDate', $request->slotDate)->where('teacher_id', $teacher_id )->first();
       
        foreach($request->totalSlots as $slotTime => $slot_id) {
           $divTime = explode('-', $slotTime);
            $data = [
                'teacher_id' => $teacher_id,
                'slotDate' => $request->slotDate,
                'startTime' =>  $divTime[0],
                'endTime' => $divTime[1],
                'duration' => 30,
                'status' => (isset($request->availableTime[$slotTime])) ? 1 : 0,
            ];
           
            if($check_avaible_time){
                TimeAvailable::where('id', $slot_id)->update($data);
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
