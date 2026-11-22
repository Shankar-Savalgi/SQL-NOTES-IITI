--UNIQUE KEY
use tesla
select * from employee

insert into employee values (20, 'Prarthana', 39, 'Female', 89000, 'Marketing', 'New york', 'USA')

alter table employee add constraint uni_id UNIQUE(id)

update employee set id = 21 where name = 'Prarthana'

alter table employee add constraint uni_id UNIQUE(id)

sp_help 'employee'
