<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;

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

Route::get('/ola', [CategoriaController::class, 'ola']);

Route::get('/categoria/listar', [CategoriaController::class, 'listar']);

Route::get('/categoria/novo', [CategoriaController::class, 'novo']);

Route::post('/categoria/salvar', [CategoriaController::class, 'salvar']);

Route::get('/categoria/excluir/{id}', [CategoriaController::class, 'excluir']);
