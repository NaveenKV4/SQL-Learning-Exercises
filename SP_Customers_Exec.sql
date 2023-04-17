USE [northwind]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[stpGet_All_Customers]

SELECT	'Return Value' = @return_value

GO
