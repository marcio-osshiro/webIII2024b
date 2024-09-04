<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mensagem do Sistema</title>
    <style>
        h1 {
            font-size: 3rem;
        }
        p {
            font-size: 1.5rem;
        }

    </style>
</head>
<body>
    <h1>Saudações Cliente {{$cliente->nome}}</h1>
    <p></p>
    <p>{{$mensagem}}</p>
</body>
</html>