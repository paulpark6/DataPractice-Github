 -- Lyft Driver Wages

 -- https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=3

 -- Solution:

select * from lyft_drivers
where yearly_salary <= 30000
or yearly_salary >= 70000