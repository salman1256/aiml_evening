-- create object objectName
-- create database databaseName

create database OurDb
use OurDb
--Create table <tableName>
--(ColumnName DataType [Constraint],
-- ColumnName DataType [Constraint],
 -- ---)

 create table Employee
 (Id int primary key,
  Fname nvarchar(50) not null,
  Lname nvarchar(50),
  Salary float )

  select * from Employee
  
  --insert into table values (v1....)
  -- insert into table (column...) values (v1.....)
  insert into Employee values (1,'Raj','Kiran',5800.75)
  insert into Employee values (2,'Deep','Das',2000.50),(4,'zoya','akhtar',3000.35)

  insert into Employee(Id,Fname) values (7,'Sam')
  --Constraint
  --primary key : not null and unique , we can wrtie one primary key per table, we can create primary key using combination of columns
  drop table Employee

  create table Employee
 (Id int primary key,
  Fname nvarchar(50) not null,
  Lname nvarchar(50),
  Salary float )
  insert into Employee(Id,Fname,Lname) values (1,'Raj','Kiran')
  select * from Employee
   insert into Employee(Id,Fname,Lname) values (2,'Raj','Mohan')
   insert into Employee(Id,Fname,Lname,Salary) values (1,'Sam','Dicosta',7000.25)
   --Violation of PRIMARY KEY constraint 'PK__Employee__3214EC0713A9D1D7'. 
--Cannot insert duplicate key in object 'dbo.Employee'. The duplicate key value is (1).
 insert into Employee(Fname,Lname) values ('Nisha','Khan')
 --Cannot insert the value NULL into column 'Id', table 'OurDb.dbo.Employee'; 
 --column does not allow nulls. INSERT fails.

  insert into Employee(Id,Lname) values (8,'Kumar')
  --Cannot insert the value NULL into column 'Fname', table 'OurDb.dbo.Employee'; column does not allow nulls. INSERT fails.

  --unique: Its not allowed duplicate values, you can insert null only once.
  drop table Employee
 create table Employee
  (Id int primary key,
  Fname nvarchar(50) not null,
  Lname nvarchar(50),
  Email nvarchar(100) unique,
  Mobile nvarchar(100) unique,
  Salary float )

  insert into Employee values (1,'sam','dicosta','sam12@mail.com','9876543210',5000.75)
  insert into Employee values (2,'ravi','kumar','ravi_kumar@gmail.com','8876543277',5000.75)
  select * from Employee
 insert into Employee values (3,'deep','das','deep_das@gmail.com','8876543277',5200.75)
 --Violation of UNIQUE KEY constraint 'UQ__Employee__6FAE0782BF6C529E'. 
 --Cannot insert duplicate key in object 'dbo.Employee'. The duplicate key value is (8876543277).
   insert into Employee(Id,Fname,Lname,Email,Salary) values (4,'nitin','kumar','nk@mail.com',6000.5)
   insert into Employee(Id,Fname,Lname,Mobile,Salary) values (6,'vini','kumari','665544332200',5000.5)

    insert into Employee(Id,Fname,Lname,Mobile,Salary) values (9,'adila','anam','555544337788',4000.5)
	--Violation of UNIQUE KEY constraint 'UQ__Employee__A9D10534A0934056'. 
--Cannot insert duplicate key in object 'dbo.Employee'. The duplicate key value is (<NULL>).

--check constraint
-- check the values before inserting , if match the condition or pattern then only it is allowed

create table Customer
(CId int primary key,
Cname nvarchar(50) not null,
ODLimit float check (ODLimit >=2000 and ODLimit<=25000))

insert into Customer values (1,'Sam',5000)
insert into Customer values (2,'Deep',4500)
select * from Customer

insert into Customer values (3,'Niti',400)
--The INSERT statement conflicted with the CHECK constraint "CK__Customer__ODLimi__412EB0B6". 
--The conflict occurred in database "OurDb", table "dbo.Customer", column 'ODLimit'.
insert into Customer values (3,'Niti',89000)
--The INSERT statement conflicted with the CHECK constraint "CK__Customer__ODLimi__412EB0B6". 
--The conflict occurred in database "OurDb", table "dbo.Customer", column 'ODLimit'.

create table Products
(PId int primary key,
Pname nvarchar(50),
PCompany nvarchar(50) check (PCompany in ('Apple','Samsung','Dell','Accer'))
)

insert into Products values (1,'IPhone','Apple')
insert into Products values (2,'Laptop','Dell')
insert into Products values (3,'Earpods','Apple')

insert into Products values (4,'Laptop','Toshiba')
--The INSERT statement conflicted with the CHECK constraint "CK__Products__PCompa__440B1D61". 
--The conflict occurred in database "OurDb", table "dbo.Products", column 'PCompany'.