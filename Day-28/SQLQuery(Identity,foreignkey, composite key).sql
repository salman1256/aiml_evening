create database Day28Db 
use Day28Db
--identity (seed,increment)
-- 1,1
create table Emps 
(Id int identity primary key,
 Fname nvarchar(50) not null,
 Lname nvarchar(50),
 Salary float )
 
 insert into Emps values ('Sam','Dicosta',8000)
 select * from Emps
 insert into Emps values 
 ('Arsh','Maan',8000),
 ('Danish','Waani',8000),
 ('Ruhee','Nazir',8000),
 ('Vini','Kumari',8000)

 select * from Emps
 drop table Emps
 ---------------------------
 create table Emps 
(Id int identity(100,5) primary key,
 Fname nvarchar(50) not null,
 Lname nvarchar(50),
 Salary float )
  insert into Emps values ('Sam','Dicosta',8000)
 select * from Emps
 insert into Emps values 
 ('Arsh','Maan',8000),
 ('Danish','Waani',8000),
 ('Ruhee','Nazir',8000),
 ('Vini','Kumari',8000)
 --------------------------------------
 --create database ProductsDb
 -- Inside the ProductsDb database Create a table Products
 -- Products Table have following columns
 -- ProductId int identity starts from 1000 and next record is 1010,1020,1030.....
  --ProductName nvarchar(50) not null and unique
  --ProductQuantity int should not be negative or more than 100 , default is 1

  --insert at least 5 records in this table
create database ProductsDb
use ProductsDb
Create  table Products
 ( ProductId int identity(1000,10),
  ProductName nvarchar(50) not null unique,
  ProductQuantity int  check(ProductQuantity>=0 and ProductQuantity<=100) default 1
  )
  insert into Products values ('Herbal Shampoo',20),('Tea',50),('Ice Tea',30),('Face Wash',20),('Face Cream',35),('Lip Balm',23)
  select * from Products
  insert into Products values ('Herbal oil',-15) --error
   insert into Products values ('Herbal oil',250) --error

     insert into Products(ProductName) values ('Herbal oil')
	 ---globally unique Identifier
	 create table Person
	 (PersonId uniqueidentifier primary key,
	 PersonName nvarchar(50) not null)
	 insert into Person values (newid(),'Sam')
	 insert into Person values (newid(),'Ravi')
	insert into Person values (newid(),'aditi')
	select * from Person
	-----
	drop table Person
	 create table Person
	 (PersonId uniqueidentifier primary key default newid(),
	 PersonName nvarchar(50) not null)

	 insert into Person(PersonName) values ('Sam')
	 insert into Person(PersonName)  values ('Ravi')
	insert into Person(PersonName)  values ('aditi')

	select * from Person
	--Foreign Key: Ensures referential integrity , Its guaranatees that  the value in child table must exist in parent table
	--Parent Table
	create table Category  
	(CId int primary key,
	CName nvarchar(50) not null unique)
	insert into Category values (1,'Electronics'),(2,'Mobile'),(3,'Home Decor'),(4,'Self Grooming')
	select * from Category
	--ColumnName datatype foreign key references ParentTable(Column)
	--Child Table
	create table Product
	(PId int primary key,
	Pname nvarchar(50) not null,
	Pprice float ,
	PCategory int foreign key references Category(CId)
	)
	insert into Product values  (1,'IPhone',5000,2)
	insert into Product values  (2,'Nothin-3a',2000,2)
	insert into Product values  (3,'Fridge',1500,1)
	select * from Product
	insert into Product values  (5,'Face Wash',100,4)
	
	insert into Product values  (6,'Herbal Shampoo',560,5)
	--The INSERT statement conflicted with the FOREIGN KEY constraint "FK__Product__PCatego__4222D4EF". 
	--The conflict occurred in database "ProductsDb", table "dbo.Category", column 'CId'.
	select * from Category
	select * from Product

	-----------------------------------------------------------------------------------
	select * from Product , Category where Product.PCategory=Category.CId

	select * from Product p , Category c where p.PCategory=c.CId

	select p.PId,p.Pname,p.PCategory,c.CName    from Product p , Category c where p.PCategory=c.CId

select
p.PId 'Product Id',
p.Pname 'Product Name',
p.PCategory 'Category ID',
c.CName 'Category Name'    
from Product p , Category c 
where p.PCategory=c.CId
--------------------------------------------------------------
--parent Student Reg, child Student Fee
create table StudentReg
(SId int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Dob date)

