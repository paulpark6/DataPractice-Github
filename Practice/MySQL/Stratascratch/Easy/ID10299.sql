-- Finding Updated Records

-- https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3

-- Solution:

select id, first_name, last_name, department_id, max(salary) as current_salary from ms_employee_salary
group by first_name, last_name
order by id asc

