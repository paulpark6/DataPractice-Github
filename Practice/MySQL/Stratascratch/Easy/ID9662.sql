-- https://platform.stratascratch.com/coding/9662-list-all-companies-working-in-the-financial-sector-with-headquarters-in-europe-or-asia?code_type=3

select company from forbes_global_2010_2014
where sector ='Financials' 
and (continent = 'Europe' or 'Asia')