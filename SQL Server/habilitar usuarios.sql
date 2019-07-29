ALTER LOGIN sa7 ENABLE ;  
GO  

ALTER LOGIN sa WITH PASSWORD = '<enterStrongPasswordHere>' ;  
GO  

USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', 
                          N'Software\Microsoft\MSSQLServer\MSSQLServer',      
                          N'LoginMode', REG_DWORD, 1
GO