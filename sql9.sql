-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    AVG(Total_order) AS avg_per_day
FROM
    (SELECT 
        o.date, SUM(od.quantity) AS Total_order
    FROM
        orders AS o
    JOIN order_details AS od ON o.order_id = od.order_id
    GROUP BY o.date) AS avg_day;