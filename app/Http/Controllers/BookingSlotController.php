<?php

namespace App\Http\Controllers;

use App\BookingSlot;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\TimeAvailable;
use App\TeachingMaterial;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class BookingSlotController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    public function getTimeSlot(Request $request){

        $data = [];
        $data['start']= strtotime('06:00');
        $data['end']= strtotime('24:00');
        $data['interval'] = 30;
        $data['slotDate'] = $request->ym;

        $data['user_id'] = Auth::user()->id;
        $data['get_available_time'] = TimeAvailable::with(['bookingSlot' => function($query){  // check booking status active
            $query->where('booking_status', 1); }])->where('slotDate', $data['slotDate'])->get();
        //multi teacher
        // // $data['get_available_time'] = TimeAvailable::with(['bookingSlot' => function($query){  // check booking status active
        //     $query->where('booking_status', 1); }])->where('slotDate', $data['slotDate'])->where('teacher_id', $teacher_id)->get();
        echo view('student.inc.time-slote', $data);
    }


    public function bookingTimeSlot(Request $request)
    {

        //dd($request->all());
        $student_id = Auth::user()->id;
        $booking_time = null;
        // reset all booking time by student id this date
        $booking_reset = BookingSlot::where('slote_date', $request->slotDate)
            ->where('student_id', $student_id)
            ->delete();

        if($request->slot_id){

            foreach($request->slot_id as $slot_id) {
            
                $booking_time = BookingSlot::create(['slote_id' => $slot_id, 'student_id' => $student_id, 'booking_date' => date("Y-m-d h:m:i"), 'slote_date' => $request->slotDate]);
            
            }
        }

        if($booking_reset){
            Toastr::success('Your booking successfully updated this date '.$request->slotDate);
        }elseif($booking_time){
            Toastr::success('Your booking successfully completed.');
        }
        else{
            Toastr::error('Sorry your booking failed.');
        }
        Session::flash('slotDate', $request->slotDate);
        return back();
    }


    function get_booking_list(Request $request){
        $user_id = Auth::user()->id;
        $role = Auth::user()->user_roleID;
        $slotDate = $request->ym_sitebar;

        // $booking_lists = BookingSlot::with(['ClassMaterials'])
        // ->with(['user:id,name,image'])
        // ->where('slote_date', $slotDate)
        // ->where('student_id', '=' , $user_id)->get();

        $booking_lists  = BookingSlot::with(['ClassMaterials', 'user:id,name,image'])->where('slote_date', $slotDate)->leftJoin('time_availables', function ($join) {
                $join->on('booking_slots.slote_id', '=', 'time_availables.id');
            });
        
        if($role == env('TEACHAR')){
            $booking_lists  = $booking_lists->where('teacher_id', $user_id);
        }
        if($role == env('STUDENT')){
            $booking_lists  = $booking_lists->where('student_id', '=' , $user_id);
        }
        $booking_lists  = $booking_lists->get();

        echo view('common.booking-list')->with(compact('booking_lists', 'slotDate'));
    }
}
