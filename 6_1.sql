/*
� ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
����������� ������ id = 1 �� ������� shop.users � ������� sample.users. 
����������� ����������
*/
start transaction;

SELECT id, name, birthday_at, created_at, updated_at
FROM shop.users
where id = 1;

INSERT INTO sample.users
SELECT * FROM shop.users where id = 1;

commit;