-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(time) AS hhour, COUNT(HOUR(time)) as ORDER_COUNT
FROM
    orders
GROUP BY hhour;