USE master
GO
xp_readerrorlog 0, 1, N'Server is listening on' 
GO

CREATE LOGIN [grafanatestuser] WITH PASSWORD=N'Grafana#1234', 
DEFAULT_DATABASE=[AdventureWorks2019], 
DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [grafanatestuser]
GO


