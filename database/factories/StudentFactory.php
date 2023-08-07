<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            's_name' => fake()->name(),
            's_age' => fake()->numberBetween(15,25),
            's_email' => fake()->email(),
            's_addres' => fake()->address(),
            's_city' => fake()->city(),
            's_phone' => fake()->phoneNumber(),
            's_password' => fake()->password()
        ];
    }
}
