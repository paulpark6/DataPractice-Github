-- Salaries Differences

-- https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3

-- Solution1 (using JOINS)):

WITH max_deps as (
select  d.department, max(e.salary) as salary from db_employee e
inner join db_dept d
on d.id = e.department_id
where d.department = 'engineering' or d.department = 'marketing'
group by d.department
), 
max_mark as (
select salary from max_deps where department = 'marketing'
), 
max_eng as (
select salary from max_deps where department = 'engineering'
)
select abs((select salary from max_mark) - (select salary from max_eng)) as salary_difference


-- Solution2 (using specified table)
WITH max_mar AS (
    SELECT MAX(salary)
    FROM db_employee
    WHERE department_id = (
    SELECT id FROM db_dept WHERE department = 'marketing' LIMIT 1
    )
), max_eng AS (
    SELECT MAX(salary)
    FROM db_employee
    WHERE department_id = (
    SELECT id FROM db_dept WHERE department = 'engineering' LIMIT 1
    )
)

SELECT ABS(
    (SELECT * FROM max_mar) - (SELECT * FROM max_eng)
) salary_difference

-- SOLUTION 3:
WITH total_comb AS ( 
    SELECT e.salary,d.department 
    FROM db_employee e
    INNER JOIN db_dept d 
    ON e.department_id = d.id
),
highest_marketing AS (
    SELECT MAX(salary) AS max_marketing_sal 
    FROM total_comb
    WHERE department = 'marketing'
),
highest_engineering AS (
    SELECT MAX(salary) AS max_engineering_sal 
    FROM total_comb
    WHERE department = 'engineering'
)
SELECT ABS(
    (SELECT max_marketing_sal FROM highest_marketing) - 
    (SELECT max_engineering_sal FROM highest_engineering)
) AS salary_difference
