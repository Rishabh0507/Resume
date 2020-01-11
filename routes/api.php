<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
// Api for Personal Data
Route::get('fetch_personal_data','Resume@personal');
// Api for education Data
Route::get('fetch_educational_data','Resume@education');
// Api for internship Data
Route::get('fetch_internship_data','Resume@internship');
// Api for training Data
Route::get('fetch_training_data','Resume@training');
// Api for skill Data
Route::get('fetch_skill_data','Resume@skill');
// Api for workSample Data
Route::get('fetch_work_sample_data','Resume@workSample');
// Api for additional Data
Route::get('fetch_additional_data','Resume@additional');
