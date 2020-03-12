<?php

namespace App\Http\Controllers;

use App\BookingSlot;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\TimeAvailable;
use App\TeachingMaterial;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
class BookingSlotController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    // get booking calender for student
    public function getTimeSlot(Request $request){

        $data = [];
        $data['start']= strtotime('06:00');
        $data['end']= strtotime('24:00');
        $data['interval'] = 30;
        $data['slotDate'] = $request->ym;

        $data['user_id'] = Auth::user()->id;
        $data['get_available_time'] = TimeAvailable::with(['bookingSlot' => function($query)
                                    {
                                        $query->where('booking_status', 1);   // check booking status active
                                    }
                                ])->where('slotDate', $data['slotDate'])->get();

        // multi teacher
        // $data['get_available_time'] = TimeAvailable::with(['bookingSlot' => function($query){
            // check booking status active
        // $query->where('booking_status', 1); }])->where('slotDate', $data['slotDate'])
        // ->where('teacher_id', $teacher_id)->get();

        echo view('student.inc.time-slote', $data);
    }

    // booking time slot by student
    public function bookingTimeSlot(Request $request)
    {

//        dd($request->all());
        $student_id = Auth::user()->id;
        $booking_time = $unavailableTime = null;
        // reset all booking time by student id this date
        $booking_reset = BookingSlot::where('slote_date', $request->slotDate)
            ->where('student_id', $student_id)
            ->delete();

        if($request->slot_id){
            foreach($request->slot_id as $slot_id) {
                // check this time set or not by teacher
                $checkAvailable = TimeAvailable::where('slotDate', $request->slotDate)->where('id', $slot_id)->first();
                if($checkAvailable->status == 1) {
                    $booking_time = BookingSlot::create(['slote_id' => $slot_id, 'teacher_id' => $checkAvailable->teacher_id, 'student_id' => $student_id, 'booking_date' => now(), 'slote_date' => $request->slotDate]);
                }else{
                    $unavailableTime = 1;
                    Toastr::error('You are trying to book the wrong time slot '. $checkAvailable->startTime);
                }
            }
        }

        // Session use for select booking slot date view page
        Session::flash('slotDate', $request->slotDate);

        if ($unavailableTime != null){
            return back();
        }
        elseif($booking_reset){
            Toastr::success('Your booking successfully updated this date '.$request->slotDate);
        }elseif($booking_time){
            Toastr::success('Your booking successfully completed.');
        }
        else{
            Toastr::error('Sorry your booking failed.');
        }
        return back();
    }

    // get booking list both (student & teacher) by date ajax request

    function get_booking_list(Request $request){
        $data = [];
        $user_id = Auth::user()->id;
        $data['role'] = Auth::user()->user_roleID;
        $data['slotDate'] = ($request->ym_sitebar) ? $request->ym_sitebar : date('Y-m-d');

        $booking_lists  = BookingSlot::with(['ClassMaterials', 'user:id,name,image,username', 'bookingSlot'])
        ->where('slote_date', $data['slotDate']);

        if($data['role'] == env('TEACHER')){
            $booking_lists  = $booking_lists->where('teacher_id', $user_id);
        }
        if($data['role'] == env('STUDENT')){
            $booking_lists  = $booking_lists->where('student_id', $user_id);
        }
        $data['booking_lists']  = $booking_lists->where('booking_status', 1)->get();
        //check ajax request set
        if($request->ym_sitebar){
            echo view('common.booking-list')->with($data);
        }else{
            return view('booking-list')->with($data);
        }

    }

    public function bookingSessionIns($id){
        $user_id = Auth::user()->id;
        $data['role'] = Auth::user()->user_roleID;

        $booking_lists  = BookingSlot::with(['ClassMaterials', 'user:id,name,image,username', 'bookingSlot'])
        ->leftJoin('time_availables', function ($join) {
            $join->on('booking_slots.slote_id', '=', 'time_availables.id');
        });

        if($data['role'] == env('TEACHER')){
            $booking_lists  = $booking_lists->where('teacher_id', $user_id);
        }
        if($data['role'] == env('STUDENT')){
            $booking_lists  = $booking_lists->where('student_id', '=' , $user_id);
        }
        $data['booking_list']  = $booking_lists->where('booking_slots.id', $id)->first();
       return view('session-instruction')->with($data);
    }

    //get booking list by teacher id & date
    public function bookingList()
    {
        $booking_lists = BookingSlot::with('user')->where('student_id', '!=' , 0)->where('slote_date', date('Y-m-d'))->get();


    }

    public function getPrefered(){
        
    }
}
