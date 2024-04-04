<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Categoria;


class CategoriaController extends Controller
{
    function listar() {
        $categorias = Categoria::orderBy('descricao')->get();
        return view('listagem_categoria', compact('categorias'));
    }
}
