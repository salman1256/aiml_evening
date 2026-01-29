create database PassportsDb
use PassportsDb
create table Person
(PersonId int primary key, 
FullName nvarchar(50) not null,
DateofBirth date not null,
Nationality nvarchar(50) not null)

create table Passport
(PassportId nvarchar(15) primary key,
 PersonId int not null unique foreign key references Person,
 PassprotNumber nvarchar(50) not null unique,
 IssueDate date not null,
 ExpiryDate date not null)
 insert into Person (PersonId, FullName,DateofBirth, Nationality) values
 (1,'Mohd Sameer','1998-03-20','India'),
 (2,'Arsh Maan','1989-06-15','India'),
 (3,'Sam John','1989-07-14','Canada'),
 (4,'Chang Vi','1992-03-14','Malaysia'),
 (5,'Amir A Mkhatib','1985-03-20','Malaysia'),
 (6,'Leo Xing','1990-10-20','Malaysia'),
 (7,'N.Chandru','1989-02-23','Malaysia')
 select * from Person

 insert into Passport values
('PP1001', 1, 'IND-A1234567', '2022-01-10', '2032-01-09'),
('PP1002', 2, 'IND-B7654321', '2023-05-05', '2033-05-04'),
('PP1003', 3, 'CA-C9988776', '2021-09-18', '2026-09-17'),
('PP1004', 4, 'MY-M9988770', '2021-09-18', '2031-09-17'),
('PP1005', 5, 'MY-M9988772', '2021-09-18', '2025-09-17'),
('PP1006', 6, 'M-M9988771', '2021-09-18', '2031-09-17'),
('PP11009',7,  'M-M9876543','2012-09-12','2022-07-12')
select * from Passport
select * from Person join Passport on Person.PersonId=Passport.PersonId

select pr.PersonId,pr.FullName,pr.DateofBirth,pr.Nationality,ps.PassprotNumber,ps.IssueDate,ps.ExpiryDate
from Person pr join Passport ps  
on pr.PersonId=ps.PersonId
 insert into Person (PersonId, FullName,DateofBirth, Nationality) values
 (10,'Ani B.','1998-03-20','USA'),
 (12,'J.J.Thomas','1998-03-20','USA')
  insert into Person (PersonId, FullName,DateofBirth, Nationality) values(13,'R.Paul','1998-03-20','Canada')
  insert into Passport values
('PPUSA-098', 10, 'E00789990', '2022-01-12', '2032-01-02'),
('PPUSA-099', 12, 'E00789988', '2013-01-12', '2023-01-12')
  insert into Passport values ('CA-0989', 13, 'CA0789990', '2023-01-12', '2033-01-03')