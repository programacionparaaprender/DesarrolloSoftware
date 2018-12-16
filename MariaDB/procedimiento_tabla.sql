create procedure pa_mostrarUsuariosTabla(IN nombres VARCHAR(25))
CREATE TEMPORARY TABLE TablaTemporal ( codigo varchar(20), usuario varchar(50), pass varchar(50))
insert tablaTemporal( codigo, usuario, pass)
call mostrar_representantes(nombres)
select codigo,usuario,pass from tablaTemporal

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_representantes`(IN `nombres` VARCHAR(25))
select cedula,nombre,apellido from representantes where nombre like concat('%',nombres,'%')$$
DELIMITER ;

exec pa_mostrarUsuariosTabla 0