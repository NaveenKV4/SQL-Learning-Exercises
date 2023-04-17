SELECT * FROM Categories
INSERT INTO Categories (CategoryID, CategoryName, Description)
VALUES (9, 'Wines','Red wine,White wine,Pink wine');
SET IDENTITY_INSERT Categories ON

SELECT * FROM Products
WHERE UnitPrice>=10 AND UnitsInStock>=5 AND NOT UnitsOnorder=0;

SELECT City, Region FROM Employees
WHERE Region IS NULL
AND Country IS NOT NULL

UPDATE Products
SET ProductName='Tea'
WHERE ProductID=1

DELETE FROM Products
WHERE ProductName='Ikura';

SELECT * FROM Customers

SELECT * FROM Orders

SELECT TOP 3 * FROM Orders
WHERE Freight>5

SELECT TOP 50 PERCENT * FROM Orders

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products;

SELECT MAX(UnitPrice) AS HighestPrice
FROM Products;

SELECT COUNT (CustomerID)
FROM Customers

SELECT AVG(UnitPrice)
FROM Products

SELECT SUM(UnitsInStock)
FROM Products

SELECT * FROM Orders
WHERE ShipCity LIKE 'R%'

SELECT * FROM Orders
WHERE ShipCountry LIKE '%l'

SELECT * FROM Orders
WHERE CustomerID LIKE '%A%' 

SELECT * FROM Orders
WHERE CustomerID LIKE '%A%' 

SELECT * FROM Orders
WHERE CustomerID LIKE '_A%'

SELECT * FROM Orders
WHERE ShipName LIKE 'R_%'

SELECT * FROM Orders
WHERE CustomerID LIKE 'R%C'

SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

SELECT * FROM Customers
WHERE CompanyName LIKE '[a-c]%';

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE City NOT IN ('Berlin', 'London');

SELECT CustomerID AS ID, CompanyName AS Customer
FROM Customers;

SELECT CompanyName AS Customer, ContactName AS [Contact Person]
FROM Customers;

SELECT CompanyName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

SELECT Orders.OrderID, Customers.CompanyName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT Orders.OrderID, Customers.CompanyName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT * FROM Shippers

SELECT * FROM Orders

SELECT Orders.OrderID, Customers.CompanyName, Shippers.CompanyName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CompanyName;

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

SELECT Customers.CompanyName, Orders.ShipCity
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CompanyName;

SELECT A.CompanyName AS CustomerName1, B.CompanyName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City 
ORDER BY A.City;

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='UK'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='UK'
ORDER BY City;

SELECT * INTO CustomersBackup2017
FROM Customers;

SELECT * FROM Products

SELECT * FROM Suppliers

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT Suppliers.CompanyName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.SupplierID = Suppliers.SupplierID
GROUP BY CompanyName;

