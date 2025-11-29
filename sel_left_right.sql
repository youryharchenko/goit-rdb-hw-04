SELECT COUNT(*)
FROM order_details od 
	LEFT JOIN (orders o  
		INNER JOIN customers c ON o.customer_id = c.id 
		INNER JOIN employees e ON o.employee_id = e.employee_id 
		INNER JOIN shippers s ON o.shipper_id = o.shipper_id ) ON od.order_id  = o.id
	RIGHT JOIN (products p
		RIGHT JOIN suppliers s2 ON p.supplier_id = s2.id 
		RIGHT JOIN categories c2 ON p.category_id = c2.id) ON od.product_id = p.id ;

-- в даному випадку кількість рядків не змінилася, тому що LEFT/RIGHT не додали заисів для яких відсутня зв'язка ON.