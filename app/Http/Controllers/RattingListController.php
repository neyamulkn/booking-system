<?php

namespace App\Http\Controllers;

use App\RattingList;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class RattingListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    public function create()
    {
        return view('admin.ratting-create');
    }


    public function store(Request $request)
    {
        $data = [
            'title' => $request->title,
            'summary' => $request->summary,
            'star' => $request->star,
            'whosFor' => $request->whosFor,
        ];
        $insert = RattingList::create($data);
        if($insert){
            Toastr::success('Ratting inserted succesfull.');
        }else{
            Toastr::error('Rattin insert failed.');
        }
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\RattingList  $rattingList
     * @return \Illuminate\Http\Response
     */
    public function show(RattingList $rattingList)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RattingList  $rattingList
     * @return \Illuminate\Http\Response
     */
    public function edit(RattingList $rattingList)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RattingList  $rattingList
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RattingList $rattingList)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\RattingList  $rattingList
     * @return \Illuminate\Http\Response
     */
    public function destroy(RattingList $rattingList)
    {
        //
    }
}
