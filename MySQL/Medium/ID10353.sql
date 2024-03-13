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