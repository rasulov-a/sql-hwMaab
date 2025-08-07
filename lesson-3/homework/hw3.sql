--homework 3

--bulk insert - copy data from external files, however you should give parametrs how this importing process shoudl be contructed

--Four file formats that can be imported into SQL are csv-files, xls and xlsx type files, txt and xml type files.

create table Products (ProductID int primary key, ProductName varchar(50), price decimal (10,2))
select *from Products
insert into Products values
            (1, 'Coke', 4000),
            (2, 'Fanta', 4200),
            (3, 'Sprite', 4300);
-- Null means the cell do not consist the data, while not null will give constraint to our server and give a hint to fill that cell mandatory.
alter table Products
add constraint uq_productname unique (ProductName)
-- It has been done in order to have unique names of product without repeatition
alter table Products
add CategoryId int
create table Category (CategoryID int primary key, CategoryName varchar(50) unique) 
--Identity gives permission to automatic numbering the rows with the given conditions

--medium level
select * from Category
insert into Category values
    (1, 'Soda'),
    (2, 'Water'),
    (3, 'Alco');

BULK INSERT Products
FROM 'C:\Users\ladmin\Downloads\Telegram Desktop\banana_republic.txt'
WITH (
    FIELDTERMINATOR = ',',ROWTERMINATOR = '\n', FIRSTROW = 2);

alter table Products
add constraint fk_categoryid foreign key (CategoryId) 
references dbo.CATEGORY(categoryID)

--primary key - where unique and not null consist
--unique - can use anytime, and can be used as null
--while primary key - can use only once and can't be used as null

alter table Products
add constraint ch_price check(price>0)

alter table Products
add Stock int not null default 0

--A FOREIGN KEY constraint is used to maintain referential integrity between two tables in a database.

--advanced

create table Customers (ID int identity(1,1), Name varchar(50), age int check (age>=18))
select * from Customers

create table Customers_2 (ID int identity(100,10), Name varchar(50))

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID))
select * from OrderDetails

--**COALESCE** and **ISNULL** are SQL functions used to handle NULL values, but they have different features and use cases.
-- isnull for single value, while coalesce for multiplle

create table Employees (EmpID int primary key, email varchar(50) unique)

create table Departments (DeptID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Departments (DeptName) VALUES ('Sales'), ('Marketing'), ('IT');
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DeptID INT, -- This will be our Foreign Key
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DeptID)
    REFERENCES Departments(DeptID)
    ON DELETE CASCADE -- If a Department is deleted, delete its Employees
    ON UPDATE CASCADE    -- If a DeptID changes, update it in Employees
);

   
