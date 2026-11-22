use Tesla

create table Project
(PID int, Project_name varchar(255), Technology varchar(255), Postal int)

insert into Project values (1, 'Kite', 'Java', 45625), (2, 'Verison', 'SQL', 12563), (3, 'OTK', 'Azure', 32562),
(4, 'Kalmar', 'Python', 12545), (5, 'Telenor', 'AWS', 78956), (6, 'Bites', 'Testing', 98652), (7, 'Querty', 'Java', 23568),
(8, 'Western Union', 'SQL', 77845), (9, 'BBG', 'Azure', 99875), (10, 'RGHL', 'Python', 11253), (11, 'FOS', 'AWS', 33695),
(12, 'Radium', 'Testing', 55689), (13, 'Polaris', 'Java', 22653), (14, 'Postern', 'SQL', 11235), (15, 'Cogni', 'Azure', 12456)

select * from project

--*************
--Foreign Key

select * from employee --Primary key on id

select * from project

alter table project add constraint For_key Foreign key (PID) references Employee(id)

insert into project values (21, 'Voda', 'SQL', 77889)

insert into employee values (21, 'Marcus', 45, 'Male', 45000, 'Marketing', 'Oslo', 'Norway')

insert into project values (21, 'Voda', 'SQL', 77889)

select * from project

select * from employee 

delete from employee where id = 15  --error will come

delete from project where pid = 15

delete from employee where id = 15
   


sp_help 'employee'