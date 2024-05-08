with find_max as (
    select max(salary) as max_salary from Employee
    )
select max(salary) as SecondHighestSalary 
from Employee
where salary != (select max_salary from find_max)

