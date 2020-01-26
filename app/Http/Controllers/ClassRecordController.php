<?php

namespace App\Http\Controllers;

use App\ClassRecord;
use App\RattingList;
use Illuminate\Http\Request;

class ClassRecordController extends Controller
{

    public function class_records()
    {
        $rattings = RattingList::where('status', 1)->get();
        return view('both.class-records')->with(compact('rattings'));
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
