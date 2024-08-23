-- Analyze the cumulative revenue generated over time.

select date,
sum(revenue) over(order by date) as cum_revenue
from (select orders.date,
sum(order_details.quantity * pizzas.price) as revenue
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id
join orders
on orders.order_id = order_details.order_id
group by orders.date) as sales;