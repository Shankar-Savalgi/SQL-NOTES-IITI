--Rename a column name
use Tesla
select * from employee

sp_help 'employee'

sp_rename 'employee.name', 'First name'

select * from employee

sp_rename 'employee.salary', 'Earnings'

sp_rename 'employee.First name', 'Name'

sp_rename 'employee.Earnings', 'Salary'

--************************
--Temp Tables

create table #school
(sid int, Name varchar(255), Marks int, Sports varchar(255))

select * from #school

insert into #school values (1, 'John', 89, 'Vollyball'),
(2, 'Jerry', 77, 'Soccer'), (3, 'Mark', 78, 'Cricket')

select * from #school

/* All the tables starting with # symbol are temp tables
The temp tables are created in System databases in Tempdb in Temporary Tables folder
If we close our session the temp tables are automatically dropped. */

