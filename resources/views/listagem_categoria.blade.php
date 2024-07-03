<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
        <h1>Listagem de Categorias</h1>
        <a href="novo">Nova Categoria</a>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                <th scope="col">ID</th>
                <th scope="col">Descrição</th>
                <th scope="col">Excluir</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categorias as $categoria)
                    <tr>
                    <th scope="row">{{ $categoria->id }}</th>
                    <td>{{$categoria->descricao}}</td>
                    <td><a href="excluir/{{$categoria->id}}">-</a></td>
                    </tr>
                @endforeach
            </tbody>
            </table>        
        <ul>

        </ul>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>