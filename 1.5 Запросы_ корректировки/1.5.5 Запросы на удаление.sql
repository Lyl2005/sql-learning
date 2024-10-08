DELETE FROM таблица;
Этот запрос удаляет все записи из указанной после FROM таблицы.

Запрос на удаления позволяет удалить не все записи таблицы, а только те,
которые удовлетворяют условию, указанному после ключевого слова WHERE:

DELETE FROM таблица
WHERE условие;
Пример Удалить из таблицы supply все книги, названия которых есть в таблице book.
DELETE FROM supply 
WHERE title IN (
        SELECT title 
        FROM book
      );


SELECT * FROM supply;
--результат
+-----------+--------------------------+------------------+--------+--------+
| supply_id | title                    | author           | price  | amount |
+-----------+--------------------------+------------------+--------+--------+
| 1         | Лирика                   | Пастернак Б.Л.   | 518.99 | 2      |
| 2         | Черный человек           | Есенин С.А.      | 570.20 | 6      |
+-----------+--------------------------+------------------+--------+--------+
Из таблицы supply удалены две записи о книгах «Белая гвардия» и «Идиот».

Пример Удалить из таблицы supply книги тех авторов, общее количество экземпляров книг которых в таблице book превышает 10.
DELETE FROM supply
WHERE author IN(
    SELECT author
    FROM book
    GROUP BY author
    HAVING SUM(amount)>10
    );
