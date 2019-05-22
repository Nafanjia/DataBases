/*
 * Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 * с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", 
 * с 00:00 до 6:00 — "Доброй ночи"
 */
drop function if exists hello;

delimiter //

create function hello() returns varchar(20) deterministic
begin
	return (
	case 
		when curtime() between convert('06:00:00',time) and convert('11:59:59',time) then 'Доброе утро'
		when curtime() between convert('12:00:00',time) and convert('17:59:59',time) then 'Добрый день'
		when curtime() between convert('18:00:00',time) and convert('23:59:59',time) then 'Добрый вечер'
		when curtime() between convert('00:00:00',time) and convert('05:59:59',time) then 'Доброй ночи'
	end);
end//

delimiter ;

select hello();

