/*
 * ����� ������� ����� ������� � ����������� ����� created_at. 
 * �������� ������, ������� ������� ���������� ������ �� �������, �������� ������ 5 ����� ������ �������
 */
delete from any_table
where 
	id not in (
	select id
	from any_table
	order by created_at
	limit 5)