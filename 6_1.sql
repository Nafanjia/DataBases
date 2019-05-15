/*
В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
Используйте транзакции
*/
start transaction;

SELECT id, name, birthday_at, created_at, updated_at
FROM shop.users
where id = 1;

INSERT INTO sample.users
SELECT * FROM shop.users where id = 1;

commit;