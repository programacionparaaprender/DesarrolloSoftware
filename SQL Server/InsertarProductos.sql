
use TEST;
INSERT INTO dbo.Products(ProductName, Price, ProductDescription) values('Café', 4, 'Bebida dulce')
go
INSERT INTO dbo.Products(ProductName, Price, ProductDescription) values('Chocolate', 10, 'Alimento dulce')  

go
INSERT dbo.Products (ProductName, Price, ProductDescription)  
    VALUES ('Clamp', 12.48, 'Workbench clamp')  
GO 