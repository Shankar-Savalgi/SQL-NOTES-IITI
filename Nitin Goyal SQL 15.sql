use tesla

create function Multiply
(
@a int,
@b int,
@c int
)
returns int
as begin
return @a * @b * @c
end

select dbo.multiply(23, 53, 17) as Multiplication

select * from employee

select name, id, age, salary, dbo.multiply(id, age, salary) as Result from employee
--**********

--cre3ate a function to find simple interest

create function SI
( @a float,
@b int,
@c int
)
returns float
as begin
return(@a  * @b * @c)/100
end

select dbo.si(3, 11, 13)

select dbo.si(30, 110, 130)

select * from employee

select name, salary as Principle, age as ROI, Id as Time, dbo.si(salary, age, id) as Simple_interest from employee

select name, salary as Principle, age as ROI, id as Time, dbo.si(salary, age, id) as Simple_interest, (salary + dbo.si(salary, age, id))
as Amount from employee

sp_helptext 'multiply'

alter function Multiply  
(  
@a int,  
@b int,  
@c int,
@d int
)  
returns int  
as begin  
return @a * @b * @c * @d
end

select dbo.multiply(13, 45, 27, 89)

drop function multiply
--**********************************

--Practicle on User define Function
/* create a function Volume to find the volume of cylindrical object V = PI * R * R * H(pi = 3.14) in table
employee use age as Radius and id  as height */

Create function Volume 
( 
@R int,
@h int
) 

returns float
as begin
return 3.14 * @r * @r * @h
end

select age as Radius, id as height, dbo.volume(age, id) as Cylindrical_volume from employee

drop function volume
--********************************