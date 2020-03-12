    <p><i class="fa fa-clock-o"></i> Select The Time: <strong>{{ date_format(date_create($slotDate), 'd M, Y') }}</strong> </p>
    <input type="hidden" name="slotDate" value="<?php echo $slotDate; ?>">

    <div class="">
<!-- // if date exist then retrive time slot from database -->
    @if(count($get_available_time)>0)
        @foreach ($get_available_time as $available_time)

            <?php  
                $slotTime = $available_time->startTime.'-'.$available_time->endTime;
            ?>
           <label  onclick="colorToggle(<?php echo $available_time->id; ?>)" id="label<?php echo $available_time->id; ?>" <?php echo ($available_time->bookingSlot ? 'class="booked" title="This time is booked"' : ($available_time->status == 1 ? 'class="active"' : '' )); ?> for="<?php echo $available_time->id; ?>">
            {{ Carbon\Carbon::parse($available_time->startTime)->format('g:i').'-'.Carbon\Carbon::parse($available_time->endTime)->format('g:i A') }}
            
            </label>
            <input type="hidden" name="totalSlots[<?php echo $slotTime; ?>]"  value="<?php echo $available_time->id; ?>">
            <input  style="display: none;" name="availableTime[<?php echo $slotTime; ?>]" value="<?php echo $slotTime; ?>" id="<?php echo $available_time->id; ?>" <?php echo ($available_time->status == 1 ) ? 'checked' : '' ?> type="checkbox">

        @endforeach
    @else <!-- //if not exist date then show this -->
    
        @for ($i=$start;$i<$end;$i = $i + $interval*60)
            <?php  
                $startTime = date('H:i:s', $i); $endTime = date('H:i:s', $i+$interval*60); 
                $slot = $startTime.'-'.$endTime;
            ?>

            <label onclick="colorToggle(<?php echo $i; ?>)" id="label<?php echo $i; ?>" for="<?php echo $i; ?>"> {{Carbon\Carbon::parse($startTime)->format('g:i').'-'.Carbon\Carbon::parse($endTime)->format('g:i A')}}
             </label>
                <input type="hidden" name="totalSlots[<?php echo $slot; ?>]">
                <input style="display: none;" name="availableTime[<?php echo $slot; ?>]" value="<?php echo $slot; ?>" id="<?php echo $i; ?>" type="checkbox">

        @endfor
    @endif
    </div><br/>
    <p style="text-align:right"> <button class="btn btn-success">Save</button></p>