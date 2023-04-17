
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Naveen Kumar
-- Create date: 17th Apr,2023
-- Description:	Stored procedure insert into statement in Products table
-- =============================================
CREATE PROCEDURE stpProductspara
	@ProductName VARCHAR(250)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Products
	WHERE ProductName LIKE 'G%'
END
GO
