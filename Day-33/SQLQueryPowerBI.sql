create database PowerBIDb
use PowerBIDb
create table Products
(ProductId int primary key,
ProductName nvarchar(50),
Category nvarchar(50),
UnitPrice decimal(10,2)
)
insert into Products values 
(1,'Xiaomi Laptop','Electronics',5600.50),
(2,'Wireless Mouse','Electronics',50),
(3,'Office Chair','Furniture',245.50),
(4,'Touch Screen','Electronics',450),
(5,'Office Table','Furniture',345.20)

select * from Products
create table Sales
(SalesId int identity primary key,
ProductId int references Products(ProductId),
Region nvarchar(50),
Quantity int,
SaleDate date
)

insert into Sales(ProductId,Region,Quantity,SaleDate) values
(1,'East',5,'10/01/2025'),
(2,'West',5,'10/01/2025'),
(3,'South',5,'10/01/2025'),
(4,'West',10,'10/01/2025'),
(5,'East',5,'10/01/2025'),
(1,'East',9,'11/01/2025'),
(2,'North',5,'11/01/2025'),
(3,'East',5,'11/01/2025'),
(4,'North',15,'11/01/2025'),
(5,'West',10,'11/01/2025')
select * from Sales
select UnitPrice from Products where ProductName ='Xiaomi Laptop'
insert into Sales(ProductId,Region,Quantity,SaleDate) values(5,'North',10,'01/01/2026')
insert into Sales(ProductId,Region,Quantity,SaleDate) values(3,'North',12,'01/01/2026')
insert into Sales(ProductId,Region,Quantity,SaleDate) values(3,'North',5,'01/01/2026')
insert into Sales(ProductId,Region,Quantity,SaleDate) values(5,'West',2,'01/01/2026')

insert into Products values (6,'Iphon','Mobile',5045.20)
select * from Products 
insert into Sales(ProductId,Region,Quantity,SaleDate) values(6,'East',3,'02/01/2026')