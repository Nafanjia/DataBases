/*
����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). 
���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
�������� ������ ������ flights � �������� ���������� �������
*/
select
	f.id,
	c_f.name,
	c_t.name
from flights f
left join cities c_f on f.from = c_f.label
left join cities c_t on f.to = c_t.label