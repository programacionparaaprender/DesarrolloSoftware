create procedure spValidarAreaTieneEmpleados  
--declare
@area_id int = 5  
as  
declare @valor int = 0;  

WITH AREAS    
AS      
(      
 SELECT a1.areaId,a1.Nombre FROM Area  a1 where a1.areaId=@area_id      
 union all      
 select a2.areaId,a2.Nombre from Area A2      
 inner join AREAS on a2.areaPadreId=AREAS.areaId   and a2.areaId<>1   
)  
select @valor = 1 from AREAS a 
inner join dbo.AreaUsuario ua
on a.areaId=ua.areaId 
where ua.estado<>0

select @valor;


