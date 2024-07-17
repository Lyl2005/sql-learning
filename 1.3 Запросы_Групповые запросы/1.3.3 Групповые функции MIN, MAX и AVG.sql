К групповым функциям SQL относятся: MIN(), MAX() и AVG(), 
которые вычисляют минимальное, максимальное и среднее значение элементов столбца, относящихся к группе.
 Пример

Вывести минимальную цену книги каждого автора

Запрос:

SELECT author, MIN(price) AS min_price
FROM book
GROUP BY author;

SELECT author, MIN(price) AS Минимальная_цена, MAX(price) AS Максимальная_цена, AVG(price) AS Средняя_цена
FROM book
GROUP BY author

SELECT author, SUM(price * amount) AS Стоимость
FROM book
GROUP BY author;


SELECT author, ROUND(AVG(price),2) AS Средняя_цена
FROM book
GROUP BY author;


SELECT author, SUM(price * amount) AS Стоимость, ROUND((SUM(price * amount)) * 0.18 / (1 + 0.18), 2) AS НДС,
ROUND((SUM(price * amount)) / (1 + 0.18), 2) AS Стоимость_без_НДС FROM book
GROUP BY author

