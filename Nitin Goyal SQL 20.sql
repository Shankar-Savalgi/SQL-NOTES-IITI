use tesla
--Indexes
select * from employee

select * from employee where city = 'chennai'

--NOn clustered index

create nonclustered index In_city on employee(city)

select * from Employee where city = 'chennai'

create index inx_age on employee(age)

select * from Employee where age > 20

drop index employee.in_city

drop index employee.inx_age

--Clustered Index
select * from employee

alter table employee alter column id int not null

alter table employee add constraint Pri_key_id primary key(id)

select * from Employee

alter table employee drop constraint pri_key_id

create clustered index inx_name on employee(name)

select * from Employee 

alter table employee add constraint pri_key_id primary key(id)

alter table employee drop pri_key_id 

drop index employee.inx_name

alter table employee add constraint pri_key_id primary key(id)

alter table employee drop pri_key_id 

