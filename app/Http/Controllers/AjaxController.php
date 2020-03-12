<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AjaxController extends Controller
{


    public function get_state($id=null)
    {
        $output = '';
        $get_states = DB::table('states')->where('country_id', $id)->get();
        if(count($get_states)>0){
            $output .= '<option selected value="0">Select State</option>';
            foreach($get_states as $state){
                $output .='<option value="'.$state->id.'">'.$state->name.'</option>';
            }
        }
        echo $output;
    }


    public function get_city($id=null)
    {
        $output = '';
        $get_cities = DB::table('cities')->where('state_id', $id)->get();
        if(count($get_cities)>0){
            $output .= '<option selected value="0">Select City</option>';
            foreach($get_cities as $city){
                $output .='<option value="'.$city->id.'">'.$city->name.'</option>';
            }
        }
        echo $output;
    }

}
