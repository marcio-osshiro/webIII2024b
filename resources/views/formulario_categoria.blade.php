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
  @if ($categoria->imagem != "")
    <img src="/storage/imagens/{{$categoria->imagem}}" style="height: 100px">  
  @endif
  <form action="{{ url('categoria/salvar') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="mb-3">
          <label for="id" class="form-label">ID</label>
          <input readonly type="text" class="form-control" id="id" name="id" value="{{$categoria->id}}">
      </div>
      <div class="mb-3">
          <label for="descricao" class="form-label">Descrição</label>
          <input type="text" class="form-control" id="descricao" name="descricao" value="{{old('descricao', $categoria->descricao) }}" class="@error('descricao') is-invalid @enderror">
          @error('descricao')
            <div class="alert alert-danger">{{ $message }}</div>
          @enderror          
      </div>
      <div class="mb-3">
            <label for="arquivo" class="form-label">Foto</label>
            <input type="file" class="form-control" id="arquivo" name="arquivo" accept="image/*">
      </div>

      <button type="submit" class="btn btn-primary">Salvar</button>
  </form>        
@endsection