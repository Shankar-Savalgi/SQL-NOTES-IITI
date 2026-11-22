--DELETE

use Tesla

select * from emp

delete from emp where name = 'Raj'

select * from emp

delete from emp where department = 'accounts'

select * from emp

select * from emp where name = 'rajeev'

delete top(6) from emp where name = 'rajeev'

select * from emp
--**************

select * from emp

delete from emp where gender = 'male'

select * from emp

--Truncate

truncate table emp

select * from emp

select * from empm

truncate table empm

--DROP

select * from emp

drop table emp

select * from empm

drop table empm

select * from empm

create database Rabbit
drop database Rabbit

---******************
--AlTER

select * from employee

alter table employee add country varchar(255)
alter table employee add email varchar(255), phone int
alter table employee drop column email
alter table employee drop column phone

update employee set country = 'India'
update employee set city = 'Delhi' where name = 'shankar'


