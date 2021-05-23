<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FavouriteListController;
use App\Http\Controllers\UserPlayListController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([
    'prefix' => 'auth'
],function(){
    Route::post('login', [UserController::class, 'login']);
    Route::post('register', [UserController::class, 'register']);

    Route::group([
        'middleware' => 'auth:api'
    ],function(){
    Route::post('logout', [UserController::class, 'logout']);
    Route::get('user', [UserController::class, 'user']);
    });
});
Route::group([
    'middleware' => 'auth:api'
],function(){
Route::get('/user/favourite-list', [FavouriteListController::class, 'index']);
Route::get('/user/play-list', [UserPlayListController::class, 'index']);
});
Route::post('user/edit-profile/{id}', [UserController::class, 'updateProfile']);
Route::post('user/add-favoritelist', [FavouriteListController::class, 'addFavorite']);
Route::post('user/delete-favoritelist', [FavouriteListController::class, 'deleteFavorite']);
