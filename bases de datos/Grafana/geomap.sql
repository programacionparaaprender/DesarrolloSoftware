
select
'Sales' as metric,
convert(decimal, sgl.Latitude) as latitude,
convert(decimal, sgl.Longitude) as longitude,
sgl.TotalSales as value
from
[adventureworks2019].[Sales].[SalesGeoLocation] sgl