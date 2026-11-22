--UPDATE 

use Tesla

select * from Employee

update employee set age = 19 where name = 'shankar'

update employee set department = 'IT' where name = 'shankar'

update employee set age = 35, department = 'Accounts', city = 'Pune' where name = 'Nilesh'

update employee set age = 33, department = 'HR', city = 'Mumbai' where name = 'Hitesh'

update employee set salary = null where  name = 'Sakhi'

update employee set Department = 'HR' where department is null

update employee set age = 31,  salary = 57000, city = 'Chandigarh' where  id = 12

update employee set age = 24, gender = 'Female', salary = 350000, city = 'Jammu' where name = 'Vanshika'

--*****************
--cloning of table

select * from employee

select * into emp from employee

select * from emp

select * into empm from employee where gender = 'male'

select * from empm

--*************************

select * from employee

select top(5) * from employee

select top(7) * from employee

select top(7) id, name from employee

select top(5) * from employee where gender = 'male'

--*******************
--DISTINCT
select * from emp

insert into emp values (14, 'Rajeev', 29, 'male', 66000, 'IT', 'Chennai') --if there is multiple copii of this 52 then use distinct it will show unique means only one but it will not delete it will be there okay

select * from emp

 select distinct * from emp

 select * from emp