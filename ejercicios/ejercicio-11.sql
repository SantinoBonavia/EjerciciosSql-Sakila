/* ACTUALIZAR UNA DIRECCIÓN 
Objetivo: Practicar el comando UPDATE para modificar
datos existentes en una tabla.
*/

/*  1. Cambiar la dirección de un cliente específico. */

UPDATE customer
SET address_id = 2
WHERE customer_id = 1;