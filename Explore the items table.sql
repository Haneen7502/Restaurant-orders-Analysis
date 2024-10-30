-- View the menu_items table and write a query to find the number of items on the menu
select *
from menu_items;
select count( menu_item_id ) as total_items
from menu_items;
-- What are the least and most expensive items on the menu?
select item_name, 
price
from menu_items
where price =(select min(price) from menu_items) ;
select item_name, 
price
from menu_items
where price =(select max(price) from menu_items) ;
-- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
select count(menu_item_id) as italian_dishes
from menu_items
where category = 'Italian';
select item_name as italian_dishes,
price
from menu_items
where category = 'Italian' and  price =(select min(price)
 from menu_items 
 group by category 
 having category = 'Italian' ) ;
select item_name as italian_dishes,
price
from menu_items
where category = 'Italian' and  price =(select max(price)
 from menu_items 
 group by category 
 having category = 'Italian' ) ;
-- How many dishes are in each category? What is the average dish price within each category?
select category,
count(menu_item_id) as total_items,
avg(price) as average_price
from menu_items
group by category;