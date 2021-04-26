<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AlbumController;
use App\Http\Controllers\SongController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/albums', [AlbumController::class, 'getAlbums']);
Route::get('/album-songs/{album_id}', [AlbumController::class, 'getAlbumSongs']);
Route::get('/songs', [SongController::class, 'getPage']);
Route::get('/song/{id}', [SongController::class, 'getSong']); 
// Route::get('/songs/{page}', [SongController::class, 'getPage']); //page là trang thứ bn
// Route::get('/songs-genre/{genre_id}', [SongController::class, 'getSongGenre']);
