<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Http\Requests\CategoriaRequest;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Storage;


class CategoriaController extends Controller
{
    function listar() {
        $categorias = Categoria::orderBy('descricao')->get();
        return view("listagem_categoria", compact('categorias'));
    }

    function novo() {
        $categoria = new Categoria();
        $categoria->id = 0;
        return view("formulario_categoria", compact('categoria'));
    }

    function salvar(CategoriaRequest $request) {

        if ($request->input('id') == 0) {
            $categoria = new Categoria();            
        } else {
            $categoria = Categoria::find($request->input('id'));
        }

        if ($request->hasFile('arquivo')) {
            $arquivo = $request->file('arquivo');
            $nomeArquivo = $arquivo->store('public/imagens');
            $vetorArquivo = explode('/', $nomeArquivo);
            if ($categoria->imagem != "") {
                Storage::delete("public/imagens/".$categoria->imagem);
            }
            $categoria->imagem = $vetorArquivo[2];
        }

        $categoria->descricao = $request->input('descricao');
        $categoria->save();
        return redirect('/categoria/listar');

    }


    function salvar1(Request $request) {
        $request->validate(['descricao' => 'required|min:10']);

        if ($request->input('id') == 0) {
            $categoria = new Categoria();            
        } else {
            $categoria = Categoria::find($request->input('id'));
        }
        $categoria->descricao = $request->input('descricao');
        $categoria->save();
        return redirect('/categoria/listar');

    }

    function excluir($id) {
        $categoria = Categoria::find($id);
        if ($categoria->imagem != "") {
            Storage::delete("public/imagens/".$categoria->imagem);
        }

        $categoria->delete();
        return redirect('/categoria/listar');
    }

    function editar($id) {
        $categoria = Categoria::find($id);
        return view("formulario_categoria", compact('categoria'));

    }

    function pdf() {
        $categorias = Categoria::orderBy("descricao")->get();
        $pdf = Pdf::loadView('pdf_categoria', compact('categorias'));
        return $pdf->download('listagem_categoria.pdf'); 
    }
}
