USE [northwind]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[stpProductspara]
		@ProductName = N'G'

SELECT	'Return Value' = @return_value

GO
