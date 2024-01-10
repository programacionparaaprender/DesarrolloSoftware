
--https://programacion.net/articulo/tablas_temporales_en_el_sql_server_281

CREATE TABLE #TablaTemporal (Campo1 int, Campo2 varchar(50))
INSERT INTO #TablaTemporal VALUES (1,'Primer campo')
INSERT INTO #TablaTemporal VALUES (2,'Segundo campo')
SELECT * FROM #TablaTemporal
drop table #TablaTemporal