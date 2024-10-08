Новая таблица может быть создана на основе данных из другой таблицы. Для этого используется запрос SELECT, 
  результирующая таблица которого и будет новой таблицей базы данных. Запрос имеет вид:

CREATE TABLE имя_таблицы AS
SELECT ...
Пример Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, 
  количество экземпляров которых в таблице book меньше 4. Для всех книг указать одинаковое количество экземпляров 5.
CREATE TABLE ordering AS
SELECT author, title, 5 AS amount
FROM book
WHERE amount < 4;

SELECT * FROM ordering;

--результат
+------------------+--------------------+--------+
| author           | title              | amount |
+------------------+--------------------+--------+
| Булгаков М.А.    | Мастер и Маргарита | 5      |
| Достоевский Ф.М. | Братья Карамазовы  | 5      |
+------------------+--------------------+--------+
При создании таблицы можно использовать вложенные запросы как после SELECT, так и после WHERE.

Пример Создать таблицу заказ (ordering), куда включить авторов и названия тех книг,
  количество экземпляров которых в таблице book меньше 4.
  Для всех книг указать одинаковое значение - среднее количество экземпляров книг в таблице book.
CREATE TABLE ordering AS
SELECT author, title, 
   (
    SELECT ROUND(AVG(amount)) 
    FROM book
   ) AS amount
FROM book
WHERE amount < 4;
