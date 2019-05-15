/*
 * Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs
 */
create
or replace
view `products_catalogs` as select
    distinct 
    `products`.`name` as `products_name`,
    `catalogs`.`name` as `catalogs_name`
from
    (`products`
left join `catalogs` on
    ((`products`.`catalog_id` = `catalogs`.`id`)))