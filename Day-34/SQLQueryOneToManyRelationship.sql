create database Day34Db
use Day34Db
create table Customers
(CustomerId int primary key,
CustomerName nvarchar(50) not null,
City nvarchar(50) not null,
Country nvarchar(50) not null)

create table Orders
(OrderId int primary key,
CustomerId int foreign key references Customers,
OrderDate date not null,
Amount decimal(10,2))

insert into Customers values (1,'Sam Dicosta','California','USA')
insert into Customers values (2,'Aalia Rehman','Kuala Lumpur','Malaysia')
insert into Customers values (3,'RR Paul','New York','USA')
insert into Customers values (4,'Arsh Maan','Mumbai','India')
insert into Customers values (5,'Deep Das','Delhi','India')
insert into Customers values (6,'Adila Nazir','Kuala Lumpur','Malaysia')
select * from Customers
insert into Orders values 
(1001,1,'2025-10-29',5000),
(1002,1,'2025-11-29',4000),
(1003,1,'2026-01-05',5000),
(1004,1,'2026-01-10',4000),
(1005,1,'2025-10-29',5000),
(1006,2,'2025-11-29',2600),
(1007,2,'2026-01-29',3000),
(1008,3,'2025-10-29',3200),
(1009,3,'2025-11-29',2000),
(1010,3,'2026-01-20',1200)
select * from Customers join Orders on Customers.CustomerId=Orders.CustomerId
select c.CustomerId,c.CustomerName,o.OrderDate,o.Amount from Customers c join Orders o on c.CustomerId=o.CustomerId

