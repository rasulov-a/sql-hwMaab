--Database - orgonized data, mostly on software that can be processed. Table - arrangement of data between rows and columns
--Data - collection of words, numbers and other type of information that can be analyzed
--As I found from web, there are 5 features: Advanced data management, security and compliance, high availability, BI and Scalability
--Windows authentification mode and sql server authentification

 create database SchoolDB
 create table students ([StudentID] INT PRIMARY KEY, [Name] VARCHAR(50), Age INT)
 select * from students
 alter table students
 add answer varchar (max)
--SQL Server is the database engine, SQL is the language, SSMS is the tool to manage and query with SQL. 
--ddl -data definition language, dml - data manupulation language, dml - data manupulation language,dql - data query language, dcl - data control language, tcl - tool command language. I have read all languages, however I am too lazy to write it here
 insert into students values (2, 'Begzod', 23, 'dunno')
 insert into students values (3, 'Nozim', 22, 'dunno')
 insert into students values (7, 'Task7', 2107, 'dunno')
--Downloaded, then opened config of Databases => Restored database from downloaded file
