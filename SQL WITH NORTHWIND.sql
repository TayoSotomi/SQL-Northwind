--USE Northwind;

--1. Select all the rows from the "Customers" table.
--SELECT * FROM Customers;

--2. Get distinct countries from the Customers table.
--SELECT DISTINCT Country  FROM Customers;

--3. Get all the rows from the table Customers where the Customer’s ID starts with “BL”.
--SELECT * FROM Customers
--WHERE CustomerID LIKE 'BL%'; 

--4. Get the first 100 records of the orders table. DISCUSS: Why would you do this? What else would you likely need to include in this query?
--SELECT TOP 100 * FROM  Orders; --select top is used to specify the number of records to return. Returning a large number of records in a large dataset can impact performance Another option is to use LIMIT

--5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
--SELECT * FROM Customers
--WHERE PostalCode = '1010' OR PostalCode= '3012' OR PostalCode ='12209' OR PostalCode = '05023';

--6. Get all orders where the ShipRegion is not equal to NULL.
--SELECT * FROM Orders
--WHERE ShipRegion <> 'NULL';

--7. Get all customers ordered by the country, then by the city.
--SELECT * FROM Customers
--ORDER BY Country,City;

--8. Add a new customer to the customers table. You can use whatever values
--INSERT INTO Customers(CustomerID,CompanyName,ContactName,ContactTitle,[Address],City,Region,PostalCode,Country,Phone,Fax)
--VALUES ('Saka','Popage','Bukayo Saka','Ops Manager','1234 Gunners st','London','North London','NULL','England','NULL','NULL');

--9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France. 
--UPDATE Orders
--SET ShipRegion = 'EuroZone'
--WHERE ShipCountry = 'France';

--SELECT * FROM Employees;

 --10. Delete all orders from OrderDetails that have quantity of 1. 
--DELETE FROM [Order Details]
--WHERE Quantity = 1;

--11. Find the CustomerID that placed order 10290 (orders table).
--SELECT CustomerID FROM Orders
--WHERE OrderID = 10290;

--12. Join the orders table to the customers table.
--SELECT * FROM Customers
--JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--13. Get employees’ firstname for all employees who report to no one.
--SELECT FirstName FROM Employees
--WHERE ReportsTo IS NULL ;

--14. Get employees’ firstname for all employees who report to Andrew.
--SELECT FirstName FROM Employees
--WHERE ReportsTo = 2;

--====================================================================================================
-- Extra Challenges
--====================================================================================================
--1. Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderid
--SELECT MAX(Quantity) AS 'Max Quantity', AVG(Quantity) AS ' Avg Quantity',MIN(Quantity) AS 'Min Quantity' FROM [Order Details]
--Group BY OrderID;

--2. Calculate the average, max, and min of the quantity at the orderdetails table.
--SELECT  MAX(Quantity) AS 'Max Quantity', AVG(Quantity) AS ' Avg Quantity',MIN(Quantity) AS 'Min Quantity' FROM [Order Details];

--3. Find all customers living in London or Paris
--SELECT * FROM Customers
--WHERE City = 'London' OR City = 'Paris';

--4. Do an inner join, left join, right join on orders and customers tables. 
--SELECT * FROM Orders
--INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
--LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
--RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--5. Make a list of cities where customers are coming from. The list should not have any duplicates or nulls.
--SELECT DISTINCT City FROM Customers
--WHERE City IS NOT NULL;

--6. Show a sorted list of employees’ first names. 
--SELECT * FROM Employees
--ORDER BY FirstName;

--7. Find total for each order
