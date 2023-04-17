USE [northwind]
GO

/****** Object:  Table [dbo].[tblMembers]    Script Date: 18-Nov-17,Sat 6:47:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SELECT * FROM Customers


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: V.Naveen Kumar
-- Create date: 17th Apr, 2023
-- Description: Return all members
-- =============================================
--Store procedure name is --> stpGetAllCustomers


CREATE PROCEDURE stpGet_All_Customers
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Select statements for procedure here
    Select * from Customers
END
GO

SELECT * FROM dbo.stpGet_All_Members