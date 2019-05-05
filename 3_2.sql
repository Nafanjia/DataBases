/*
Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
*/
SET SQL_SAFE_UPDATES=0;
update shop.users
set created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i'),updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i');
SET SQL_SAFE_UPDATES=1;

alter table shop.users change created_at created_at datetime, change updated_at updated_at datetime




