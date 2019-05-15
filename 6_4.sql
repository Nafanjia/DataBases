/*
 * Пусть имеется любая таблица с календарным полем created_at. 
 * Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей
 */
delete from any_table
where 
	id not in (
	select id
	from any_table
	order by created_at
	limit 5)