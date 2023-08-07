<?php

use App\Http\Controllers\UserControlller;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(UserControlller::class)->group(function(){

    Route::get('/','showuser')->name('home');
    Route::post('/add','adduser')->name('addUser');

    Route::get('/update/{id}','updatepage')->name('update.page');
    Route::put('/update/{id}','updateuser')->name('update.user');

    Route::get('/delete/{id}','userdelete')->name('delete.user');
    Route::get('/user/{id}','singleuser')->name('view.user');
});

Route::view('newuser','/adduser');


