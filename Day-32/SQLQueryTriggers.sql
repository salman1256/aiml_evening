-----------------------------
--1 DDL:Data Definition Language : create ,alter , drop
-- 2. DML: Data Manipulation Language: insert ,update, delete
-- 3. DCL: Data Control Language: grant , revoke
--Trigger:
--DML Trigger: 1. after or For 2.insted of
-- DML actions are: insert , update,delete
-- after insert|update|delete
-- instead of insert|update|delete

--Syntax
--CREATE TRIGGER [schema_name.] trigger_name
--ON [schema_name.] table_name 
--[WITH ENCRYPTION]
--{FOR INSERT} 
--AS
--[IF UPDATE (column_name)...]
--[{AND | OR} UPDATE (column_name)...]
--<sql_statements>

--Magic Tables: inserted : insert or update data goes in inserted table
--deleted: delete data goes in deleted Table
------------------------------------------------------------------------------
drop database Day32Db
create database Day32Db
use Day32Db
create table Customers
(CId int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
ODLimit decimal(10,2) not null,
SSDate date not null,
)

create table Customers_LogInfo
(LogId int identity primary key,
CId int ,
Fname nvarchar(50) ,
Lname nvarchar(50), 
ODLimit decimal(10,2) ,
SSDate date,
LogAction nvarchar(100),
LogTime datetime
)
select * from Customers
select * from Customers_LogInfo
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (1,'Sam','Dicosta',85000.75,'12/23/2023')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (2,'Raj','Kiran',55000.75,'12/24/2023')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (4,'Danish','Waani',75000.75,'10/26/2025')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (5,'Ruhee','Nazir',55000.75,'11/18/2024')
-
--CREATE TRIGGER [schema_name.] trigger_name
----ON [schema_name.] table_name 
----[WITH ENCRYPTION]
----{typeo trigger INSERT} 
----AS
----[IF UPDATE (column_name)...]
----[{AND | OR} UPDATE (column_name)...]
----<sql_statements>
create trigger trgInsteadofDelete
on
Customers
instead of delete
as
begin
declare @id int
declare @fn nvarchar(50)
declare @ln nvarchar(50)
declare @odlimit decimal(10,2)
declare @sdate date
select @id=CId, @fn=Fname, @ln=Lname ,@odlimit=ODLimit,@sdate=SSDate from deleted
if (@odlimit>=70000)
	begin
	raiserror('You can not delete this record ,You nee bank manager permission',16,1)

	end
else

	begin
	delete from Customers where CId=@id
	insert into Customers_LogInfo (CId,Fname,Lname,ODLimit,SSDate,LogAction,LogTime)
	values (@id,@fn,@ln,@odlimit,@sdate,'InstdTrigger: Record Delete',getdate())
	print 'Instead of Trigger Says Record Deleted and action capture in Log Table'
	end

end
-------------------------------------------------
select * from Customers

delete from Customers where CId=2
select * from Customers
select * from Customers_LogInfo
delete from Customers where CId=1
select * from Customers
delete from Customers where CId=4
---------------------------------------------------------------------

-- if someone tries to update ODLimit more than 90000, the update should be block and message should be shown
-- Otherwise update should be allowed & new values should be logged in a log table
--Use Instead of update trigger to complete this exercise check the working of trigger as well
----------------------------------------------------------------------------------------------------------
create trigger trgInsteadofUpdate
on
Customers
instead of update
as
begin
declare @id int
declare @fn nvarchar(50)
declare @ln nvarchar(50)
declare @odlimit decimal(10,2)
declare @sdate date
declare @newodlimit decimal(10,2)
select 
@id=i.CId, @fn=i.Fname, @ln=i.Lname ,@odlimit=d.ODLimit, @newodlimit=i.ODLimit, @sdate=i.SSDate 
from inserted i  join deleted d on i.CId=d.CId
if (@newodlimit>=90000)
	begin
	raiserror('You can not update this record ,You need bank manager permission',16,1)
	end
