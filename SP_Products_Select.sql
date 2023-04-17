-- ================================================
============
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Naveen Kumar
-- Create date: 17th Apr,2023
-- Description:	Stored procedure Select command in Products table
-- =============================================
CREATE PROCEDURE stpProducts
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Products
END
GO
