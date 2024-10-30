-- View the order_details table. What is the date range of the table?
select *
from order_details;
select min(order_date) as start_date,
max(order_date) as end_date
from order_details;
-- How many orders were made within this date range? How many items were ordered within this date range?
select count(distinct order_id) as total_orders,
count(order_details_id) as total_items
from order_details;
-- Which orders had the most number of items?
select order_id ,
count(item_id) as items_per_order
from order_details
group by order_id
having items_per_order= (select max(order_count) as max_order_items 
from (
select count(item_id) as order_count
from order_details
group by order_id)
as order_counts );
-- How many orders had more than 12 items?
select count(*) as orders_with_more_than_12_items
from(
select count(item_id)
from order_details
group by order_id
having count(item_id) >12) as subquery;