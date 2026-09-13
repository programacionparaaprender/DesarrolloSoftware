 SELECT
  'Max Sales' as metric,
  max(sod.LineTotal)  as value
from [AdventureWorks2019].[Sales].[SalesOrderDetail] sod

union

 SELECT
  'Avg Sales' as metric,
  avg(sod.LineTotal)  as value
from [AdventureWorks2019].[Sales].[SalesOrderDetail] sod

union

 SELECT
  'Min Sales' as metric,
  min(sod.LineTotal)  as value
from [AdventureWorks2019].[Sales].[SalesOrderDetail] sod