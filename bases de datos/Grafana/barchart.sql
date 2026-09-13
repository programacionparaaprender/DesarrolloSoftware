SELECT TOP (10) 
p.[Name] AS ProductName, 
pr.Rating as CustomerRating
  FROM [AdventureWorks2019].[Production].[Product] p
  join [AdventureWorks2019].[Production].[ProductReview] pr on p.ProductID = pr.ProductID
  order by pr.Rating desc
