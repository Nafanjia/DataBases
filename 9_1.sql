/*
Создайте таблицу logs типа Archive. 
Пусть при каждом создании записи в таблицах users, catalogs и products 
в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name
*/
create table logs(
	id serial primary key,
	insert_at timestamp not null default current_timestamp,
	table_name varchar(100) not null,
	content_name varchar(255) not null,
	row_id int(11) not null
) comment = 'Лог новых записей в таблицах users, catalogs и products' engine=Archive;

drop trigger if exists users_insert_log;
drop trigger if exists catalogs_insert_log;
drop trigger if exists products_insert_log;
 
DELIMITER //
 
CREATE trigger users_insert_log after insert on users 
for each row
BEGIN
	insert into logs set table_name = 'users', content_name = new.name, row_id = new.id;
END//

CREATE trigger catalogs_insert_log after insert on catalogs 
for each row
BEGIN
	insert into logs set table_name = 'catalogs', content_name = new.name, row_id = new.id;
END//

CREATE trigger products_insert_log after insert on products 
for each row
BEGIN
	insert into logs set table_name = 'products', content_name = new.name, row_id = new.id;
END//

 
DELIMITER ;