<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;

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

Route::get('/', [HomeController::class, 'index']);
Route::get('/detail', [HomeController::class, 'detail']);
Route::get('/cart', [HomeController::class, 'cart']);
///ADMIN////
Route::get('/admin', [AdminController::class, 'index']);
Route::get('/admin/product', [AdminController::class, 'add_product']);
Route::get('/admin/category', [AdminController::class, 'category_list']);
Route::get('/admin/category/add', [AdminController::class, 'category_add']);



