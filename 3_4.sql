/*
Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий ('may', 'august')
*/
/*
Так как возможности хранить дату с указанием месяца текстом я в интернете не нашел, то предполагаю, что у нас текст
Первый вариант, что указан только месяц рождения. 2 и 3 если дата указана полностью
*/
SELECT * 
FROM shop.users
where bithday_at in ('may','august')

SELECT * 
FROM shop.users
where bithday_at like '%may%' or bithday_at like '%august%'

select * 
FROM shop.users
where bithday_at rlike 'may|august'