create table StudentFee
(SId int not null foreign key references StudentReg(SId),
 FMonth int not null,
 FYear int not null,
 FAmount float not null,
 constraint Fee_PK primary key(SID,FMonth,FYear)
 )
  insert into StudentReg values 
 (1,'Ravi','Kumar','12/26/2011'),
 (5,'Sam','Dicosta','12/20/2014'),
 (7,'Arsh','Maan','05/19/2010'),
 (8,'Ruhee','Nazir','02/15/2015'),
 (10,'Ved','Das','11/09/2013'),
 (11,'Deep','Kiran','11/21/2012')
 insert into StudentFee values (1,1,2026,500)
  insert into StudentFee values (1,12,2025,500)
   insert into StudentFee values (1,11,2025,500)

   insert into StudentFee values (5,1,2026,300)
  insert into StudentFee values (5,12,2025,400)
   insert into StudentFee values (5,11,2025,450)

    insert into StudentFee values (8,1,2026,300)
  insert into StudentFee values (8,12,2025,400)
   insert into StudentFee values (8,11,2025,450)
     insert into StudentFee values (1,11,2025,450)
	 --Violation of PRIMARY KEY constraint 'Fee_PK'. 
	 --Cannot insert duplicate key in object 'dbo.StudentFee'. 
	 --The duplicate key value is (1, 11, 2025).
	   insert into StudentFee values (2,11,2025,450)
	   --The INSERT statement conflicted with the FOREIGN KEY constraint "FK__StudentFee__SId__46E78A0C". The conflict occurred in database "ProductsDb", table "dbo.StudentReg", column 'SId'.
select *   from StudentReg r , StudentFee f where r.SId=f.SId
select r.SId,r.Fname,r.Lname,r.Dob,f.FMonth,F.FYear,f.FAmount from StudentReg r , StudentFee f where r.SId=f.SId

select r.SId,
r.Fname +' ' +r.Lname 'Student Name',
r.Dob,
f.FMonth,
F.FYear,
f.FAmount 
from StudentReg r , StudentFee f 
where r.SId=f.SId

select * from StudentFee
select * from StudentReg
delete from StudentReg where SId=10
delete from StudentReg where SId=8
--The DELETE statement conflicted with the REFERENCE constraint "FK__StudentFee__SId__46E78A0C". 
--The conflict occurred in database "ProductsDb", table "dbo.StudentFee", column 'SId'.
-------------------------------------------------------------------------------------------------------------
drop table StudentReg 
--Could not drop object 'StudentReg' because it is referenced by a FOREIGN KEY constraint.
drop table StudentFee
drop table StudentReg 

create table StudentReg
(SId int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Dob date)

create table StudentFee
(SId int not null foreign key references StudentReg(SId) on delete cascade on update cascade,
 FMonth int not null,
 FYear int not null,
 FAmount float not null,
 constraint Fee_PK primary key(SID,FMonth,FYear)
 )

  insert into StudentReg values 
 (1,'Ravi','Kumar','12/26/2011'),
 (5,'Sam','Dicosta','12/20/2014'),
 (7,'Arsh','Maan','05/19/2010'),
 (8,'Ruhee','Nazir','02/15/2015'),
 (10,'Ved','Das','11/09/2013'),
 (11,'Deep','Kiran','11/21/2012')
 insert into StudentFee values (1,1,2026,500)
  insert into StudentFee values (1,12,2025,500)
   insert into StudentFee values (1,11,2025,500)

   insert into StudentFee values (5,1,2026,300)
  insert into StudentFee values (5,12,2025,400)
   insert into StudentFee values (5,11,2025,450)

    insert into StudentFee values (8,1,2026,300)
  insert into StudentFee values (8,12,2025,400)
   insert into StudentFee values (8,11,2025,450)
---------------------------------------------------
   select * from StudentReg
   select count(*) 'Number of Rows' from StudentReg
   select * from StudentFee
   select  count(*) 'Number of Rows' from StudentFee
------------------------------------------------------
  delete from StudentReg where SId=8
  select * from StudentReg
  select * from StudentFee
----------------------------------------
  
  update StudentReg set SId=9 where Fname='Ravi'

  select * from StudentReg
   select * from StudentFee
-------------------------------------------
 delete from StudentReg where SId=5
  select * from StudentReg
  select * from StudentFee