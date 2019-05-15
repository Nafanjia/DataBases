/*
¬ыведите список товаров products и разделов catalogs, который соответствует товару
*/
SELECT 
	products.id, 
	products.name, 
	products.description, 
	products.price, 
	products.catalog_id, 
	products.created_at, 
	products.updated_at, 
	ifnull(catalogs.name,'Ќет данных') catalogs_name
FROM shop.products products
left join shop.catalogs catalogs on products.catalog_id = catalogs.id 