--Check

use Tesla

select * from employee

insert into employee values (15, 'John', 7, 'Male', 60000, 'HR', 'Oslo', 'Norway')

select * from employee

alter table employee add constraint C_age CHECK (age between 22 and 60 )

update employee set age = 27 where name = 'john'

alter table employee add constraint C_age Check (age between 22 and 60 )

sp_help 'employee'

insert into employee values (18, 'mark', 9, 'male', 67000, 'IT', 'seattle', 'Usa')
