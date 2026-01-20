use Day30Db
--create procedure <procedureName>
-- parameters
--as
--sql statements
create procedure usp_saEmps
as
select * from Emps
---------------------
execute usp_saEmps
-------------------------
create procedure usp_sEmpById
@id int
as
select Id 'Employee Id', fname 'First Name',Lname 'Last Name', Salary from Emps where Id=@id
-----------------------------------------
execute usp_sEmpById 2
exec usp_sEmpById 5
exec usp_sEmpById 15
-------------default paramters--------------------
create procedure usp_sEmpByIdDefault
@id int=1
as
select Id 'Employee Id', fname 'First Name',Lname 'Last Name', Salary from Emps where Id=@id

execute usp_sEmpByIdDefault 2
exec usp_sEmpByIdDefault 5
exec usp_sEmpByIdDefault 15

exec usp_sEmpByIdDefault
--------------------------------------------------------
create proc usp_iEmp
@id int,
@fn nvarchar(50),
@ln nvarchar(50),
@salary decimal(10,2)
as
insert into Emps (Id,Fname,Lname,Salary) values (@id,@fn,@ln,@salary)
----------------------------------------------------------
exec usp_iEmp 11,'Rajesh','Goyal',3000.45
exec usp_iEmp 12,'Amina','Said',5000.45
exec usp_iEmp 13,'Si','Chang',5000.45
------------------------------------
exec usp_saEmps
----------------------------------
delete from Emps where Id=2
-----------------------------------
create proc usp_delEmp
@id int
as
delete from Emps where Id=@id
---------------------------------------
exec usp_delEmp 3

exec usp_saEmps

exec usp_delEmp 12

---Exercise -Day-30  -- Home Work----------
--Create a stored procedure to update Emps record based on Id
-- We will take id, newfirstname, newlastname, newsalary and update the record on given id
--i.e. query for you
update Emps set Fname='Rahul', Lname='Kumar',Salary=3500.75 where Id=9
-----------------------------------------------------------------------