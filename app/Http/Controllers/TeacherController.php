<?php

namespace App\Http\Controllers;

use App\Package;
use App\Teacher;
use App\User;
use App\TimeAvailable;
use App\BookingSlot;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use DB;
class TeacherController extends Controller
{
    
    // Booking calender 
    public function timeSlotCalender()
    {
        return view('teacher.setbooking-calender');
    }
    // get all student list
    public function students(){
        $students = BookingSlot::select('*', 
            DB::raw('sum(booking_status = 1) as booked_class'),
            DB::raw('sum(booking_status = 2) as finish_class') 
        )->groupBy('student_id')->get();

        return view('teacher.students')->with(compact('students'));
    }




    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function show(Teacher $teacher)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function edit(Teacher $teacher)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Teacher $teacher)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Teacher  $teacher
     * @return \Illuminate\Http\Response
     */
    public function destroy(Teacher $teacher)
    {
        //
    }
}
