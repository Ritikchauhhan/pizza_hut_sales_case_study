-- Identify the highest-priced pizza.

SELECT 
    pt.name, pp.price
FROM
    pizzas AS pp
        JOIN
    pizza_types AS pt ON pp.pizza_type_id = pt.pizza_type_id
ORDER BY price DESC
LIMIT 1;