-- ================================================

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Naveen Kumar V
-- Create date: 11th April,2023 
-- Description:	Stored Procedure Exercise1
-- =============================================
CREATE PROCEDURE stpGetAllMembers
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM tblMembers
END
GO
EXEC stpGetAllMembers


CREATE TABLE dbo.tblMembers(
    MemberID int(50) NOT NULL,
    MemberName varchar(50) NULL,
    MemberCity varchar(25) NULL,
    MemberPhone varchar(15) NULL
)

INSERT INTO dbo.tblMembers
VALUES
(1, 'Naveen', 'Vellore', '9976285324'),
(2, 'Radha', 'Killiyanur', '936006837'),
(3, 'Karthik', 'Navalur', '9786209090'),
(4, 'Vijay', 'Gudiyattam', '9367759835');

SELECT * FROM dbo.tblMembers


