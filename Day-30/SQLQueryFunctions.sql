create database Day30Db
use Day30Db

--Built in functions
--Date
--getdate
select getdate() as 'Current Date Time'
select getdate()  'Current Date Time'
select YEAR(getdate()) 'Current Year'
select month(getdate()) 'Current Month'
select day(getdate()) 'Current date'

--datediff
select DATEDIFF(Year,'05/19/1987',getdate()) 'Age in Years'
select DATEDIFF(MONTH,'05/19/1987',getdate()) 'Age in total Months'
select DATEDIFF(DAY,'05/19/1987',getdate()) 'Age in  total Days'
-----------------------------------------------------------------------------------
create table Customers
(CId int primary key,
 Cname nvarchar(50) not null,
 SSdate date not null,
 SEdate date not null
 )
 go
 insert into Customers values (1,'Sam','12/12/2025','12/12/2026')
 insert into Customers values (2,'Neha','10/10/2025','02/10/2026')
 insert into Customers values (3,'Zoya','12/25/2025','01/25/2026')
 insert into Customers values (5,'Arsh','01/01/2026','02/28/2026')
  go
select * from Customers
go
select CId,Cname,SSdate,SEdate,DATEDIFF(month,getdate(),SEdate) 'Month to End Subscription' from Customers

select CId,Cname,SSdate,SEdate,DATEDIFF(day,getdate(),SEdate) 'Remaining Days of Subscription' from Customers
----------------------------------------------------------------------
--create schema <schemaName>
create schema bank


create table bank.Customers
(CId int primary key,
 Cname nvarchar(50) not null,
CODLimit float)
 
 select * from Customers
 select * from dbo.Customers

 select * from bank.Customers
 insert into bank.Customers values (1,'Ali',34000)
 insert into bank.Customers values (2,'Deep',35000)
 -------------------------------------------------------
 --create function [SchemaName]<functionName>(parameterlist)
 -- returns datatype
 -- as
 --begin
 ---sql satements
 --end
 -------------------------------------------------------------
 create function fullName(@fn nvarchar(50),@ln nvarchar(50))
 returns nvarchar(101)
 as
 begin
 return @fn+ ' '+@ln
 end
 ---------------------------------------------------
 select dbo.fullName('Sam','Dicosta') 'Full Name'
 ----------------------------------------------------
 create table Emps
 (Id int primary key,
 Fname nvarchar(50) not null,
 Lname nvarchar(50) not null,
 Salary decimal(10,2) not null)
 -------------------------------------------
 insert into Emps values 
 (1,'Sam','Dicosta',9800.50),
 (2,'Deep','Das',7000.25),
 (3,'Raj','Kamal',6500.55),
 (4,'Rahul','Gaur',6000.60),
 (5,'Arsh','Maan',9000.25),
 (9,'Nidhi','Kumari',5000.25)
 --------------------------------------
 select * from Emps

 select Id, Fname,Lname,dbo.fullName(Fname,Lname)'Full Name',Salary from Emps
 --------------------------------------
 create function calcTax(@amount decimal(10,2))
 returns decimal(10,2)
 as
 begin
 declare @tax decimal(10,2)           -- declare @localVariableName datatype
  set @tax=@amount*0.10               --set @localVariableName=value
 return @tax
 end
--------------------------------------
 select dbo.calcTax(1000) 'Tax Amount'
 select dbo.calcTax(200) 'Tax Amount'
 -----------------------------
 alter function calcTax(@amount decimal(10,2))
 returns decimal(10,2)
 as
 begin
 declare @tax decimal(10,2) 
 if(@amount<=7000)
  begin                                         --{
	set @tax=@amount*0.10 
  end                                           --}
else
	begin
	set @tax=@amount*0.20
	end
 return @tax
 end
 ---------------------
 select dbo.calcTax(10000) 'Tax Amount'
 select dbo.calcTax(100) 'Tax Amount'
 select Id, Fname,Lname,dbo.fullName(Fname,Lname)'Full Name',Salary, dbo.calcTax(Salary) 'Tax' from Emps