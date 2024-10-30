-- Combine the menu_items and order_details tables into a single table
select *
from menu_items left join order_details
on menu_items.menu_item_id =order_details.item_id
union
select *
from menu_items right join order_details
on menu_items.menu_item_id =order_details.item_id;
-- What were the least and most ordered items? What categories were they in?
with item_order_counts as (select menu_items.menu_item_id ,
menu_items.item_name ,
count( order_details.item_id) as number_of_ordered_items,
menu_items.category
from menu_items inner join order_details
on menu_items.menu_item_id =order_details.item_id
group by menu_items.menu_item_id, menu_items.item_name, menu_items.category)
select menu_item_id,
item_name,
number_of_ordered_items,
category
from item_order_counts
where number_of_ordered_items =(select max(number_of_ordered_items) from item_order_counts) 
or  number_of_ordered_items = (select min(number_of_ordered_items) from item_order_counts);
-- What were the top 5 orders that spent the most money?
select sum(menu_items.price) as total_fees,
order_details.order_id
from menu_items inner join order_details
on menu_items.menu_item_id=order_details.item_id
group by order_details.order_id
order by sum(menu_items.price) desc
limit 5;
-- View the details of the highest spend order. Which specific items were purchased?
with top_order as (select sum(menu_items.price) as total_fees,
order_details.order_id as orders
from menu_items inner join order_details
on menu_items.menu_item_id=order_details.item_id
group by order_details.order_id
order by sum(menu_items.price) desc
limit 1 )
select menu_items.menu_item_id,
menu_items.item_name,
menu_items.price,
order_details.order_id
from menu_items inner join order_details
on menu_items.menu_item_id=order_details.item_id
where  order_details.order_id = (select orders from top_order)
order by menu_items.price desc;
-- View the details of the top 5 highest spend orders
with top_order as (select sum(menu_items.price) as total_fees,
order_details.order_id as orders
from menu_items inner join order_details
on menu_items.menu_item_id=order_details.item_id
group by order_details.order_id
order by sum(menu_items.price) desc
limit 5)
select menu_items.menu_item_id,
menu_items.item_name,
menu_items.price,
order_details.order_id
from menu_items inner join order_details
on menu_items.menu_item_id=order_details.item_id
where  order_details.order_id in(select orders from top_order)
order by order_details.order_id,menu_items.price desc;