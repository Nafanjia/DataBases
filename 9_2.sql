/*
 * Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/
declare i int default 0;
while i < 1000000 do
	INSERT INTO shop.users (name, birthday_at, created_at, updated_at) VALUES(i, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
	set i = i + 1;
end while;
