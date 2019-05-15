/*
—оставьте список пользователей users, которые осуществили хот€ бы один заказ orders в интернет магазине.
*/
SELECT 
	distinct 
	users.id, 
	users.name, 
	users.birthday_at
FROM shop.users users
inner join shop.orders orders on users.id = orders.user_id
