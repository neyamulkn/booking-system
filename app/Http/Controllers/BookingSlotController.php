<?php

namespace App\Http\Controllers;

use App\BookingSlot;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\TimeAvailable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class BookingSlotController extends Controller
{
    function getTimeSlot(Request $request){
        $start=strtotime('06:00');
        $end=strtotime('24:00');
        $interval = 30;
        $output = $request->ym;

        ?>
        <p><i class="fa fa-clock-o"></i> Select The Time: <strong><?php echo date_format(date_create($output), 'd M, Y'); ?></strong></p>
        <input type="hidden" name="slotDate" value="<?php echo $output; ?>">

        <?php
        $user_id = Auth::user()->id;
        $get_avaible_time = TimeAvailable::where('slotDate', $output)->get();
        //multi teacher
        // $get_avaible_time = TimeAvailable::where('slotDate', $output)->where('teacher_id', $teacher_id)->get();
        // if date exist then retrive time slot from database
        if(count($get_avaible_time)>0){
            foreach ($get_avaible_time as $avaible_time) { ?>
                <label id="label<?php echo $avaible_time->id; ?>"  <?php echo ( $avaible_time->booking_id == $user_id ? 'class="ownbooked" title="You\'re booked this time" onclick=colorToggle('.$avaible_time->id.')': ( $avaible_time->booking_id != 0 ? 'class="booked" title="This time is already booked."' : ($avaible_time->status != 1 ? 'class="unavailble" title="This time is not available."' : 'onclick=colorToggle('.$avaible_time->id.')' ))); ?>  for="<?php echo $avaible_time->id; ?>">
                    <?php echo $avaible_time->slotTime; ?>
                </label>
                <input type="hidden" name="totalSlots[<?php echo $avaible_time->id; ?>]" value="<?php echo $avaible_time->id; ?>">
                <input <?php echo ($avaible_time->status != 1 ? 'disabled' : ($avaible_time->booking_id == $user_id ? 'checked' : ($avaible_time->booking_id != 0 ? 'disabled' : ''))); ?>  name="Slot_id[<?php echo $avaible_time->id; ?>]" style="display: none;" value="<?php echo $avaible_time->id;; ?>" id="<?php echo $avaible_time->id; ?>" type="checkbox">

            <?php } // endforeach
            echo '<br/><p style="text-align:right"> <button class="btn btn-success">Save</button></p>';
        }else // not exist date then show this
        {
            for ($i=$start;$i<$end;$i = $i + $interval*60)
            { ?>
                <label title="This time is not available." style="cursor:not-allowed;background:#ccc" id="label<?php echo $i; ?>" for="<?php echo $i; ?>"><?php echo $slot = date('g:i',$i).'-'. date('g:i A',$i+$interval*60); ?>
                </label>
                <input type="hidden" name="totalSlots[<?php echo $slot; ?>]">
                <input disabled style="display: none;" name="availableTime[<?php echo $slot; ?>]" value="<?php echo $slot; ?>" id="<?php echo $i; ?>" type="checkbox">

            <?php   } //end for
        } //end if

    }


    public function bookingTimeSlot(Request $request)
    {

        $student_id = Auth::user()->id;
        $booking_time = null;
        // reset this student booking time
        TimeAvailable::where('slotDate', $request->slotDate)
            ->where('booking_date', date("Y-m-d")) // booking cancel under same date
            ->where('booking_id', $student_id)
            ->update(['booking_id' => 0, 'booking_date' => null]);

        $get_avaible_times = TimeAvailable::where('slotDate', $request->slotDate)->get();
        //multi teacher
        // $get_avaible_time = TimeAvailable::where('slotDate', $request->slotDate)->where('teacher_id', $teacher_id)->get();
        if($request->Slot_id){
            foreach($get_avaible_times as $avaible_time) {

                if(in_array($avaible_time->id, $request->Slot_id) && $avaible_time->booking_id == 0){
                    echo $avaible_time->id;
                    $booking_time = TimeAvailable::where('id', $avaible_time->id)->update(['booking_id' => $student_id, 'booking_date' => date("Y-m-d")]);
                }
            }

            if($booking_time){
                Toastr::success('Your booking successfully completed.');
            }else{
                Toastr::error('Sorry your booking failed.');
            }
        }else{
            Toastr::success('Your booking successfully updated this date '.$request->slotDate);
        }
        Session::flash('slotDate', $request->slotDate);
        return back();
    }


    function get_booking_list(Request $request){
        $user_id = Auth::user()->id;
        $role = Auth::user()->user_roleID;
        $slotDate = $request->ym_sitebar;

        $booking_lists = TimeAvailable::with('user')->where('slotDate', $slotDate);
        if($role == env('TEACHAR')){
            $booking_lists = $booking_lists->where('teacher_id', '=', $user_id)->where('booking_id', '!=' , 0);
        }if($role == env('STUDENT')){
            $booking_lists = $booking_lists->where('booking_id', '=' , $user_id);
        }
        $booking_lists = $booking_lists->get();
        echo view('both.booking-list')->with(compact('booking_lists', 'slotDate'));
    }
}
