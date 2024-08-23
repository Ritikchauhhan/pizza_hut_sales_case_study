-- Identify the most common pizza size ordered.

SELECT 
    p.size as SIZE , COUNT(p.size) AS TOTAL_ORDER
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY TOTAL_ORDER DESC;