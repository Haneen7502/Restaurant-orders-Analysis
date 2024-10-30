# Restaurant Orders Analysis

## Description
This project focuses on analyzing restaurant orders using a MySQL database. 
The analysis aims to explore the menu items and order 
details to gain insights into customer behavior, item pricing, and sales patterns.

## Objectives

### 1. Explore the Menu Items Table
- View the `menu_items` Table: Write a query to find the total number of items on the menu.
- Identify Price Extremes:
  - What are the least and most expensive items on the menu?
- Italian Dishes:
  - How many Italian dishes are on the menu?
  - What are the least and most expensive Italian dishes?
- Categorization:
  - How many dishes are in each category?
  - What is the average dish price within each category?

### 2. Explore the Orders Table
- View the `order_details` Table: Analyze the data and determine the date range of the orders.
- Order Counts:
  - How many orders were made within this date range?
  - How many items were ordered within this date range?
- Item Analysis:
  - Which orders had the most number of items?
  - How many orders had more than 12 items?

### 3. Analyze Customer Behavior
- Combine Tables: Merge the `menu_items` and `order_details` tables into a single table for comprehensive analysis.
- Ordering Trends:
  - What were the least and most ordered items, and what categories were they in?
  - Identify the top 5 orders that spent the most money.
- High-Spending Orders:
  - View the details of the highest spending order, including which specific items were purchased.
- BONUS: View the details of the top 5 highest spending orders.
