CREATE TABLE EmployeeDetails (
EmpID VARCHAR(100),
EmpName VARCHAR(255),
EmpContact VARCHAR(255),
EmpEmail VARCHAR(255),
EmpDepartment VARCHAR(255),
EmpCity VARCHAR(100),
salary VARCHAR(200)
);
SELECT * FROM EmployeeDetails;

INSERT INTO EmployeeDetails
VALUES (1, 'rakesh', '9924194054', 'rakeshchavda@gmail.com', 'computer', 'ahmedabad', '20000'),
(2, 'karan', '9874563217', 'kk@ymail.com', 'account', 'mumbai', '19000'),
(3, 'Keval', '9405578345', 'keval@gmail.com', 'management', 'mumbai', '17000'),
(4, 'rina', '8787542147', 'rina@yahoo.com', 'account', 'ahmedabad', '25000'),
(5, 'rahul', '9632587415', 'rahul707@gmail.com', 'account', 'visakapattinam', '18000')

CREATE FUNCTION Fun_EmployeeInformation()
RETURNS TABLE
AS
RETURN(SELECT * FROM EmployeeDetails)

SELECT * FROM Fun_EmployeeInformation()

CREATE FUNCTION fun_JoinEmpColumnInfo
(
   @EmpContact NCHAR(15),
   @EmpEmail NVARCHAR(50),
   @EmpCity VARCHAR(30)
)
RETURNS NVARCHAR(100)
AS
BEGIN RETURN(SELECT @EmpContact+ ' ' +@EmpEmail + ' ' + @EmpCity)
END

SELECT dbo.fun_JoinEmpColumnInfo(EmpContact,EmpEmail,EmpCity) AS Detail FROM fun_JoinEmpColumnInfo()

create function fun_PrintNumber()
returns decimal(7,2)
as
begin
    return 1020.14
end
print dbo.fun_PrintNumber()

CREATE FUNCTION Fun_Addition(@Num1 Decimal(7,2), @Num2 Decimal(7,2))
RETURNS Decimal(7,2)
Begin
    DECLARE @Result Decimal(7,2)
    SET @Result = @Num1 + @Num2
    RETURN @Result
end
print dbo.Fun_Addition(12,13)