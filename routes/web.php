<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\NoticiaController;
use App\Http\Controllers\IndexController;

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

Route::get('/', [IndexController::class, 'index']);


Route::get('/categoria/listar', [CategoriaController::class, 'listar']);

Route::get('/categoria/novo', [CategoriaController::class, 'novo']);

Route::post('/categoria/salvar', [CategoriaController::class, 'salvar']);

Route::get('/categoria/excluir/{id}', [CategoriaController::class, 'excluir']);

Route::get('/categoria/editar/{id}', [CategoriaController::class, 'editar']);


Route::get('/noticia/listar', [NoticiaController::class, 'listar']);
Route::get('/noticia/novo', [NoticiaController::class, 'novo']);
Route::post('/noticia/salvar', [NoticiaController::class, 'salvar']);
Route::get('/noticia/editar/{id}', [NoticiaController::class, 'editar']);
Route::get('/noticia/excluir/{id}', [NoticiaController::class, 'excluir']);

