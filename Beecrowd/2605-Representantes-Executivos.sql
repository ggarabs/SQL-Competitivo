SELECT prod.name, prov.name
FROM products INNER JOIN providers
ON (prod.id_providers = prov.id)
WHERE (prod.id_categories = 6);
