/*
 * �������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� �����. 
 * � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", 
 * � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
 * � 18:00 �� 00:00 � "������ �����", 
 * � 00:00 �� 6:00 � "������ ����"
 */
drop function if exists hello;

delimiter //

create function hello() returns varchar(20) deterministic
begin
	return (
	case 
		when curtime() between convert('06:00:00',time) and convert('11:59:59',time) then '������ ����'
		when curtime() between convert('12:00:00',time) and convert('17:59:59',time) then '������ ����'
		when curtime() between convert('18:00:00',time) and convert('23:59:59',time) then '������ �����'
		when curtime() between convert('00:00:00',time) and convert('05:59:59',time) then '������ ����'
	end);
end//

delimiter ;

select hello();

