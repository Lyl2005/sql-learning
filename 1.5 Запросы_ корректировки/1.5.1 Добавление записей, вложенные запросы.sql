В запросах на добавление можно использовать вложенные запросы.

Пример

Занести из таблицы supply в таблицу book только те книги, названия которых отсутствуют в таблице book.

Запрос:

INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 
FROM supply
WHERE title NOT IN (SELECT title FROM book);
SELECT * FROM book;

