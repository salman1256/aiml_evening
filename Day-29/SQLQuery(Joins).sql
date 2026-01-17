drop database Day29Db
create database Day29Db
use Day29Db
create table Departments
(DId int primary key,
 DName nvarchar(50) not null unique
 )
 insert into Departments values
 (1,'App-Development'),
 (2,'Web-Development'),
 (3,'HR'),
 (4,'Account'),
 (5,'Testing')

 create table Employees
 (Id int primary key,
 Fname nvarchar(50) not null,
 Lname nvarchar(50) not null,
 Designation nvarchar(50),
 Salary decimal(10,2),
 DId int null foreign key references Departments(DId)  )

 insert into Employees values (4,'Arsh','Maan','Developer',8000.25,2)
  insert into Employees (Id,Fname,Lname,Salary) values(1,'Amit','Kumar',5000.75)

  select * from Departments order by DId
  select * from Employees

  insert into Employees values (2,'Aamir','Moin','Developer',7000.55,2)
   insert into Employees values (16,'Zoya','Alif','Developer',7000.25,2)
    insert into Employees values (3,'Ritu','Singh','Developer',6000.55,1)
	 insert into Employees values (7,'Deep','Das','Tester',6000.25,5)
  insert into Employees (Id,Fname,Lname,Salary) values(6,'Neha','Garg',3000.75)
  insert into Employees (Id,Fname,Lname,Salary) values(10,'Danish','Waani',7000.50)
  insert into Employees (Id,Fname,Lname,Salary) values(17,'Rishi','Jain',8000.50)


  select * from Departments order by DId
   select * from Employees
   -----------------------------------------------------------------------------------------------------------------
   --join
   -- 1. inner join or join: it will fetch matching records from both the table

   select * from  Employees 
   inner join  Departments
   on Employees.DId=Departments.DId
   ----------------------------
    select * from  Employees e
   inner join  Departments d
   on e.DId=d.DId
   ----------------------------
   select e.Id,e.Fname,e.Lname,e.Salary,e.DId,d.DName
   from Employees e   inner join  Departments d
   on e.DId=d.DId
   ----------------------------------------------------
    select e.Id,e.Fname,e.Lname,e.Salary,e.DId,d.DName
   from Employees e    join  Departments d
   on e.DId=d.DId
   ---------------------------------------
   --Outer join : left,right, full 
   -- left outer join: take all the records from left handside table and matching records from right hand side table
   -- table written left to join keyword is known as left handside table

   select count(*) 'Number of Rows' from Employees
   select * from Employees

   ------------------------------------------------------------
   select e.Id,e.Fname,e.Lname,e.Salary,e.DId,d.DName
   from Employees e   left outer join  Departments d
   on e.DId=d.DId
   --------------------OR--------------------------------------------
    select e.Id,e.Fname,e.Lname,e.Salary,e.DId,d.DName
   from Employees e   left join  Departments d
   on e.DId=d.DId
   --------------------------------------------------------------
  
 -- right outer join: take all the records from right handside table and matching records from left hand side table
   select e.Id,e.Fname,e.Lname,e.Salary,d.DId,d.DName
   from Employees e   right outer join  Departments d
   on e.DId=d.DId

  ---------------------OR--------------------------------------------
   select e.Id,e.Fname,e.Lname,e.Salary,d.DId,d.DName
   from Employees e   right  join  Departments d
   on e.DId=d.DId
   --------------------------------------------------------------
   --full outer join: takes all the record from both tables and matching records as well

    select e.Id,e.Fname,e.Lname,e.Salary,d.DId,d.DName
   from Employees e   full outer join  Departments d
   on e.DId=d.DId
   ---------------------OR--------------------------------------------
    select e.Id,e.Fname,e.Lname,e.Salary,d.DId,d.DName
   from Employees e   full join  Departments d
   on e.DId=d.DId
   ----------------------------------------------------------------------------------
   ---Cross join
   -- m rows 
   -- n rows
   -- m*n rows
   -- used to find out all possible combinations
   -----------------------------------------------------------
   create table Colors
   (CId int primary key identity,
   Color nvarchar(50) not null unique)
   insert into Colors values ('Red'),('Green'),('Yellow'),('Blue'),('Orange')

   select * from Colors order by CId

    create table Sizes
   (SId int primary key identity,
   Size nvarchar(50) not null unique)

   insert into Sizes values ('Small'),('Medium'),('Large'),('Extra Large')

   select * from Sizes order by SId
   select count(*) 'Number of Sizes' from Sizes
   select count(*) 'Number of Colors' from Colors
   
   --Cross join 
   select * from Colors cross join Sizes
   select c.Color,s.Size from Colors c cross join Sizes s
     select c.Color,s.Size from Colors c cross join Sizes s order by c.Color
	 ----------------------
	  insert into Colors values ('Pink')
	  select c.Color,s.Size from Colors c cross join Sizes s order by c.Color
	  ------------------------------------------------------------------------
	 create database ExerciseDb
	 use ExerciseDB

