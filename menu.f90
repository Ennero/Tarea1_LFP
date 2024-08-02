program menu !Comenzando el programa
    implicit none
    !Declarando Variables para el ciclo
    logical :: salir
    integer :: opcion
    print *, "Bienvenido al programa del inventario de productos"
    salir = .false.
    do while (.not. salir)
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

subroutine leerArchivo() !Comenzando la funcion para leer el archivo
    implicit none
    !Declarando las variables para mostrar los datos del archivo
    character(len=50) :: producto, ubicacion
    integer :: cantidad, i
    real :: precio

    !Declarando las variables para calcular las líneas del archivo
    integer :: contador, iostat, unit
    character(len=128) :: linea

    !Abriendo el archivo
    open(unit=10, file="inventario.inv", status="old", action="read")
    !Leyendo y contando las líneas del archivo
    do 
            read(unit,'(A)', iostat=iostat) linea
            if (iostat /= 0) exit
            contador=contador+1
        end do


    !Leyendo el archivo e imprimiendo su contenido
    do while(i<=contador)
        read(10, *) producto, cantidad, precio, ubicacion
        print *, producto, cantidad, precio, ubicacion
        i=i+1
    end do

    !Cerrando el archivo
    close(10)
end subroutine leerArchivo !Terminando la funcion para leer el archivo