Create database Student1

use Student1

create table Student1 (id int, Name varchar(255), email varchar(255), age int, Course int)

insert into Student1 values (1, 'Aditya', 'aditya@gmail.com', 20, 123),
(2, 'Raj', 'raj@gmail.com', 21, 1245),
(3, 'rajeev', 'rajeev@gmail.com', 22, 373)

select * from Student1

alter table Student1 add constraint uni_name unique(Email)

insert into Student1 values (3, 'aditya', 'aditya@gmail.com', 20, 123) 

sp_help 'student1'

alter table student1 drop constraint uni_name 

--*******************