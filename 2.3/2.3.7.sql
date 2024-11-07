
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
