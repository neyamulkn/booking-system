<?php

namespace App\Http\Controllers;

use App\ClassMaterial;
use App\TeachingMaterial;
use App\TimeAvailable;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class TeachingMaterialController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $user_id = Auth::user()->id;
        if($request->slote_id){
            $slote_id = $request->slote_id;
            Session::put('slote_id', $request->slote_id);
        }else{
            $slote_id = Session::get('slote_id');
        }

        $setMaterial_id = ClassMaterial::where('slote_id', $slote_id)->pluck('material_id')->toArray();

        $materials = TeachingMaterial::orderBy('id', 'DESC')->get();
        return view('common.teaching-material')->with(compact('materials', 'setMaterial_id'));
    }


    public function store(Request $request)
    {

        $this->validate($request, [
            'course_name' => 'required',
            'course_material' => 'required'
        ]);

        $user_id = Auth::user()->id;
        $course_material = $request->file('course_material');
        $new_name = $this->uniquePath($course_material->getClientOriginalName());
        $course_material->move(public_path('materials'), $new_name);

        $data = [
            'course_name' => $request->course_name,
            'course_material' => $new_name,
            'user_id' => $user_id,
            'medium_id' => ($request->medium_id ? $request->medium_id : null),
            'class_id' => ($request->class_id ? $request->class_id : null),
            'subject_id' => ($request->subject_id ? $request->subject_id : null),
        ];

        $insert = TeachingMaterial::create($data);

        if($insert){
            $slote_id = 1;
            $slote_id = ($request->slote_id ? $request->slote_id : Session::get('slote_id'));
            if($slote_id != null){
                ClassMaterial::create(['slote_id' => $slote_id, 'material_id' => $insert->id, 'added_by' => $user_id]);
            }
            Toastr::success('Course materials successfully uploaded.');
        }else{
            Toastr::error('Sorry course materials uploade failed.');
        }
        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TeachingMaterial  $teachingMaterial
     * @return \Illuminate\Http\Response
     */
    public function show(TeachingMaterial $teachingMaterial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TeachingMaterial  $teachingMaterial
     * @return \Illuminate\Http\Response
     */
    public function edit(TeachingMaterial $teachingMaterial)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TeachingMaterial  $teachingMaterial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TeachingMaterial $teachingMaterial)
    {
        //
    }


    public function delete($id)
    {
        $user_id = Auth::user()->id;
        $delete = TeachingMaterial::where('user_id', $user_id)->where('id', $id)->delete();
        if($delete){
            $output = array('status' => 'success', 'msg' => 'Teaching material successfully deleted.');
        }else{
            $output = array('status' => 'error', 'msg' => 'Teaching material can\'t deleted.');
        }
        return response()->json($output);
    }

    public function materialAddRemove(Request $request){
        $slote_id = null;
        $user_id = Auth::user()->id;
        $slote_id = ($request->slote_id ? $request->slote_id : Session::get('slote_id'));
        $check = ClassMaterial::where('slote_id', $slote_id)->where('material_id', $request->material_id)->where('added_by', $user_id)->first();

        if(!$check && $slote_id != null){
            $data = ['slote_id' => $slote_id, 'material_id' => $request->material_id, 'added_by' => $user_id];
            $update = ClassMaterial::create($data);

            if($update){
                $outpur = array('status' => 'success', 'msg' => 'Teaching material added successfully');
            }else{
                $outpur = array('status' => 'error', 'msg' => 'Teaching material didn\'t added');
            }
        }else{
            ClassMaterial::where('slote_id', $slote_id)->where('material_id', $request->material_id)->where('added_by', $user_id)->delete();
            $outpur = array('status' => 'success', 'msg' => 'Teaching material remove successfully');
        }

        return $outpur;

    }

    public function uniquePath($path)
    {
        $check_path = TeachingMaterial::select('course_material')->where('course_material', 'like', '%'.$path)->get();
        if (count($check_path)>0){
            //find until find not used.
            for ($i = 1; $i <= count($check_path); $i++) {
                $newPath = $i.'-'.$path;
                if (!$check_path->contains('course_material', $newPath)) {
                    return $newPath;
                }
            }
        }else{ return $path; }
    }
}
