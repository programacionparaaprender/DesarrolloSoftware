--http://chancrovsky.blogspot.com/2014/07/try-catch-commit-rollback-y-el-manejo.html
BEGIN TRANSACTION

BEGIN TRY
    declare @a int
	set @a = 0;
	declare @b int
	set @b = 10 / @a;
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS errNumber
       , ERROR_SEVERITY() AS errSeverity 
       , ERROR_STATE() AS errState
       , ERROR_PROCEDURE() AS errProcedure
       , ERROR_LINE() AS errLine
       , ERROR_MESSAGE() AS errMessage
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION
END CATCH
