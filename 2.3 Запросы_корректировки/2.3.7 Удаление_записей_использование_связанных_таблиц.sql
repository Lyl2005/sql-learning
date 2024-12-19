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
DELETE FROM author
WHERE author_id IN 
(SELECT author_id FROM book
WHERE AMOUNT<3);
SELECT * FROM book
или
DELETE FROM author
USING 
    author 
    INNER JOIN book ON author.author_id = book.author_id
WHERE book.amount < 3;
SELECT * FROM author;
SELECT * FROM book;

Задание
Удалить всех авторов, которые пишут в жанре "Поэзия". 
Из таблицы book удалить все книги этих авторов. 
В запросе для отбора авторов использовать полное название жанра, а не его id.
DELETE FROM author
USING author
INNER JOIN book ON author.author_id=book.author_id
INNER JOIN genre ON genre.genre_id=book.genre_id
WHERE name_genre = "Поэзия";
SELECT * FROM book;
SELECT * FROM author
    
