@extends('Admin.template')

@section('content')

    <div>
        

    
            <a href="{{route('admin.mesas.create')}}"><button>Agregar mesa</button></a>

        <div>
            <form action="{{route('admin.mesas.index')}}">
                <p>filtrar</p> 
                <select name="campo">
                    <option value="ninguno">todo</option>
                    <option @selected($filtros['campo'] == 'nuevas') value="nuevas">nuevas</option>
                    <option @selected($filtros['campo'] == 'asignatura') value="asignatura">asigantura</option>
                    <option @selected($filtros['campo'] == 'carrera') value="carrera">carrera</option>
                </select>
                <input value="{{$filtros['filtro']}}" name="filtro" type="text">
                <p>ordenar</p>
                <select name="orden">
                    <option @selected($filtros['orden'] == 'fecha') value="fecha">Fecha</option>
                    <option @selected($filtros['orden'] == 'asignatura') value="asignatura">asigantura</option>
                </select>
                <input type="submit" value="Buscar">
            </form>

            <a href="{{route('admin.mesas.index')}}"><button>Quitar filtro</button></a>
      
        </div>

        

        {{-- @foreach ($alumnos->pagr as )
            
        @endforeach
        <li class="page-item{{ $page == $alumnos->currentPage() ? ' active' : '' }}">
            <a class="page-link" href="{{ $url }}">{{ $page }}</a>
        </li> --}}
        
        
        <table>
            <tr>
                <td>Materia</td>
                <td>Año</td>
                <td>Fecha</td>
                <td>Carrera</td>
                <td>Acciones</td>
            </tr>

            @foreach ($mesas as $mesa)
            <tr>
                <td>{{$textFormatService->utf8Minusculas($mesa->nombre)}}</td>
                <td>{{$mesa->anio + 1}}</td>
                <td>{{$mesa->fecha}}</td>
                <td>{{$textFormatService->utf8Minusculas($mesa->carrera)}}</td>
                <td><a href="{{route('admin.mesas.edit', ['mesa' => $mesa->id])}}"><button>editar</button></a></td>
                <td>
                    <form method="POST" action="{{route('admin.mesas.destroy', ['mesa' => $mesa->id])}}">
                        @csrf
                        @method('delete')
                        <input type="submit" value="Eliminar">
                    </form>
                </td>
            </tr>
            @endforeach

        </table>
        
        <div class="w-1/2 mx-auto p-5">
            {{ $mesas->appends(request()->query())->links('Comp.pagination') }}
        </div>

    </div>
    
@endsection