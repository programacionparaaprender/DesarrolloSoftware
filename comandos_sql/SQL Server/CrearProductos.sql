use TEST;
CREATE TABLE dbo.Products  
   (ProductID int PRIMARY KEY NOT NULL IDENTITY(1,1),
    ProductName varchar(25) NOT NULL,  
    Price money NULL,  
    ProductDescription text NULL)  
GO  