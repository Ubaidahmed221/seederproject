<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\student;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // student::factory()->count(20)->create();

      $this->call([
        StudentSeeder::class,
        UserSeeder::class

      ]);


    }
}
