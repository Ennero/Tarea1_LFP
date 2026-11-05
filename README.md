# Lectura de inventario de productos en Fortran

Ejercicio de Lenguajes Formales y de Programación que implementa un menú y lectura del archivo inventario.inv desde Fortran.

## Requisitos

GNU Fortran (gfortran). Ejecutar desde la carpeta que contiene inventario.inv.

## Ejecución

Los comandos parten de la raíz del repositorio, salvo donde se indica otra terminal.

```bash
gfortran -ffree-line-length-none menu.f90 -o inventario.exe
./inventario.exe
```

## Recorrido de demostración

Elegir la opción de lectura desde el menú y comparar la información presentada con inventario.inv. La subrutina leerArchivo contiene el acceso al archivo.

## Organización

El código y los archivos de entrada se encuentran en la raíz; los nombres de los puntos de entrada se indican arriba.

## Alcance y límites

No implementa operaciones de matrices ni algoritmos numéricos avanzados. El ejecutable debe compilarse localmente.

## Contexto y licencia

Trabajo académico o de aprendizaje conservado en el portafolio de [Enner Mendizabal](https://github.com/Ennero). Los créditos de los trabajos en grupo se conservan en sus entregas y manuales.

Consultar [LICENSE](LICENSE) para la licencia de la raíz. Las dependencias y los componentes con avisos o licencias propios conservan sus condiciones.
