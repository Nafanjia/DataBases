/*
��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
*/
SELECT 
	distinct 
	users.id, 
	users.name, 
	users.birthday_at
FROM shop.users users
inner join shop.orders orders on users.id = orders.user_id
