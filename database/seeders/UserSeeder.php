<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Users;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         $json = File::get(path:'database/json/users.json');
         $user = collect(json_decode($json));

        $user->each(function($user){
             Users::create([
            'name' => $user->name,
            'email' => $user->email,
            'age' => $user->age,
            'city' => $user->city
        ]);

        });
    }
}
