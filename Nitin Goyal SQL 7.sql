--Operators and clauses
--Greater than and greater than equal to

use Tesla

select * from employee where age > 19

select * from employee where age > = 19

--Less than and less than equal to

select * from employee where age < 32

select * from employee where age < = 32

select * from employee where salary < 200000

select * from employee where salary < = 200000

--********************************

--Like

select * from employee where name like 's%'

select * from employee where name like '%r'

select * from employee where name like '_h%'

select * from employee where name like '%h_'

select * from employee where name like '__a%'

select * from employee where name like '%sh'

select * from employee where name like 'A_h%'

select * from employee where age like '2%'

select * from employee where name like '%h%'

select * from employee where name like 's%r'

--****************
--In

select * from employee where id in (1, 3, 4, 5, 8, 6)

select * from employee where name in ( 'shankar', 'sakshi', 'anjali')

select * from employee where department in ( 'IT', 'Hr')

--between

select * from employee where age between 18 and 41

select * from employee where id between 9 and 12

select * from employee where salary between 41000 and 200000

select * from employee where name between 'anjali' and 'nandini'