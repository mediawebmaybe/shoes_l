<?php

use Illuminate\Support\Facades\Route;

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


Route::resource('/', 'App\Http\Controllers\HomeController');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::resource('products', 'App\Http\Controllers\ProductsController');

Route::resource('category', 'App\Http\Controllers\CategoryController');


Route::get('/cart/checkout', 'App\Http\Controllers\CartController@checkout')->name('cart.checkout');
Route::resource('cart/add', 'App\Http\Controllers\CartController');
Route::resource('cart', 'App\Http\Controllers\CartController');

Route::get('about/', function () {
    return view('about');
});
