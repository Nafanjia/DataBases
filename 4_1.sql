/*
Подсчитайте средний возраст пользователей в таблице users
*/
select avg(timestampdiff(year, birthday_at, now()))
from shop.users