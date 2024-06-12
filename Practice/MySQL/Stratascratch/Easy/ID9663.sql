-- Find the most profitable company in the financial sector of the entire world along with its continent

-- https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=3

-- Solution1:

select f.company, f.country from (select company, country, max(profits) from forbes_global_2010_2014
where sector = "Financials") f

-- Solution 2:

select company, country from forbes_global_2010_2014
where profits = (select max(profits) from forbes_global_2010_2014
where sector = "Financials")

-- Solution 3:
select company, country from forbes_global_2010_2014
where sector = "Financials"
order by profits desc
limit 1

-- Solution 4:
with financials as (
select company, profits, continent from forbes_global_2010_2014
where sector= 'Financials'
),
mx as (
select max(profits) as max_profit from financials
)
select company, continent from financials
where profits = (select max_profit from mx)