Create table CompanyInfo(CId int primary key, CName nvarchar(50) not null unique)
insert into CompanyInfo values (1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'Redmi')
select * from CompanyInfo order by CId

Create table ProductInfo(PId int primary key, PName nvarchar(50) not null ,PPrice float,PMfDate date , CId int null foreign key references CompanyInfo)

insert into ProductInfo values (101,'Laptop',3000,'12/25/2025',1)
insert into ProductInfo values (102,'Laptop',3500,'01/01/2026',2)
insert into ProductInfo values (103,'Mobile',3599.00,'12/12/2025',2)
insert into ProductInfo values (104,'Laptop',4599.00,'11/30/2023',3)
insert into ProductInfo values (105,'Mobile',3999.99,'12/01/2024',3)
insert into ProductInfo values (106,'Laptop',2999.99,'06/01/2022',5)
insert into ProductInfo values (107,'Mobile',2999.99,'09/01/2024',5)
insert into ProductInfo values (108,'Earpod',2999.99,'02/14/2025',3)
insert into ProductInfo values (109,'Laptop',2999.99,'01/10/2026',6)
insert into ProductInfo values (110,'Mobile',2999.99,'05/20/2025',1)

select * from ProductInfo
select * from CompanyInfo

--Q: 1 Show All Companies Name and their products detail

select c.CName as CompanyName, p.PId, p.PName, p.PPrice, p.PMfDate 
from CompanyInfo c left outer join 
ProductInfo p on c.CId = p.CId;

--Q: 2 Show All Products Name and their respective company Name

select c.CName as CompanyName, p.PName 
from CompanyInfo c right outer join 
ProductInfo p on c.CId = p.CId;

insert into ProductInfo (PId,PName,PMfDate,PPrice) values (111,'Herbal Shampoo','05/20/2025',100.25)

select c.CName as CompanyName, p.PName 
from CompanyInfo c right outer join 
ProductInfo p on c.CId = p.CId;
--------------------------------------------------------------
--SelfJoin: Joining the table to itself 
create table Emps
(EmployeeId int primary key,
EmployeeName nvarchar(50) not null,
ManagerID int)

insert into Emps (EmployeeId,EmployeeName) values (1,'Sam')
insert into Emps (EmployeeId,EmployeeName) values (5,'Arsh')
select * from Emps

insert into Emps values(2,'Raj',1),(3,'Rohan',5),(4,'Ali',2),(6,'Rishi',1),(7,'Nidhi',2),(9,'Deep',1)

select * from Emps
---------------------------------------------------------------------------
select  e.EmployeeName 'Employee Name',m.EmployeeName 'Manager Name' from Emps  
e join Emps m 
on
e.ManagerID=m.EmployeeId
--------------------------------------------------------------------
select  e.EmployeeName 'Employee Name',m.EmployeeName 'Manager Name' from Emps  
e left join Emps m 
on
e.ManagerID=m.EmployeeId 
-----------------------------------------------------------
select  e.EmployeeName 'Employee Name',m.EmployeeName 'Manager Name' from Emps  
e left join Emps m 
on
e.ManagerID=m.EmployeeId order by m.EmployeeId