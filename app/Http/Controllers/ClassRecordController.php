<?php

namespace App\Http\Controllers;

use App\ClassRecord;
use App\RattingList;
use App\BookingSlot;
use Illuminate\Http\Request;
use Auth;
class ClassRecordController extends Controller
{

    // get class record for both user

    public function class_records()
    {
        $data = [];
        $user_id = Auth::user()->id;
        $data['role'] = Auth::user()->user_roleID;
        $booking_lists  = BookingSlot::with(['user:id,name,image'])
            ->where('booking_status', 1);
            
        if($data['role']  == env('TEACHER')){
            $booking_lists  = $booking_lists->where('booking_slots.teacher_id', $user_id);
        }
        if($data['role']  == env('STUDENT')){
            $booking_lists  = $booking_lists->where('booking_slots.student_id', '=' , $user_id);
        }
        $data['get_records']   = $booking_lists->paginate(10);

        $data['rattings'] = RattingList::where('status', 1)->get();
        return view('class-records')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ClassRecord  $classRecord
     * @return \Illuminate\Http\Response
     */
    public function show(ClassRecord $classRecord)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ClassRecord  $classRecord
     * @return \Illuminate\Http\Response
     */
    public function edit(ClassRecord $classRecord)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ClassRecord  $classRecord
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ClassRecord $classRecord)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ClassRecord  $classRecord
     * @return \Illuminate\Http\Response
     */
    public function destroy(ClassRecord $classRecord)
    {
        //
    }
}
