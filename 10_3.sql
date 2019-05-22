/*
 * Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
 */
db.shop.insert({name: 'Intel Core i3-8100', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 7890.00, catalogs:{id:1,name:'Процессоры'},created_at: ISODate("2017-08-25T16:00:31.618Z"),updated_at: ISODate("2017-08-25T16:00:31.618Z")})