
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Naveen Kumar
-- Create date: 17th Apr,2023
-- Description:	Stored Procedure Insert Into in Products table
-- =============================================
CREATE PROCEDURE stpProductsInsert
	@ProdcutID INT,
    @ProductName VARCHAR(250),
	@SupplierID INT,
	@CategoryID INT
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID)
	VALUES (@ProdcutID, @ProductName, @SupplierID, @CategoryID)
	
END
GO
