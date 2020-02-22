<p><i class="fa fa-clock-o"></i> Select The Time: <strong>{{ date_format(date_create($slotDate), 'd M, Y') }}</strong> </p>
<input type="hidden" name="slotDate" value="<?php echo $slotDate; ?>">

<!-- // if date exist then retrive time slot from database -->
@if(count($get_available_time)>0)
    <div>
    @foreach ($get_available_time as $available_time)
        <label id="label<?php echo $available_time->id; ?>"  <?php echo ( ($available_time->bookingSlot) && ($available_time->bookingSlot->student_id == $user_id) ? 'class="ownbooked" title="You\'re booked this time" onclick=colorToggle('.$available_time->id.')': ( $available_time->bookingSlot ? 'class="booked" title="This time is already booked."' : ($available_time->status != 1 ? 'class="unavailble" title="This time is not available."' : 'onclick=colorToggle('.$available_time->id.')' ))); ?>  for="<?php echo $available_time->id; ?>">
            <?php echo $available_time->slotTime; ?>
        </label>
       
        <input <?php echo ($available_time->status != 1 ? 'disabled' : (($available_time->bookingSlot) && ($available_time->bookingSlot->student_id == $user_id) ? 'checked' : ($available_time->bookingSlot ? 'disabled' : ''))); ?>  name="slot_id[<?php echo $available_time->id; ?>]" style="display: none;" value="<?php echo $available_time->id;; ?>" id="<?php echo $available_time->id; ?>" type="checkbox">

    @endforeach
   </div><p style="text-align:right"> <button class="btn btn-success">Save</button></p>
@else<!--  // not exist date then show this -->

    @for ($i=$start;$i<$end;$i = $i + $interval*60)
        <label title="This time is not available." style="cursor:not-allowed;background:#ccc" id="label<?php echo $i; ?>" for="<?php echo $i; ?>"><?php echo $slot = date('g:i',$i).'-'. date('g:i A',$i+$interval*60); ?>
        </label>
       
        <input disabled style="display: none;" name="availableTime[<?php echo $slot; ?>]" value="<?php echo $slot; ?>" id="<?php echo $i; ?>" type="checkbox">

    @endfor <!-- //end for -->
@endif <!-- //end if -->
