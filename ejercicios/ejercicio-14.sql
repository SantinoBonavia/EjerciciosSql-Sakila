/* MODIFICAR UNA TABLA 

Objetivo: Practicar ALTER TABLE para agregar columnas y modificar tipos de datos.

*/

/* 1. Agregar una nueva columna email de hasta 255 caracteres y única. */

ALTER TABLE ejercicio_estudiantes
ADD COLUMN email varchar(255) UNIQUE;

/* 2. Cambiar nombre_completo de VARCHAR(100) a VARCHAR(150). */

ALTER TABLE ejercicio_estudiantes
MODIFY COLUMN nombre_completo varchar(150) not null;