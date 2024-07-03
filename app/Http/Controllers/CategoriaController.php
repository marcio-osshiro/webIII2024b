<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Categoria;

class CategoriaController extends Controller
{
    function ola() {
        return view('ola');
    }

    function listar() {
        $categorias = DB::select('select * from categoria order by descricao');
        return view("listagem_categoria", compact('categorias'));
    }

    function novo() {
        return view("formulario_categoria");
    }

    function salvar(Request $request) {
        $categoria = new Categoria();
        $categoria->descricao = $request->input('descricao');
        $categoria->save();
        return redirect('/categoria/listar');

    }

    function excluir($id) {
        $categoria = Categoria::find($id);
        $categoria->delete();
        return redirect('/categoria/listar');
    }
}
