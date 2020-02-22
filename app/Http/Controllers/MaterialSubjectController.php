<?php

namespace App\Http\Controllers;

use App\MaterialSubject;
use Illuminate\Http\Request;

class MaterialSubjectController extends Controller
{

    public function __construct(){
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subjects = MaterialSubject::orderBy('id', 'DESC')->get();
        return view('admin.material-subject')->with(compact('subjects'));
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
     * @param  \App\MaterialSubject  $materialSubject
     * @return \Illuminate\Http\Response
     */
    public function show(MaterialSubject $materialSubject)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MaterialSubject  $materialSubject
     * @return \Illuminate\Http\Response
     */
    public function edit(MaterialSubject $materialSubject)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MaterialSubject  $materialSubject
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MaterialSubject $materialSubject)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MaterialSubject  $materialSubject
     * @return \Illuminate\Http\Response
     */
    public function destroy(MaterialSubject $materialSubject)
    {
        //
    }
}
