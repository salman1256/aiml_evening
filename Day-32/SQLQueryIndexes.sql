--Index
--Indexes :1 Clustered Index , Non Clustered Index
use Day32Db
create table Book
(BId int ,
Bookname nvarchar(50),
BookPrice float)
------------------
insert into Book values (1,'Wings of Fire',550.90)
insert into Book values (2,'Harry Potter',550.75)
insert into Book values (3,'Python Basics',530.50)
insert into Book values (5,'Agentic AI',450.34)
insert into Book values (5,'AIML',650.34)
update  Book set BId=9 where Bookname='Agentic AI'
insert into Book values (4,'Learn Python from Scratch',725.30)
--------------------------
select * from Book
select * from Book where BId=3
---------------------------------------------------
--create <typeofIndex> index indexName
--on TableName(columnName)
--Clustered Index: Sorthe the actual table data in the physical oreder of clustered index
-- Only on clustered index per table
------------------------------------------------
create clustered index bk_id_index 
on 
Book (BId)
select * from Book
select * from Book where BId=3
----------------------------------
create nonclustered index bk_name_index 
on 
Book (Bookname)
-----------------------------
create index bk_price_index 
on 
Book (Bookprice)
---------------------------------
select * from Book
---------------------------
--Built in Stored procedure to check all indexex
execute sp_helpindex 'Book'

--drop an index from a table
drop index bk_name_index on Book
------------------------------
execute sp_helpindex 'Book'
-----------------------------------------
--composite non clustered index
create table Emp
(Id int  primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Department nvarchar(50) not null,
Salary float not null)
insert into Emp values (1,'Sam','Dicosta','HR',6000)
insert into Emp values (6,'Aman','Mathur','IT',5000)
insert into Emp values (7,'Zen','Jamal','IT',8000)
insert into Emp values (2,'Rohit','Sharma','HR',5000)

create nonclustered index ix_dept_sal on Emp(Department,Salary)
execute sp_helpindex 'Emp'
select * from Emp
---create unique non clustered index
create unique nonclustered index ix_Lname on Emp(Lname)
execute sp_helpindex 'Emp'
-----------------------------------------------
create table Orders
(OrderId int identity(100,1),
CName nvarchar(50) not null,
City nvarchar(50) not null,
Orderdate date not null,
OrderAmount decimal(10,2) not null
)
insert into Orders values ('Sam','California','12/12/2025',2500)
insert into Orders values ('Raj','Delhi','12/12/2025',2000)
insert into Orders values ('Chang','KL','12/12/2025',3500)
insert into Orders values ('Adam','Penang','12/12/2025',4000)
insert into Orders values ('Riyaz','Johor','12/12/2025',6200)
insert into Orders values ('Viz','KL','12/12/2025',7100)
select * from Orders
-------------------------------------------------------------
--create clustered index on OrderId
--create non-clustered index on City
---create composite index on (City,OrderDate)
 --- check all indexes created on Orders table
--- Drop the non clustered index on City
--1 create clustered index on OrderId
create clustered index ix_order_id on Orders(OrderId)
--2-create non-clustered index on City
create nonclustered index ix_order_city on Orders(City)

--3 create composite index on (City,OrderDate)
create nonclustered index ix_cit_orderdate_comp on Orders(City,OrderDate)

 ---4 check all indexes created on Orders table

 exec sp_helpindex 'Orders'

 ---5 Drop the non clustered index on City
 drop index ix_order_city on Orders

 ---------------------------------------
  exec sp_helpindex 'Orders'
