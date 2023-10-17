<?php

use Illuminate\Support\Facades\Route;
use App\Imports\AlbumsImport;
use Maatwebsite\Excel\Facades\Excel;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/import', function () {

    return Excel::import(new AlbumsImport, 'Data Reference (ALBUM SALES).csv');
});

