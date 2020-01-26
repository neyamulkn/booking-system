<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// admin route
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){
	Route::get('ratting/create', 'RattingListController@create')->name('ratting.create');
	Route::post('ratting/store', 'RattingListController@store')->name('ratting.store');
});

Route::get('teachar/setbooking/calender', 'SetTimeSlotController@booking')->name('setbooking.calender');

// this route teacher & student for both

Route::post('userImage/Update', 'UserController@userImageUpdate')->name('userImageUpdate');

Route::get('contact/list', 'UserController@contactList')->name('contactList');

Route::get('calender/sitebar', 'SetTimeSlotController@calender_sitebar')->name('calender_sitebar');

Route::get('sidebar/booking/list', 'BookingSlotController@get_booking_list')->name('booking_list');

Route::get('class/record', 'ClassRecordController@class_records')->name('class_records');

Route::post('class/feeback', 'FeadbackController@feeback')->name('feeback');


Auth::routes(['verify' => true]);

Route::get('/', 'HomeController@index')->name('home');

// teacher controller

Route::get('booking/list', 'TeacherController@bookingList')->name('bookingList');
Route::get('time-slot/calender', 'TeacherController@timeSlotCalender')->name('timeSlotCalender');

Route::get('gettimeslot', 'SetTimeSlotController@getTimeSlot')->name('gettimeslot');
Route::post('insertTimeSlot', 'SetTimeSlotController@insertTimeSlot')->name('insertTimeSlot');

Route::get('students', 'TeacherController@students')->name('students');

Route::get('package/create', 'PackageController@create')->name('package.create');
Route::post('package/store', 'PackageController@store')->name('package.store');


// payment controller
Route::group(['middleware' => 'auth'], function(){
	Route::post('payment/{packageId}', 'PaymentController@payWithpaypal')->name('paypalPayment');
	Route::get('getpayment/status', 'PaymentController@paymentStatus')->name('paymentStatus');
	Route::get('package/purchase/{packageId}', 'PackageController@purchase')->name('purchase');
});


//student routes
Route::get('booking', 'StudentController@index')->name('booking.index');
Route::get('booking/calender', 'StudentController@bookingCalender')->name('booking.calender');

Route::get('student/gettimeslot', 'BookingSlotController@getTimeSlot')->name('student.gettimeslot');
Route::post('booking/TimeSlot', 'BookingSlotController@bookingTimeSlot')->name('bookingSlot');

Route::get('package', 'StudentController@package')->name('package');


