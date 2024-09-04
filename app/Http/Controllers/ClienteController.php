<?php

namespace App\Http\Controllers;

use App\Mail\Mensagem;
use App\Models\Cliente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ClienteController extends Controller
{
    function listar() {
        $clientes = Cliente::orderBy('nome')->get();
        return view("listagem_cliente", compact('clientes'));
    }

    function mensagem($id) {
        $cliente = Cliente::find($id);
        return view("formulario_mensagem", compact('cliente'));
    }

    function enviarMensagem(Request $request) {
        $id = $request->input("id");
        $cliente = Cliente::find($id);
        $mensagem = $request->input("mensagem");

        //return view("mensagem", compact('cliente', 'mensagem'));

        Mail::to($cliente->email)->send(new Mensagem($cliente, $mensagem));
 
        return redirect('/cliente/listar');        
    }
}
