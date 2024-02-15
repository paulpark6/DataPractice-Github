-- Find the base pay for Police Captains

-- https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=3

-- Solution:



select employeename, jobtitle from sf_public_salaries
where LOWER(jobtitle) LIKE "%captain%"