use tesla
--Cross JOin

select * from employee --(20 rows)
select * from project --(19 rows)

select * from employee cross join project

select * from employee cross join project where name = 'Shankar'
--

create table Company
(CID int, Company_name varchar(255), Headquaters varchar(255), Count int)

insert into Company values (1,'TCS','Bangalore', 123), (2, 'IBM', 'Seattle', 422), (3, 'Accenture', 'New York', 432),
(4, 'Cognizant', 'Chennai', 453), (5, 'Meta', 'Noida', 453), (6, 'Apple', 'Seattle', 442), (7, 'Erricson', 'Sydney', 345),
(8, 'Wipro', 'Pune', 265), (9, 'Twitter','Mumbai', 963), (10, 'Microsoft', 'Bangalore', 369), (11, 'Tesla', 'Seattle', 258),
(12, 'Jupiter','New York',741), (13, 'Saturn', 'Chennai', 325), (14, 'Intelipaat','Noida',363),(15,'TechM','Seattle',653),
(16,'HCL','Sydney',235), (17, 'Aditya Birla', 'Pune',278),(18, 'Fedility','Mumbai',858)

select * from Company
--********
--Join more than 2 tables

select * from employee
select * from project
select * from company

select * from employee e inner join project p on e.id = p.pid inner join company c on p.pid = c.cid

select e.id, e.name, e.age, e.gender, e.salary, p.project_name, p.technology, e.department, c.company_name, c.headquaters from
employee e inner join project p on e.id = p.pid inner join company c on c.cid = p.pid where e.gender = 'female' order by e.age

select e.id, e.name, concat(upper(substring(e.name, 1, 3)), lower(substring(e.gender, 1, 1)), upper(substring(p.project_name, 1, 3)),
lower(substring(p.technology, 1, 2)), upper(substring(c.company_name, 1, 3))) as USERNAME,
concat(upper(substring(e.name, 1,1)), e.age, p.postal, upper(substring(c.headquaters, 1, 3)), c.count) as PASSWORD from employee e
inner join project p on e.id = p.pid inner join company c on c.cid = p.pid

