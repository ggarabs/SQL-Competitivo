SELECT categories.name, SUM(products.amount) AS sum
FROM products INNER JOIN categories
ON products.id_categories = categories.id
GROUP BY products.id_categories, categories.name
ORDER BY categories.name ASC;
