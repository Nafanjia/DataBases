/*
 * Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 * Вызов функции FIBONACCI(10) должен возвращать число 55.
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