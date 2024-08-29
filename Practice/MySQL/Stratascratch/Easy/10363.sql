-- https://platform.stratascratch.com/coding/10363-weekly-orders-report?code_type=1

select week, sum(quantity) from orders_analysis
where week between '2023-01-01' and '2023-03-31'
group by week