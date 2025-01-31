<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="icon" type="image/png" href="img/icono-iseta.png">
        
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">
    

    <link rel="stylesheet" href="{{asset('css/Reset/reset.css')}}">

    <link rel="stylesheet" href="{{asset('css/main.css')}}">
    <link rel="stylesheet" href="{{asset('css/estilos.css')}}">

    <link rel="stylesheet" href="{{asset('css/header.css')}}">
    <link rel="stylesheet" href="{{asset('css/footer.css')}}">

    @yield('estilos')

</head>

<body class="bg-slate-900 text-slate-300 m-2">
    @include('Comp.header')
    @yield('content')
    @include('Comp.mensajes')
    
    @include('Comp.footer')
    <script src="nav.js" defer></script>
</body>

</html>