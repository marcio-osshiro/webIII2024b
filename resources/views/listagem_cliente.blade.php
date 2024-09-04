@extends('template')

@section('content')
  <h1>Listagem de Clientes</h1>
  <table class="table table-bordered table-striped">
      <thead>
          <tr>
          <th scope="col">ID</th>
          <th scope="col">Nome</th>
          <th scope="col">E-mail</th>
          <th scope="col">Mensagem</th>
          </tr>
      </thead>
      <tbody>
          @foreach ($clientes as $cliente)
              <tr>
              <th scope="row">{{ $cliente->id }}</th>
              <td>{{$cliente->nome}}</td>
              <td>{{$cliente->email}}</td>
              <td><a class="btn btn-primary" href="mensagem/{{$cliente->id}}">Mensagem</a></td>
              </tr>
          @endforeach
      </tbody>
  </table>        
@endsection