-- Count number of movies that Abigali Breslin nominated  for oscar
-- https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=3'

-- Solution
SELECT  count(nominee) as n_movies_by_abi FROM  oscar_nominees
WHERE nominee = "Abigali Breslin"