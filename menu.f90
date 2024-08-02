program menu !Comenzando el programa
    implicit none
    !Declarando Variables para el ciclo
    logical :: salir
    integer :: opcion
    print *, "Bienvenido al programa del inventario de productos"
    salir = .false.
    do while (.not. salir)!Iniciando el ciclo
        print *, "Seleccione una opcion:"
        print *, "1. Leer Archivo .inv e imprimir su contenido"
        print *, "2. Salir Producto"
        read *, opcion
        select case(opcion)
            case(1)
                call leerArchivo()
            case(2)
                salir = .true.
                print *, "Saliendo del programa..."
            case default
                print *, "Opcion no valida"
        end select
    end do
end program menu !Terminando el programa

subroutine leerArchivo() !Comenzando la funcion para leer el archivo y mostrarlo
    implicit none
    !Declarando Variables 
    integer :: contador, iostat,cantidad
    real :: precio
    character(len=128) :: linea,producto,bodega
    logical:: e
    contador=0
    !Verifico la existencia del archivo
    inquire(file="inventario.inv", exist=e)
    if (e) then
    !Abriendo el archivo
    open(unit=1, file="inventario.inv", status="old", action="read")

    do  !Leyendo la cantidad de lineas
        read(1, '(A)', iostat=iostat) linea
        if (iostat/=0) exit
        !Mostrando el contenido del archivo
        read(linea,* , iostat=iostat) producto, cantidad, precio, bodega
        print *, "Producto: ", producto, "Cantidad: ", cantidad, "Precio: ", precio, "Ubicacion: ", bodega

        contador=contador+1!Contador para que no se me encicle (lo hizo xd)
    end do
    close(1)
    else !Por si no existe el archivo
        print *, "El archivo inventario.inv no existe"
        return
    end if
end subroutine leerArchivo !Terminando la funcion para leer el archivo