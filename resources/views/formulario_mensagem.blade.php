@extends('template')

@section('content')
  @if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>   
    </div>
  @endif

  <h1>Formulário de Categoria</h1>
  <form action="{{ url('cliente/enviarMensagem') }}" method="POST">
      @csrf
      <div class="row">
        <div class="col mb-3">
            <label for="id" class="form-label">ID</label>
            <input readonly type="text" class="form-control" id="id" name="id" value="{{$cliente->id}}">
        </div>
        <div class="col mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input readonly type="text" class="form-control" id="nome" name="nome" value="{{old('nome', $cliente->nome) }}">
        </div>
        <div class="col mb-3">
            <label for="email" class="form-label">E-mail</label>
            <input readonly type="text" class="form-control" id="email" name="email" value="{{old('email', $cliente->email) }}">
        </div>
      </div>
      <div class="col mb-3">
            <label for="mensagem" class="form-label">Mensagem</label>
            <textarea class="form-control" id="mensagem" name="mensagem" rows="3"></textarea>            
      </div>

      <button type="submit" class="btn btn-primary">Enviar</button>
  </form>        
@endsection