<?php

namespace Database\Seeders;

use App\Models\student;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i = 1; $i <= 20; $i++){
            student::create([
                's_name' => fake()->name(),
                's_email' => fake()->unique()->email(),
            ]);
        }


        // $students->each(function($student){
        //     student::insert($student);

        // });


        //  $json = File::get(path:'database/json/students.json');
        //  $students = collect(json_decode($json));

        // $students->each(function($student){
        //      student::create([
        //     's_name' => $student->s_name,
        //     's_email' => $student->s_email
        // ]);

        // });

    }
}
