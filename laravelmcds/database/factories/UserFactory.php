<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    static $password;

    return [
        'username'       => $faker->username,
        'firstname'      => $faker->firstname,
        'lastname'       => $faker->lastname,
        'email'          => $faker->unique()->safeEmail,
        'password'       => $password ?: $password = bcrypt('secret'),
        'role'           => $faker->randomElement($array = array('Admin', 'Editor')),
        'photo'          => $faker->image('public/imgs', 320, 320, 'people'),
        'colortheme'     => $faker->colorname,
        'country'        => $faker->country,
        'phonenumber'    => $faker->phonenumber,
        'birthdate'      => $faker->date('Y-m-d'),
        'remember_token' => str_random(10),
    ];
});



