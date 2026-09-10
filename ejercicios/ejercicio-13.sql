/* CREAR UNA TABLA 

Objetivo: Practicar CREATE TABLE y la definición de columnas y restricciones.

*/

1. Crear la tabla ejercicio_estudiantes. */

CREATE TABLE ejercicio_estudiantes (
    id_estudiante int primary key,
    nombre_completo varchar(50) not null,
    fecha_nacimiento date
)