-- Popularity Hack

-- https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=3

-- Solution:

select e.location, avg(p.popularity) from facebook_employees e
inner join facebook_hack_survey p
on e.id = employee_id
group by location