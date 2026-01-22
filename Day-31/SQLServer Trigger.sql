create database Day31Db
use Day31Db
create table Emps
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Salary decimal(10,2),
Designation nvarchar(50) not null check (Designation in ('Manager','HR','Tester','Developer','Other')),
DOJ date default getdate()
)

insert into Emps values 
(1,'Sam','Dicosta',9000,'Manager','12/20/2024'),
(2,'Deep','Das',7000,'Developer','03/25/2020'),
(3,'Vinay','Kumar',8000,'Manager','12/29/2023'),
(4,'Rohit','Verma',9000,'Manager','12/11/2020'),
(5,'Si','Yan',7000,'Developer','09/25/2020'),
(9,'Xi','Chang',8000,'Developer','12/20/2022'),
(10,'Arsh','Maan',6500,'Tester','10/25/2021'),
(13,'Soni','K.',4500,'Tester','11/25/2020'),
(15,'Danish','Waani',3200,'Other','10/15/2022')
select * from Emps
select count(*) 'Number of Employees' from Emps
---Stored Procedure : with output parameter
------------------------------------------------------
create procedure usp_DesginationCount
@desig nvarchar(50),
@noe int output
as
select @noe=count(Id) from Emps where Designation=@desig

---------------------------------------------------------
declare @empCount int
exec usp_DesginationCount 'Manager',@empCount output
print @empCount
------------------------------
declare @empCount int
exec usp_DesginationCount 'Other',@empCount output
print @empCount
--------------------------
-- if we call a stored procedure from inside a procedure than it is known as nested procedure
create procedure nestPro
@dsg nvarchar(50)
as
begin
	declare @empCount int
	execute usp_DesginationCount @dsg,@empCount output
	print concat('Number of Employees working as a ',@dsg , ' are: ',@empCount)
end
------------------------------------------
execute nestPro 'Tester'
exec nestPro 'Developer'
----------------------------------
--Built In Stored Procedure or System Stored Procedure
exec sp_help
exec sp_help 'Emps'
exec sp_columns 'Emps'
----------------------
exec sp_tables
use Day30Db
exec sp_help
exec sp_help 'Customers'
-------------------------
exec sp_databases

use Day31Db

exec sp_helptext usp_DesginationCount

exec sp_helptext nestpro
-----------------------------
alter procedure nestPro  
@dsg nvarchar(50)  
with encryption
as  
begin  
 declare @empCount int  
 execute usp_DesginationCount @dsg,@empCount output  
 print concat('Number of Employees working as a ',@dsg , ' are: ',@empCount)  
end
-------------------
exec sp_helptext nestpro
---------------------
drop proc nestPro
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
--drop table Customers
--drop table Customers_LogInfo
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

create trigger  afterInsertCustomer
on Customers
after insert
as
declare @id int
declare @fn nvarchar(50)
declare @ln nvarchar(50)
declare @odlimit decimal(10,2)
declare @ssdate date
select @id=CId,@fn=FName,@ln=Lname,@odlimit=ODLimit,@ssdate=SSDate from inserted

insert into  Customers_LogInfo(CId,Fname,Lname,ODLimit,SSDate,LogAction,LogTime) 
values(@id,@fn,@ln,@odlimit,@ssdate,'Record Inserted',getdate())

if @@ERROR=0
print 'Record Inserted and Action Captured in Log Table '
----------------------------------------------------------------------------
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (1,'Sam','Dicosta',45000.75,'12/23/2023')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (2,'Raj','Kiran',55000.75,'12/24/2023')
------------------------------------------------------------------------------------------------------
create trigger  afterDeleteCustomer
on Customers
after delete
as
begin
	if exists(select 1 from deleted)
		begin
		declare @id int
		declare @fn nvarchar(50)
		declare @ln nvarchar(50)
		declare @odlimit decimal(10,2)
		declare @ssdate date
		select @id=CId,@fn=FName,@ln=Lname,@odlimit=ODLimit,@ssdate=SSDate from deleted
		insert into  Customers_LogInfo(CId,Fname,Lname,ODLimit,SSDate,LogAction,LogTime) 
		values(@id,@fn,@ln,@odlimit,@ssdate,'Record Deleted',getdate())
		print 'Record Deleted and Action Captured in Log Table '
		end
end

delete from Customers where CId=1
delete from Customers where CId=12

select * from Customers
select * from Customers_LogInfo

truncate table Customers
truncate table Customers_LogInfo
-----------------------------------------------------------------------------------------------------
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (1,'Sam','Dicosta',45000.75,'12/23/2023')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (2,'Raj','Kiran',55000.75,'12/24/2023')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (4,'Danish','Waani',45000.75,'10/26/2025')
insert into Customers(CId,Fname,Lname,ODLimit,SSDate) values (5,'Ruhee','Nazir',55000.75,'11/18/2024')
------------------------------------------------------------------------------------------------------------
create trigger  afterUpdateustomer
on Customers
after update
as
begin
	if exists(select 1 from inserted)
		begin
			declare @id int
			declare @fn nvarchar(50)
			declare @ln nvarchar(50)
			declare @odlimit decimal(10,2)
			declare @ssdate date
			select @id=CId,@fn=FName,@ln=Lname,@odlimit=ODLimit,@ssdate=SSDate from inserted
			insert into  Customers_LogInfo(CId,Fname,Lname,ODLimit,SSDate,LogAction,LogTime) 
			values(@id,@fn,@ln,@odlimit,@ssdate,'Record Updated',getdate())
			print 'Record Updated and Action Captured in Log Table '
		end
end
------------------------------------------------------------------------------
update customers set Fname='Aarif',Lname='Khan' where CId=2
------------------------------------------------------------------
select * from Customers
select * from Customers_LogInfo