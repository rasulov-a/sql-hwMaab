--homework 4
select top 5 * from Employees

select distinct Category
from Products

select * from Products
where Price>100

select * from Customers
where FirstName like 'A%';

select * from Products
order by Price asc

select * from Employees
where Salary>=60000 and DepartmentName='HR';

select isnull (Email, 'noemail@example.com') as Email
from Employees;

select * from Products
where Price between 50 and 100

select distinct Category, ProductName from Products

select distinct Category, ProductName from Products
order by ProductName desc 

--Medium level

select top 10 * from Products
order by Price desc

select coalesce (FirstName, LastName) as FirstNonNull
from Employees

select distinct Category, Price
from Products

select * from Employees
where Age between 30 and 40
or DepartmentName='Marketing'

select * from Employees
order by Salary 
offset 10 rows
fetch next 10 rows only;

select * from Products
where Price<=1000 and StockQuantity>50
order by StockQuantity asc

select * from Products
where ProductName like '%e%'

select * from Employees
where DepartmentName in ('HR', 'IT', 'Finance')

--Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.Use customers table
select * from Customers
order by 
    City asc,
    PostalCode desc;

--Hard

--Write a query that selects the top 5 products with the highest sales, using TOP(5) and ordered by SalesAmount DESC.
select top 5 * from Sales
order by SaleAmount desc
--Combine FirstName and LastName into one column named FullName in the Employees table. (only in select statement)
SELECT 
    ISNULL(FirstName, '') + ' ' + ISNULL(LastName, '') AS FullName,
    *
FROM Employees;
--Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
select distinct Category, ProductName, Price
from Products
where Price>50 
--Write a query that selects products whose Price is less than 10% of the average price in the Products table. (Do some research on how to find average price of all products)
select * from Products
where Price<0.1*(select AVG(Price) from Products)
--Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
select * from Employees
where Age<30 and DepartmentName in ('HR','IT')
--Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
select * from Employees
where Email like '%@gmail.com'
--Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
select * from Employees
where Salary> all (select Salary from Employees where DepartmentName='Sales') 
--Write a query that filters the Orders table for orders placed in the last 180 days using BETWEEN and LATEST_DATE in the table. (Search how to get the current date and latest date)
select * from Orders
where OrderDate between DATEADD(DAY, -180, (SELECT MAX(OrderDate) FROM Orders)) AND (SELECT MAX(OrderDate) FROM Orders)
order by OrderDate

