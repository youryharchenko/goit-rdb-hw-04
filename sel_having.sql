SELECT c2.name, AVG(od.quantity)  as a
FROM order_details od 
	INNER JOIN (products p
		INNER JOIN categories c2 ON p.category_id = c2.id) ON od.product_id = p.id
GROUP BY c2.name
HAVING a > 21;