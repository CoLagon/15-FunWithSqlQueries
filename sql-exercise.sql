/* exercise 1 */
select CategoryName, Description
from Categories


/* exercise 2 */


SELECT CustomerID, CompanyName, ContactName, City
FROM Customers
WHERE City = 'London'


/* exercise 3 */
SELECT *
FROM Suppliers
WHERE ContactTitle IN('Marketing Manager', 'Sales Reptresentative')
AND FAX IS NULL


/* exercise 4 */
SELECT CustomerID
FROM Orders
WHERE RequiredDate BETWEEN '1997-01-01' AND '1997-12-31' AND Freight < 100


-- exercise 5
SELECT CompanyName, ContactName
FROM Customers
WHERE Country in ('Germany', 'Sweden', 'Mexico')

--exercise 6
SELECT COUNT(*)
FROM Products
WHERE Discontinued = 1



-- exercise 7
SELECT CategoryName, Description
FROM Categories 
WHERE CategoryName LIKE 'Co%'



-- Exercise 8
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'
ORDER BY CompanyName ASC


--exercise 9
SELECT ProductID, Quantity as  'Quantity Purchased'
FROM [Order Details]
ORDER BY Quantity DESC



--exercise 10
SELECT ShipAddress, ShipCity, ShipPostalCode, ShipCountry, CompanyName
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE ShipVia = '1'




--exercise 11
SELECT CompanyName, ContactName, ContactTitle, Region
FROM Suppliers


--exercise 12
SELECT ProductName
FROM Products
LEFT JOIN Categories
ON Products.CategoryID = Categories.CategoryID   
Where  Categories.CategoryName = 'Condiments'


--Exercise 13
SELECT ContactName 
FROM Customers
LEFT JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.CustomerID IS NULL


--Exercise 14
INSERT INTO Shippers (CompanyName)
VALUES ('Amazon')


--Exercise 15
UPDATE Shippers
SET CompanyName = 'Amazon Prime Shipping'
WHERE CompanyName = 'Amazon'


--Exercise 16
SELECT Shippers.CompanyName, SUM(Round(Freight, 0)) as TotalOfOrders
FROM Shippers
LEFT JOIN Orders
ON Shippers.ShipperID = Orders.ShipVia
Group By CompanyName



--Exercise 17
SELECT LastName+',' +FirstName AS 'Display Name'
FROM Employees 



--Exercise 18
INSERT INTO Customers(CustomerID, ContactName , CompanyName)
VALUES('COLE','Cole', 'Origin Code Academy')
INSERT INTO Orders(CustomerID, ShipName)
VALUES('COLE','Grandmas Boysenberry Spread')

SELECT CustomerID, ContactName, CompanyName
FROM Customers
WHERE CompanyName LIKE '%origin%'
SELECT CustomerID, ShipName
FROM Orders
WHERE ShipName LIKE '%spread%'

--Exercise 19
DELETE FROM Customers
WHERE CustomerID = 'COLE' 
DELETE FROM Orders
WHERE CustomerID = 'COLE' AND ShipName = 'Grandmas Boysenberry Spread'

--Exercise 20
SELECT ProductName, UnitsInStock AS Total
FROM Products
WHERE UnitsInStock > 100