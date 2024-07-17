SELECT SUM(amount) AS Количество
FROM book;

SELECT SUM(amount) AS Количество, 
    SUM(price * amount) AS Стоимость
FROM book;

SELECT MIN(price) AS Минимальная_цена,
MAX(price) AS Максимальная_цена,
ROUND(AVG(price),2) AS Средняя_цена
FROM book;
