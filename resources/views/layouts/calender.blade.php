
    <div id="get_celendar">
<style>

    h3 {
        margin-bottom: 30px;
    }
    th {
        height: 30px;
        text-align: center;
    }

    .today {
        background: orange;
    }
    /*th:nth-of-type(1), td:nth-of-type(1) {*/
    /*    color: red;*/
    /*}*/
    /*th:nth-of-type(7), td:nth-of-type(7) {*/
    /*    color: blue;*/
    /*}*/

</style>
<?php
// Set your timezone
date_default_timezone_set('Asia/Tokyo');
// Get prev & next month
if (isset($ym) && !empty($ym)) {
    $ym = $ym;
    get_celendar($ym);
}
else {
    // This month
    $ym = date('Y-m');
    get_celendar($ym);
}

function get_celendar($ym){
    //select option change
    $yearMonth = explode('-', $ym);
    $year = $yearMonth[0];
    $month = $yearMonth[1];
    $dateYear = ($year != '')?$year:date("Y");
    $dateMonth = ($month != '')?$month:date("m");

    // Check format
    $timestamp = strtotime($ym . '-01');
    if ($timestamp === false) {
        $ym = date('Y-m');
        $timestamp = strtotime($ym . '-01');
    }
    // Today
    $today = date('Y-m-j', time());
    // For H3 title
    $html_title = date('Y / m', $timestamp);
    // Create prev & next month link     mktime(hour,minute,second,month,day,year)
    $prev = date('Y-m', mktime(0, 0, 0, date('m', $timestamp)-1, 1, date('Y', $timestamp)));
    $next = date('Y-m', mktime(0, 0, 0, date('m', $timestamp)+1, 1, date('Y', $timestamp)));
    // You can also use strtotime!
    // $prev = date('Y-m', strtotime('-1 month', $timestamp));
    // $next = date('Y-m', strtotime('+1 month', $timestamp));
    // Number of days in the month
    $day_count = date('t', $timestamp);

    // 0:Sun 1:Mon 2:Tue ...
    $str = date('w', mktime(0, 0, 0, date('m', $timestamp), 1, date('Y', $timestamp)));
    //$str = date('w', $timestamp);
    // Create Calendar!!
    $weeks = array();
    $week = '';
    // Add empty cell
    $week .= str_repeat('<td></td>', $str);
    for ( $day = 1; $day <= $day_count; $day++, $str++) {

        $date = $ym . '-' . $day;

        $week .= '<td onclick="get_timeSlot('."'".$date."'".')" class="'.($today == $date ? "today": "").'">'.($date == '2019-11-14' ? "ok" : ""). $date;

        $week .= '</td>';

        // End of the week OR End of the month
        if ($str % 7 == 6 || $day == $day_count) {
            if ($day == $day_count) {
                // Add empty cell
                $week .= str_repeat('<td></td>', 6 - ($str % 7));
            }
            $weeks[] = '<tr>' . $week . '</tr>';
            // Prepare for new week
            $week = '';
        }
    }
?>



        <h3><a onclick="set_calender('<?php echo $prev; ?>')">Prev</a>
            <select name="month_dropdown" id="month_dropdown"><?php echo getAllMonths($dateMonth); ?></select>
            <select name="year_dropdown" id="year_dropdown"><?php echo getYearList($dateYear); ?></select>
            <a onclick="set_calender('<?php echo $next; ?>')">Next</a>
            <a onclick="set_calender('<?php echo date('Y-m'); ?>')">Today</a>
        </h3>

        <table class="table table-bordered">
            <tr>
                <th>Sun</th>
                <th>Mon</th>
                <th>Tue</th>
                <th>Wed</th>
                <th>Thu</th>
                <th>Fri</th>
                <th>Sat</th>
            </tr>
            <?php
                foreach ($weeks as $week) {
                    echo $week;
                }
            ?>
        </table>

        <div id="show_time_slot"></div>


<?php }


function getAllMonths($selected = ''){
    $options = '';
    for($i=1;$i<=12;$i++)
    {
        $value = ($i < 01)?'0'.$i:$i;
        $selectedOpt = ($value == $selected)?'selected':'';
        $options .= '<option value="'.$value.'" '.$selectedOpt.' >'.date("F", mktime(0, 0, 0, $i+1, 0, 0)).'</option>';
    }
    return $options;
}

/*
 * Get years options list.
 */
function getYearList($selected = ''){
    $options = '';
    for($i=2019;$i<=date('Y')+10;$i++)
    {
        $selectedOpt = ($i == $selected)?'selected':'';
        $options .= '<option value="'.$i.'" '.$selectedOpt.' >'.$i.'</option>';
    }
    return $options;
} ?>

<!-- <script src = "jquery.js"></script> -->
        <script>
         function set_calender(date) {
            $.ajax({
               type:'get',
               url:'{{url("booking")}}',
               data:{ym:date},
               success:function(data) {
                  $("#get_celendar").html(data);
               }
            });
        }

        $('#month_dropdown').on('change',function(){
               set_calender($('#year_dropdown').val()+"-"+$('#month_dropdown').val());
            });
            $('#year_dropdown').on('change',function(){
                set_calender($('#year_dropdown').val()+"-"+$('#month_dropdown').val());
            });

      </script>

    <script type="text/javascript">
        function get_timeSlot(date){
             $.ajax({
               type:'get',
               url:'{{route("gettimeslot")}}',
               data:{ym:date},
               success:function(data) {
                  document.getElementById('show_time_slot').innerHTML = data;
               }
            });
        }
    </script>
</div>
