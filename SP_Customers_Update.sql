USE [northwind]
GO
/****** Object:  StoredProcedure [dbo].[stpGet_All_Customers]    Script Date: 17/04/2023 11:54:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_Customer]
@CustomerID VARCHAR(50)
AS
UPDATE Customers
SET CustomerID=@CustomerID
WHERE CustomerID='ISLAT'
