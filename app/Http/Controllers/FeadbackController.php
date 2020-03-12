<?php

namespace App\Http\Controllers;

use App\Feadback;
use App\RattingList;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class FeadbackController extends Controller
{

    public function index()
    {
        //
    }

    public function feeback(Request $request)
    {
        //dd($request->rating);
       
        foreach ($request->rating as $rating_id => $rating) {
           $data = [
                'rating_id' => $rating_id,
                'rating' => $rating
           ];
            var_dump($data);
        }

       


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Feadback  $feadback
     * @return \Illuminate\Http\Response
     */
    public function show(Feadback $feadback)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Feadback  $feadback
     * @return \Illuminate\Http\Response
     */
    public function edit(Feadback $feadback)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Feadback  $feadback
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Feadback $feadback)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Feadback  $feadback
     * @return \Illuminate\Http\Response
     */
    public function destroy(Feadback $feadback)
    {
        //
    }
}
