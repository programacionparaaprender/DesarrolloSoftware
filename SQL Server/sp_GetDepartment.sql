USE [QuirkyBookProject]
GO

/****** StoredProcedure [dbo].[sp_GetDepartment]    Script Date: 24/12/2019 10:43:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure dbo.sp_GetDepartment
as
begin
select DepartmentId, Name from Departament
end