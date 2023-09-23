<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\RendezVousController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::get('rendezvous/annules', [RendezVousController::class, 'annules']);
// Route::apiResource('rendezvous', RendezVousController::class);
// Route::prefix('rendezvous')->group(function () {
//     Route::apiResource('rendezvous', RendezVousController::class);
// });


// Admin Routes
// Route::apiResource('admin', AdminController::class)->middleware('auth:sanctum');
// Route::post('/admin', [AdminController::class, 'store']);
// Route::get('/admin', [AdminController::class, 'index']);
// Route::get('/admin/{id}', [AdminController::class, 'show']);
// Route::put('/admin/{id}', [AdminController::class, 'update']);
// Route::delete('/admin/{id}', [AdminController::class, 'destroy']);

// Route::post('/login', [AdminController::class, 'login']);
// Route::post('/logout', [AdminController::class, 'logout']);
// ->middleware('auth:sanctum');

//user pi
// Route::get('/users', [UserController::class, 'index'])->middleware('auth:sanctum');
// Route::get('/users/{id}', [UserController::class, 'show']);
// Route::post('/users', [UserController::class, 'store']);
// Route::put('/users/{id}', [UserController::class, 'update']);
// Route::delete('/users/{id}', [UserController::class, 'destroy']);


Route::middleware('auth:sanctum')->group(function () {
    // Route::get('/rendezvous/annules', [RendezVousController::class, 'annules']);
});

Route::group(['prefix' => '/rendezvous'], function () {
    Route::get('/', [RendezVousController::class, 'index']);
    Route::post('/', [RendezVousController::class, 'store']);
    Route::get('/{id}', [RendezVousController::class, 'show']);
    Route::put('/{id}', [RendezVousController::class, 'update']);
    Route::delete('/{id}', [RendezVousController::class, 'destroy']);
});
Route::get('/annules', [RendezVousController::class, 'annules'])->middleware('auth:sanctum');
Route::delete('/annules/{id}', [RendezVousController::class,"annuleDestroy"])->middleware('auth:sanctum');

route::apiResource('users',UserController::class)->middleware('auth:sanctum');

Route::post('/login', [UserController::class, 'login']);
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth:sanctum');
Route::get('/user', [UserController::class, 'user']);

// Service Routes
Route::apiResource('services', ServiceController::class);
