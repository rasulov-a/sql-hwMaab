create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))
select * from Employees
insert into Employees values (1, 'Jack', 2000.00)
insert into Employees values 
                (2, 'Sergei', 1000000.00),
                (3, 'AK', 13242049.00);
update Employees
set salary=7000
where EmpID=1
delete from Employees
where EmpId=2

--Delete - the function when u want delete a particular row with given condition.
--Truncate - delete all data from table
--Drop - delete table or database

alter table Employees
alter column Name varchar(100)
alter table Employees
add Department varchar(50)
alter table Employees
alter column Salary float

create table Departments (DepartmentID int primary key, DepartmentName varchar(50))
select * from Departments
truncate table Employees


--Intermediate 
insert into Departments (DepartmentID, DepartmentName)
select 1, 'Loan' union
select 2, 'Micro' union
select 3, 'HR' union
select 4, 'Service' union
select 5, 'IFR';

insert into Employees values (1, 'Jack', 2000.00, 'HR' )
insert into Employees values 
                (2, 'Sergei', 1000000.00, 'Loan'),
                (3, 'AK', 13242049.00, 'Micro');
update Employees
set Department='Management'
where salary>5000
truncate table Employees
alter table Employees
drop column Department
exec sp_rename 'Employees', 'StaffMembers'
drop database Departments;

--Advanced
create table Products (ProductID int primary key, ProductName varchar(50), Category varchar(50), price decimal(10,2))
 ALTER TABLE Products
 ADD CONSTRAINT CK_Price_not_Zero CHECK (Price > 0);
 alter table Products
 add StockQuantity int default 50
 alter table Products
 ALTER TABLE Products
 EXEC sp_rename 'dbo.Products.Category', 'ProductCategory', 'COLUMN';
 select * from Products
 insert into Products (ProductID, ProductName, ProductCategory, price) values
                (1, 'soda', 'drinks', 50.0),
                (2, 'soda2','drinks', 51.0),
                (3, 'soda3', 'drinks',52.0),
                (4, 'soda4', 'drinks',53.0),
                (5, 'soda5', 'drinks',54.0);
select * into Products_Backup from Products 
select * from Products_Backup
exec sp_rename 'Products', 'Inventory'
alter table Inventory
drop constraint CK_Price_not_Zero
alter table Inventory
alter column price float
alter table Inventory
ADD CONSTRAINT CK_Price_not_Zero CHECK (Price > 0);
alter table Inventory
add ProductCode int identity (1000,5)
select * from Inventory
