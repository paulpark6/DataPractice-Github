-- Workers with the highest salaries

-- https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

-- Solution:
select worker_title from (select t.worker_title, max(w.salary) over() as max_sal from title t
inner join worker w 
on t.worker_ref_id = w.worker_id) as final
where w.salary = max_sal



-- Solution2:
select t.worker_title from title t
inner join worker w
on w.worker_id = t.worker_ref_id
where salary = (select max(salary) from worker)


-- solution3:
with all_table as (
select * from worker w
join title t
on w.worker_id=t.worker_ref_id
),
same_salary as (
select *, count(salary) as count_salary from all_table
group by salary
having  count_salary >= 2
), 
max_salary as (
select max(salary) as max_sal from worker
),
result as (
    select at.worker_title FROM all_table at JOIN max_salary ms ON at.salary = ms.max_sal
    UNION 
    SELECT worker_title FROM same_salary
)
select * from result
