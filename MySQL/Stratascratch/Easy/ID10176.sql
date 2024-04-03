-- Bikes Last Used

-- https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=3

-- Solution:

SELECT bike_number, MAX(end_time) as last_used FROM dc_bikeshare_q1_2012
GROUP BY 1

select bike_number, max(end_time) as last_used from dc_bikeshare_q1_2012
group by 1
order by 2 desc