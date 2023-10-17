<?php

use App\Http\Controllers\AlbumController;
use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('register',[App\Http\Controllers\AuthController::class, 'register']);
Route::post('login',[App\Http\Controllers\AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function() {
    Route::get('user',[App\Http\Controllers\AuthController::class, 'user']);
    Route::get('albums',[App\Http\Controllers\AlbumController::class, 'getAllAlbums']);
    Route::get('albums/{id}',[App\Http\Controllers\AlbumController::class, 'viewAlbum']);
    Route::patch('albums/update/{id}',[App\Http\Controllers\AlbumController::class, 'updateAlbum']);
    Route::delete('albums/delete/{id}',[App\Http\Controllers\AlbumController::class, 'deleteAlbum']);
    Route::post('albums/image/{id}',[App\Http\Controllers\AlbumController::class, 'uploadImage']);

    Route::get('artists',[App\Http\Controllers\ArtistController::class, 'getAllArtists']);
    Route::get('artists/{id}',[App\Http\Controllers\ArtistController::class, 'viewArtist']);
    Route::patch('artists/update/{id}',[App\Http\Controllers\ArtistController::class, 'updateArtist']);
    Route::delete('artists/delete/{id}',[App\Http\Controllers\ArtistController::class, 'deleteArtist']);


    Route::post('logout',[App\Http\Controllers\AuthController::class, 'logout']);
});
