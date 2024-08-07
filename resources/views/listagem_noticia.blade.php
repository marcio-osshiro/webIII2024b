@extends('template')

@section('content')
  <h1>Listagem de Notícias</h1>
  <a class="btn btn-primary" href="novo">Nova Notícia</a>
  <table class="table table-bordered table-striped">
    <thead>
        <tr>
        <th scope="col">ID</th>
        <th scope="col">Data</th>
        <th scope="col">Autor</th>
        <th scope="col">Título</th>
        <th scope="col">Categoria</th>

        <th scope="col">Editar</th>
        <th scope="col">Excluir</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($noticias as $noticia)
            <tr>
            <th scope="row">{{ $noticia->id }}</th>
            <td>{{$noticia->data}}</td>
            <td>{{$noticia->autor}}</td>
            <td>{{$noticia->titulo}}</td>
            <td>{{$noticia->categoria->descricao}}</td>
            <td><a class="btn btn-primary" href="editar/{{$noticia->id}}">+</a></td>
            <td><a class="btn btn-danger" onclick="return confirm('Confirme a remoção do registro?')" href="excluir/{{$noticia->id}}">-</a></td>
            </tr>
        @endforeach
    </tbody>
  </table>        
@endsection