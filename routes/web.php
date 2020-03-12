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

Route::prefix('admin')->name('admin.')->middleware('auth')->group( function() {
	Route::get('material/subject', 'MaterialSubjectController@index')->name('subjects');
	Route::post('material/subject/store', 'MaterialSubjectController@store')->name('subject.store');
	Route::get('material/subject/delete', 'MaterialSubjectController@delete()')->name('subject.delete');

	Route::get('ratting/create', 'RattingListController@create')->name('ratting.create');
	Route::post('ratting/store', 'RattingListController@store')->name('ratting.store');
});

Route::get('teachar/setbooking/calender', 'SetTimeSlotController@booking')->name('setbooking.calender');

// this route teacher & student for both
Route::get('dashboard', 'UserController@dashboard')->name('dashboard');
Route::get('profile/{username?}', 'UserController@profile')->name('profile');
Route::post('userImage/update', 'UserController@userImageUpdate')->name('userImageUpdate');
Route::post('update/profile', 'UserController@updateProfile')->name('updateProfile');
Route::post('update/contact', 'UserController@updateContact')->name('updateContact');

Route::get('contact/list', 'UserController@contactList')->name('contactList');

Route::get('calender/sitebar', 'SetTimeSlotController@calender_sitebar')->name('calender_sitebar');

// sidebar & direct booking list
Route::get('booking/list', 'BookingSlotController@get_booking_list')->name('bookingList');
Route::get('booking/session/instruction/{id?}', 'BookingSlotController@bookingSessionIns')->name('bookingSessionIns');

Route::get('class/record', 'ClassRecordController@class_records')->name('class_records');

Route::post('class/feeback', 'FeadbackController@feeback')->name('feeback');

Route::get('teaching/material/{slote_id?}', 'TeachingMaterialController@index')->name('teaching.material');
Route::post('teaching/material/store', 'TeachingMaterialController@store')->name('material.store');
Route::post('teaching/material/AddRemove', 'TeachingMaterialController@materialAddRemove')->name('materialAddRemove');
Route::get('teaching/material/delete/{id}', 'TeachingMaterialController@delete')->name('material.delete');


Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('features', 'HomeController@features')->name('features');
Route::get('reviews', 'HomeController@reviews')->name('reviews');
Route::get('pricing', 'HomeController@pricing')->name('pricing');
Route::get('privacy-policy', 'HomeController@privacy_policy')->name('privacy_policy');
Route::get('terms-of-use', 'HomeController@terms_of_use')->name('terms_of_use');




Route::get('country/state/{id}', 'AjaxController@get_state')->name('get_state');
Route::get('country/city/{id}', 'AjaxController@get_city')->name('get_city');

// teacher controller


Route::get('calender/time-slot', 'TeacherController@timeSlotCalender')->name('timeSlotCalender');

Route::get('gettimeslot', 'SetTimeSlotController@getTimeSlot')->name('gettimeslot');
Route::post('insertTimeSlot', 'SetTimeSlotController@insertTimeSlot')->name('insertTimeSlot');

Route::get('client/list', 'TeacherController@students')->name('students');

Route::get('package/create', 'PackageController@create')->name('package.create');
Route::post('package/store', 'PackageController@store')->name('package.store');


// payment controller
Route::group(['middleware' => 'auth'], function(){
	Route::post('payment/{packageId}', 'PaymentController@payWithpaypal')->name('paypalPayment');
	Route::get('getpayment/status', 'PaymentController@paymentStatus')->name('paymentStatus');
	Route::get('package/purchase', 'PackageController@purchase')->name('purchase');
	Route::get('package/purchase/list', 'PackageController@purchaseList')->name('purchaseList');

	//custom payment from teacherjackonline
	Route::get('package/purchase/{packageId}', 'HomeController@customPayment');
});


//student routes

Route::get('calender/booking', 'StudentController@index')->name('booking.index');
//get booking calender by date(ajax request)
Route::get('get/booking/calender', 'StudentController@bookingCalender')->name('booking.calender');

Route::get('student/gettimeslot', 'BookingSlotController@getTimeSlot')->name('student.gettimeslot');
Route::post('booking/TimeSlot', 'BookingSlotController@bookingTimeSlot')->name('bookingSlot');

Route::get('package/list', 'StudentController@package')->name('package');


