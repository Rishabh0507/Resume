<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\personal_data;
use App\educational_data;
use App\internship_data;
use App\training_data;
use App\skill_data;
use App\worksample_data;
use App\additional_data;
use DB;
class Resume extends Controller
{
    // function for fetching personal data
    public function personal()
    {
       $personal = DB::table('personal_data')->SELECT('*')->get();
       return $personal;

    }
    // function for Educational personal data
    public function education()
    {
        $education = DB::table('educational_data')->SELECT('*')->get();
        return $education;
    }
    // function for Internship personal data
    public function internship()
    {
        $internship = DB::table('internship_data')->SELECT('*')->get();
        return $internship;
    }
    // function for fetching Training data
    public function training()
    {
        $training = DB::table('training_data')->SELECT('*')->get();
        return $training;
    }
    // function for fetching Skill data
    public function skill()
    {
        $skill = DB::table('skill_data')->SELECT('*')->get();
        return $skill;
    }
    // function for fetching Work Sample data
    public function workSample()
    {
        $workSample = DB::table('worksample_data')->SELECT('*')->get();
        return $workSample;
    }
    // function for fetching Additional data
    public function additional()
    {
        $additional = DB::table('additional_data')->SELECT('*')->get();
        return $additional;
    }
}
