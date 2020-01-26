<div id="sitebar_calender">
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
    .sitebar th:nth-of-type(1), .sitebar td:nth-of-type(1) {
        color: red;
    }
    .sitebar th:nth-of-type(7), .sitebar td:nth-of-type(7) {
        color: blue;
    }

</style>
<?php
// Set your timezone
date_default_timezone_set('Asia/Tokyo');
// Get prev & next month
if (isset($ym_sitebar) && !empty($ym_sitebar)) {
    $ym_sitebar = $ym_sitebar;
    sitebar_calender($ym_sitebar);
}
else {
    // This month
    $ym_sitebar = date('Y-m');
    sitebar_calender($ym_sitebar);
}

function sitebar_calender($ym_sitebar){
    //select option change
    $yearMonth = explode('-', $ym_sitebar);
    $year = $yearMonth[0];
    $month = $yearMonth[1];
    $dateYear = ($year != '')?$year:date("Y");
    $dateMonth = ($month != '')?$month:date("m");

    // Check format
    $timestamp = strtotime($ym_sitebar . '-01');
    if ($timestamp === false) {
        $ym_sitebar = date('Y-m');
        $timestamp = strtotime($ym_sitebar . '-01');
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

        $date = $ym_sitebar . '-' . $day;

        $week .= '<td onclick="show_booking_list('."'".$date."'".')" class="'.($today == $date ? "today": "").'">'.($date == '2019-11-14' ? "ok" : ""). $day;

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




        <h3><a onclick="set_calender_sitebar('<?php echo $prev; ?>')">Prev</a>
            <select name="month_dropdown_sitebar" id="month_dropdown_sitebar"><?php echo getAllMonths_sitebar($dateMonth); ?></select>
            <select name="year_dropdown_sitebar" id="year_dropdown_sitebar"><?php echo getYearList_sitebar($dateYear); ?></select>
            <a onclick="set_calender_sitebar('<?php echo $next; ?>')">Next</a>
            <a onclick="set_calender_sitebar('<?php echo date('Y-m'); ?>')">Today</a>
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



<?php }


function getAllMonths_sitebar($selected = ''){
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
function getYearList_sitebar($selected = ''){
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
         function set_calender_sitebar(date) {
            $.ajax({
               type:'get',
               url:'{{route("calender_sitebar")}}',
               data:{ym_sitebar:date},
               success:function(data) {
                  $("#sitebar_calender").html(data);
               }
            });
        }

        $('#month_dropdown_sitebar').on('change',function(){
               set_calender_sitebar($('#year_dropdown_sitebar').val()+"-"+$('#month_dropdown_sitebar').val());
            });
        $('#year_dropdown_sitebar').on('change',function(){
            set_calender_sitebar($('#year_dropdown_sitebar').val()+"-"+$('#month_dropdown_sitebar').val());
        });

      </script>

    <script type="text/javascript">
        function show_booking_list(date){

             $.ajax({
               type:'get',
               url:'{{route("booking_list")}}',
               data:{ym_sitebar:date},
               success:function(data) {
                  document.getElementById('getBookingList').innerHTML = data;
               }
            });
        }
    </script>
</div>
