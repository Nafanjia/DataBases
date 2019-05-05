/*
Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
*/
update users
set created_at = now(), updated_at = now()
where created_at is null and updated_at is null