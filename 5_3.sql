/*
Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов
*/
select
	f.id,
	c_f.name,
	c_t.name
from flights f
left join cities c_f on f.from = c_f.label
left join cities c_t on f.to = c_t.label