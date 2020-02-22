    <p><i class="fa fa-clock-o"></i> Select The Time: <strong>{{ date_format(date_create($slotDate), 'd M, Y') }}</strong> </p>
    <input type="hidden" name="slotDate" value="<?php echo $slotDate; ?>">

    <div class="">
<!-- // if date exist then retrive time slot from database -->
    @if(count($get_avaible_time)>0)
        @foreach ($get_avaible_time as $avaible_time)
           <label  onclick="colorToggle(<?php echo $avaible_time->id; ?>)" id="label<?php echo $avaible_time->id; ?>" <?php echo ($avaible_time->bookingSlot ? 'class="booked" title="This time is booked"' : ($avaible_time->status == 1 ? 'class="active"' : '' )); ?> for="<?php echo $avaible_time->id; ?>">
            <?php echo $avaible_time->slotTime; ?>
            </label>
            <input type="hidden" name="totalSlots[<?php echo $avaible_time->slotTime; ?>]">
            <input type="hidden" name="Slot_id[<?php echo $avaible_time->slotTime; ?>]" value="<?php echo $avaible_time->id; ?>">
            <input  style="display: none;" name="availableTime[<?php echo $avaible_time->slotTime; ?>]" value="<?php echo $avaible_time->slotTime;; ?>" id="<?php echo $avaible_time->id; ?>" <?php echo ($avaible_time->status == 1 ) ? 'checked' : '' ?> type="checkbox">

        @endforeach
    @else <!-- //if not exist date then show this -->
    
        @for ($i=$start;$i<$end;$i = $i + $interval*60)
       
            <label onclick="colorToggle(<?php echo $i; ?>)" id="label<?php echo $i; ?>" for="<?php echo $i; ?>"><?php echo $slot = date('g:i',$i).'-'. date('g:i A',$i+$interval*60); ?>
             </label>
                <input type="hidden" name="totalSlots[<?php echo $slot; ?>]">
                <input style="display: none;" name="availableTime[<?php echo $slot; ?>]" value="<?php echo $slot; ?>" id="<?php echo $i; ?>" type="checkbox">

        @endfor
    @endif
    </div><br/>
    <p style="text-align:right"> <button class="btn btn-success">Save</button></p>