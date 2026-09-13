SELECT         
isnull(st.[Group], 'Unknown') AS TerritoryGroup, 
sum(s.SalesYTD) as SalesYTD
FROM Sales.SalesPerson AS s INNER JOIN
HumanResources.Employee AS e ON e.BusinessEntityID = s.BusinessEntityID INNER JOIN
Person.Person AS p ON p.BusinessEntityID = s.BusinessEntityID INNER JOIN
Person.BusinessEntityAddress AS bea ON bea.BusinessEntityID = s.BusinessEntityID INNER JOIN
Person.Address AS a ON a.AddressID = bea.AddressID INNER JOIN
Person.StateProvince AS sp ON sp.StateProvinceID = a.StateProvinceID INNER JOIN
Person.CountryRegion AS cr ON cr.CountryRegionCode = sp.CountryRegionCode LEFT OUTER JOIN
Sales.SalesTerritory AS st ON st.TerritoryID = s.TerritoryID LEFT OUTER JOIN
Person.EmailAddress AS ea ON ea.BusinessEntityID = p.BusinessEntityID LEFT OUTER JOIN
Person.PersonPhone AS pp ON pp.BusinessEntityID = p.BusinessEntityID LEFT OUTER JOIN
Person.PhoneNumberType AS pnt ON pnt.PhoneNumberTypeID = pp.PhoneNumberTypeID
group by st.[Group]
order by 2 desc