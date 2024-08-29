-- https://platform.stratascratch.com/coding/9661-find-the-student-with-the-highest-efficiency-for-mathematics?code_type=3


select student_id, hrs_studied, sat_math, (sat_math/hrs_studied) as efficiency  from sat_scores
where hrs_studied >= 1
order by efficiency desc
limit 1
