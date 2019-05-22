/*
� ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. 
��������� ����������� ����� ����� ��� ���� �� ���. 
��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. 
��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. 
��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.
*/
drop trigger if exists products_insert;
drop trigger if exists products_update;
 
DELIMITER //
 
CREATE trigger products_insert before insert on products 
for each row
BEGIN
	if new.name is null or new.description is null then
		signal sqlstate '45000' set message_text = 'Insert canceled';
	end if;
END//

CREATE trigger products_update before update on products 
for each row
BEGIN
	if new.name is null and new.description is null then
		signal sqlstate '45000' set message_text = 'Update canceled';
	end if;
END//
 
DELIMITER ;