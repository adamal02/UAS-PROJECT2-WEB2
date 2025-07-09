<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\LandingController;


Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', function () {
        if (Auth::user()?->role !== 'admin') {
            abort(403, 'Akses ditolak.');
        }

        return view('dashboard');
    })->name('dashboard');
});

Route::get('/', [LandingController::class, 'index']);