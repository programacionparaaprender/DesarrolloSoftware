DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_representantes`(IN `nombres` VARCHAR(25))
select cedula,nombre,apellido from representantes where nombre like concat('%',nombres,'%')$$
DELIMITER ;

call  mostrar_representantes("lu");