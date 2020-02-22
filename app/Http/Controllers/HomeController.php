<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth','verified']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $userIfno = User::find(Auth::user()->id);
        
        if($userIfno->user_roleID == env('TEACHAR')){
            return view('teacher.index')->with(compact('userIfno'));
        }

        if($userIfno->user_roleID == env('STUDENT')){
            //echo $this->slug();
            return view('student.index')->with(compact('userIfno'));
        }
    }
}
