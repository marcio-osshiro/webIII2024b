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



    <h1>Formulário de Noticia</h1>
    @if ($noticia->imagem != "")
    <img src="/storage/imagens/{{$noticia->imagem}}" style="height: 100px">  
    @endif


    <form action="{{ url('noticia/salvar') }}" method="POST" enctype="multipart/form-data">

        @csrf

        <div class="mb-3">
            <label for="id" class="form-label">ID</label>
            <input readonly type="text" class="form-control" id="id" name="id" value="{{$noticia->id}}">
        </div>
        <div class="mb-3">
            <label for="data" class="form-label">Data</label>
            <input type="date" class="form-control" id="data" name="data" value="{{$noticia->data->format('Y-m-d')}}">
        </div>
        <div class="mb-3">
            <label for="autor" class="form-label">Autor</label>
            <input type="text" class="form-control" id="autor" name="autor" value="{{$noticia->autor}}">
        </div>
        <div class="mb-3">
            <label for="titulo" class="form-label">Título</label>
            <input type="text" class="form-control" id="titulo" name="titulo" value="{{$noticia->titulo}}">
        </div>

        <div class="mb-3">
            <label for="descricao" class="form-label">Descrição</label>
            <textarea class="form-control" name="descricao" id="descricao" rows="10">
                {{$noticia->descricao}}
            </textarea>
        </div>

        <div class="mb-3">
            <label for="categoria_id" class="form-label">Categoria</label>
            <select name="categoria_id" id="categoria_id" class="form-select">
                @foreach($categorias as $categoria)
                    <option 
                    @if ($categoria->id == $noticia->categoria_id) 
                        selected
                    @endif
                    value="{{$categoria->id}}">{{$categoria->descricao}}</option>
                @endforeach
            </select>

        </div>
        <div class="mb-3">
            <label for="arquivo" class="form-label">Foto</label>
            <input type="file" class="form-control" id="arquivo" name="arquivo" accept="image/*">
        </div>
        
        <button type="submit" class="btn btn-primary">Salvar</button>
    </form>        
@endsection