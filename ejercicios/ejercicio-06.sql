/* PERSONAL Y TIENDA 
    Objetivo: Practicar INNER JOIN entre las tablas staff y store.
*/

/* 1. Mostrar el nombre del personal y la tienda
   en la que trabaja.*/

   SELECT staff.first_name, staff.last_name, store.store_id FROM staff
   INNER JOIN store ON staff.store_id = store.store_id;

