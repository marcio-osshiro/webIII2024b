@extends('template')

@section('content')
  <h1>Listagem de Categorias</h1>
  <a class="btn btn-primary" href="novo">Nova Categoria</a>
  <table class="table table-bordered table-striped">
      <thead>
          <tr>
          <th scope="col">ID</th>
          <th scope="col">Descrição</th>
          <th scope="col">Editar</th>
          <th scope="col">Excluir</th>
          </tr>
      </thead>
      <tbody>
          @foreach ($categorias as $categoria)
              <tr>
              <th scope="row">{{ $categoria->id }}</th>
              <td>{{$categoria->descricao}}</td>
              <td><a class="btn btn-primary" href="editar/{{$categoria->id}}">+</a></td>
              <td><a class="btn btn-danger" onclick="return confirm('Confirme a remoção do registro?')" href="excluir/{{$categoria->id}}">-</a></td>
              </tr>
          @endforeach
      </tbody>
  </table>        
@endsection