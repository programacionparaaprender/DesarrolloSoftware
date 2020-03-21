create or replace PROCEDURE spObtenerEmpleados(registros out SYS_REFCURSOR)
as
BEGIN
open registros for select  * from  employees;
END;