SELECT
psc.Name as metric,
COUNT(p.productid) as value
FROM
[AdventureWorks2019].[Production].[Product] p
join [AdventureWorks2019].[Production].[Product] pc on p.ProductID = pc.ProductID
join [AdventureWorks2019].[Production].[ProductSubcategory] psc on pc.ProductSubcategoryID = psc.ProductSubcategoryID
GROUP BY psc.ProductSubcategoryID, psc.Name
order by count(p.ProductID) desc