<?php

namespace App\Http\Controllers;

use App\Package;
use App\Teacher;
use App\User;
use App\TimeAvailable;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function bookingList()
    {
        $booking_lists = TimeAvailable::with('user')->where('booking_id', '!=' , 0)->where('slotDate', date('Y-m-d'))->get();
        return view('teacher.booking-list')->with(compact('booking_lists'));
    }

    public function timeSlotCalender()
    {
        return view('teacher.setbooking-calender');
    }

    public function students(){
        $students = User::where('user_roleID', 3)->get();
        return view('teacher.students')->with(compact('students'));
    }
    public function package()
    {
        $user_id = Auth::user()->id;
        $get_packages = Package::where('teacherId', $user_id)->where('status', 1)->get();

        return view('teacher.packages')->with(compact('get_packages'));
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
