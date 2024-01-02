use TEST;

--exec sp_columns Products;
--select * from dbo.Products;
--INSERT dbo.Products (ProductName, Price, ProductDescription)  
--VALUES ('Clamp', 12.48, 'Workbench clamp');

--UPDATE dbo.Products SET Price  = 20.000 where ProductName = 'Café';	
--DELETE FROM dbo.Products;
DELETE FROM dbo.Products where ProductName = 'Clamp';
