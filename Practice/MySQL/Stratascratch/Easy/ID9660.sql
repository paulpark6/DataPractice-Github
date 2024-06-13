-- https://platform.stratascratch.com/coding/9660-count-the-number-of-students-lectured-by-each-teacher?code_type=3

select teacher , count(student_id) as count from sat_scores
group by teacher