При удалении записей из таблицы можно использовать информацию из других связанных с ней таблиц.
В этом случае синтаксис запроса имеет вид:

DELETE FROM таблица_1
USING 
    таблица_1 
    INNER JOIN таблица_2 ON ...
WHERE ...
Пример
Удалить всех авторов из таблицы author, у которых есть книги, количество экземпляров которых меньше 3. 
Из таблицы book удалить все книги этих авторов.
Запрос:
DELETE FROM author
USING 
    author 
    INNER JOIN book ON author.author_id = book.author_id
WHERE book.amount < 3;
SELECT * FROM author;
SELECT * FROM book;
