-- Order Details

-- https://platform.stratascratch.com/coding/9913-order-details?code_type=3

-- Solution

select o.order_date, c.first_name, o.total_order_cost from customers c
inner join orders o
on c.id = o.cust_id
where c.first_name = "Jill" or c.first_name = "Eva"
order by o.cust_id asc