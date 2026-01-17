use Day29Db
create table KLBookStore
(BId int primary key,
BookName nvarchar(50) not null unique,
BookQty int  not null default 1)
create table DubaiBookStore
(BId int primary key,
BookName nvarchar(50) not null unique,
BookQty int  not null default 1)

insert into DubaiBookStore values 
(1,'The God of Small Things',50),
(2,'Harry Potter',50),
(3,'You can win',50),
(4,'Rich Dad Poor Dad',50),
(5,'Psychology of Money',50)

insert into KLBookStore values
(4,'Rich Dad Poor Dad',20),
(5,'Psychology of Money',10),
(10,'Wings of Fire',25)
select * from DubaiBookStore
select * from KLBookStore
select count(BId) from DubaiBookStore
select count (BId) from KLBookStore

--union: display all distinct records from both the tables
select BId,BookName from DubaiBookStore
union
select BId,BookName from KLBookStore
--union all: display allrecords from both the tables including duplicate as well
select BId,BookName from DubaiBookStore 
union all
select BId,BookName from KLBookStore 

--intersect: common records from both the table
select BId,BookName from DubaiBookStore 
intersect
select BId,BookName from KLBookStore 

--except
select BId,BookName from DubaiBookStore 
except
select BId,BookName from KLBookStore 
-----------------------------------------------
select BId,BookName from KLBookStore 
except
select BId,BookName from DubaiBookStore
-----------------------------------------------------
select * from Employees
select * from KLBookStore
-------------------------------
--delete vs drop vs truncate-------
select * from Colors
--delete
delete from Colors where CId=1
select * from Colors order  by CId
delete from Colors
select * from Colors
insert into Colors(Color) values ('White')
---------------------------------------------------
drop table Colors
select * from Colors
--------------------------------------
--truncate:remove all the records and reset the identity,structure will remain the same
create table Colors
(CId int identity primary key,
Color nvarchar(50) not null unique)
insert into Colors(Color) values ('Red'),('Green'),('Black'),('Blue'),('Yellow'),('White')
select * from Colors order by CId
----------------------------------------
truncate table Colors
----------------------------------
select * from Colors
insert into Colors values ('Pink')
select * from Colors
insert into Colors values ('Red')
-----------------------------------------------------------
----------------------------------------------------------
--Built in Functions
-- Mathematical functions
 select SQUARE(5) as 'square of 5'
 select SQRT(625) as 'square root of 625'
 select RAND(10) 'Random number '
 select round(12.4567788,2) 'Round '
  select ceiling(12.4567788) 'Ceiling '
  select floor(12.4567788) 'Floor'

  select * from Employees
  select Fname,Lname,Fname+' '+Lname 'Full Name',round(Salary,2) 'Salary' from Employees
   select Fname,Lname,Fname+' '+Lname 'Full Name',ceiling(Salary) 'Salary' from Employees
    select Fname,Lname,Fname+' '+Lname 'Full Name',floor(Salary) 'Salary' from Employees
--Aggregate functions :sum, max,min,avg
select max(Salary) 'Maximum Salary'from Employees

select min(Salary) 'Minimu Salary'from Employees

select  avg(Salary) 'Average Salary' from Employees

select round(avg(Salary),3)'Average Salary' from Employees

select sum (Salary) 'Total Salary' from Employees

--string functions
--len: number of characters 
--upper: uppercase
--lower: lower case
select len('AI and Machine Learning') as 'Number of Characters'
select upper('AI and Machine Learning') as 'Upper case'
select lower('AI and Machine Learning') as 'Lower case'

 select Fname,Lname ,upper(fname) 'First Name',upper(lname) 'Last Name'from Employees
 select Fname,Lname ,lower(fname) 'First Name',lower(lname) 'Last Name'from Employees
 select Fname,len(fname) 'No. of Characters' ,Lname ,len(lname) 'Number of characters'from Employees
 ----------------------------------------------------------------------------------
 select left('AI and Machine Learning',2) as 'Left'
  select right('AI and Machine Learning',3) as 'Right -3'
  select concat('Deep',' ','Learning',' ','using Python')

  select Fname,Lname, concat(Fname,' ',Lname) 'Full Name' from Employees

   select Fname,Lname, 
   left(Fname,1)+'.'+ left(lname,1)+ ' .' 'Initial', 
   concat(Fname,' ',Lname) 'Full Name' 
   from Employees


    select Fname,Lname, 
  concat( left(Fname,1),'.', left(lname,1), ' .' )'Initial', 
   concat(Fname,' ',Lname) 'Full Name' 
   from Employees






 


