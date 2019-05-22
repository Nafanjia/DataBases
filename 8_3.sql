/*
 * �������� �������� ������� ��� ���������� ������������� ����� ���������. 
 * ������� ��������� ���������� ������������������ � ������� ����� ����� ����� ���� ���������� �����. 
 * ����� ������� FIBONACCI(10) ������ ���������� ����� 55.
*/


drop function if exists fib;
 
DELIMITER //
 
CREATE FUNCTION fib(a int) RETURNS int
    DETERMINISTIC
BEGIN
    RETURN ((power(((1+sqrt(5))/2),a)-power(((1-sqrt(5))/2),a))/sqrt(5)); 
END//
 
DELIMITER ;
 
Select fib(10);