else

	begin
	update Customers set ODLimit=@newodlimit where CId=@id
	insert into Customers_LogInfo (CId,Fname,Lname,ODLimit,SSDate,LogAction,LogTime)
	values (@id,@fn,@ln,@odlimit,@sdate,'Update Done',getdate())
	print 'Instead of Update Trigger Says Record Updated and action capture in Log Table'
	end

end
---------------------------------------------------------
update Customers set ODLimit=72000  where CId=4
select * from Customers
select * from Customers_LogInfo
update Customers set ODLimit=95000 where CId=4
-------------------------------------------------------------------------
create table Products
(PId int primary key,
Pname nvarchar(50) not null,
Pprice decimal(10,2) not null,
Pcategory nvarchar(50) not null check (PCategory in ('Electronics','Clothing','Grooming','Home Decoration'))
)
insert into Products values (9,'T-shirt',250,'Clothing')
insert into Products values (6,'Pillow-Cover',50,'Home Decoration')
insert into Products values (3,'Curtain',120,'Home Decoration')
insert into Products values (2,'Laptop',7200,'Electronics')
insert into Products values (1,'Fridge',5400,'Electronics')
insert into Products values (10,'Washing Machine',5500,'Electronics')
insert into Products values (5,'Shirt',300,'Clothing')
insert into Products values (13,'Fridge',6000,'Electronics')

select * from Products

select sum(PPrice) as 'Total Prices' from Products

select PCategory, sum(PPrice) as 'Categorywise Price' from Products group by Pcategory
select PCategory, sum(PPrice) as 'Categorywise Price' from Products group by Pcategory having Pcategory='Home Decoration'
select PCategory, sum(PPrice) as 'Categorywise Price' from Products group by Pcategory having Pcategory='Electronics'
select PCategory, sum(PPrice) as 'All Fridge Price' from Products where Pname='Fridge'group by Pcategory having Pcategory='Electronics'
--------------------------------------------------------------------------------------------------------------------------------------
drop table Employees
create table Employees
(EmpId int primary  key,
EmpName nvarchar(50) not null,
Department nvarchar(50) not null  check (Department in  ('IT','HR','Finance','Other')),
EmpSalary decimal(10,2)
)
insert into Employees values (1,'Raj','IT',5000)
insert into Employees values 
(2,'Alaya','Finance',3000),
(3,'Megha','IT',4000),
(4,'Rohan','Other',3000),
(5,'Ali','HR',3500),
(6,'Deep','HR',3600),
(7,'Sam','Finance',6000),
(8,'Viz','Other',2000),
(9,'Maan','IT',8000),
(10,'Arsh','IT',9000)
select * from Employees
--Exercise:
--1. Display Department wise total Salary : (show Department name and totalsalaryofDepartment)
--2. Display Department wise Average Salary: (show Department name and averageSalaryofDepartment)
--3. Show Onley those depratments where total salary>=10000
--4. Count Number of Employee in each Department  (show Department name and number of employees)

--DDL Trigger : Create ,alter drop
--create trigger <triggerName>
--on database
-- for Create_table|alter_table|drop_table
-- as
-- begin
--TSQL Statement
--end
-----------------------------------------------------------------
create table Ourtable (Id int primary key, Fname nvarchar(50) not null)
select * from Ourtable
alter table Ourtable add Lname nvarchar(50) not null

select * from Ourtable

drop table Ourtable
select * from Ourtable
---------------------------------------------------------------------------
create trigger StopCreation
on database
 for Create_table
 as
 begin
 rollback
 raiserror('you can not create the table, Drop the StopCreation First',16,1)
end


create table Student (SId int primary key, Sname nvarchar(50) not null , Sfee decimal(10,2))
create table Ourtable (Id int primary key, Fname nvarchar(50) not null)

select * from Student
select * from Ourtable
---------------------------------------------------------------------------------