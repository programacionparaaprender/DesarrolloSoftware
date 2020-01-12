create or replace PROCEDURE spObtenerEmpleados
IS
BEGIN
open registros for
select 
*
from 
employees;
END spObtenerEmpleados;