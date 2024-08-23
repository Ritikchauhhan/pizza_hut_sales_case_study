-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.name, SUM(od.quantity) AS quantity
FROM
    order_details AS od
        JOIN
    pizzas AS pp ON od.pizza_id = pp.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = pp.pizza_type_id
GROUP BY pt.name
ORDER BY quantity DESC
LIMIT 5;