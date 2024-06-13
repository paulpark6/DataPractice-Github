--https://platform.stratascratch.com/coding/9658-underweightoverweight-athletes?code_type=3


select college, count(firstname + lastname) as fullname_count from nfl_combine
where weight > 250 or weight < 180
and college is not NULL
group by college

