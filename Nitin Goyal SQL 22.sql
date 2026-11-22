use Tesla
--Triggers

select * from Employee

--After Trigger

create trigger Tri_up on employee
after update
as begin
Print 'Your data has been updated'
end

update Employee set age = 19 where name = 'shankar'

select * from Employee

create trigger Tri_in_de on employee
after delete, insert
as begin 
print 'You have either deleted row or inserted row in the employee table'
end

insert into employee values(25, 'Mohan', 28, 'Male', 45000, 'IT', 'Chennai', 'India')

select * from Employee

delete from employee where id= 16

drop trigger tri_in_de

--Instead of

select * from Employee

Create trigger trigg_up on employee
instead of update
as begin
print 'You cannot update any data in employee table'
end

update employee set age = 99 where name = 'shankar'

select * from Employee

alter table employee disable trigger  trigg_up

update employee set salary = 85000 where name = 'Raj'

select * from employee 

alter table employee enable trigger trigg_up

update employee set salary = 88000 where name = 'raj'

select * from employee


create trigger trig_insteadof_del on employee
instead of delete
as begin
print 'You cannot delete any data from employee table'
end

select * from employee

delete from employee where id = 1

delete from employee where gender = 'male'

select * from employee

drop trigger tri_up, trigg_up, trig_insteadof_del