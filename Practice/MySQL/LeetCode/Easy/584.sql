-- https://leetcode.com/problems/find-customer-referee/submissions/1222563186/?lang=pythondata
-- 584. Find Customer Referee

SELECT name from Customer
WHERE referee_id != 2 or referee_id IS NULL