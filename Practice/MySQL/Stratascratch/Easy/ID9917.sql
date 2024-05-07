-- Average Salaries

-- https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3

-- Solution 1 (Using Window Functions)
SELECT department, first_name, salary, AVG(SALARY) OVER (PARTITION BY department) as avg_department FROM employee

-- Solution 2 (using join and group by)
SELECT e.department, e.first_name, e.salary, dep.avg_dep_salary FROM employee e
LEFT JOIN (SELECT department, AVG (salary) as avg_dep_salary FROM employee GROUP BY department) dep
ON e.department = dep.department