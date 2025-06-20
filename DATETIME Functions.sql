use KP;

SELECT * FROM products;

SELECT DATEDIFF(sysdate(), order_date), order_date FROM products;
SELECT DATE_FORMAT(sysdate(), '%Y');
SELECT DATE_FORMAT(sysdate(), '%M');
SELECT DATE_FORMAT(order_date, '%D') FROM products;

SELECT QUARTER(order_date) FROM products;
SELECT DAY(order_date) FROM products;

SElECT ADDDATE(sysdate(), INTERVAL 3 DAY);

SELECT SUBDATE(sysdate(), INTERVAL 5 DAY);
-- OR
SElECT ADDDATE(sysdate(), INTERVAL -5 DAY);