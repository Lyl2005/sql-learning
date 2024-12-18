При создании таблицы для внешних ключей с помощью ON DELETE устанавливаются опции, которые определяют действия ,
выполняемые при удалении связанной строки из главной таблицы.
В частности, ON DELETE CASCADE автоматически удаляет строки из зависимой таблицы 
  при удалении  связанных строк в главной таблице.
В таблице book эта опция установлена для поля author_id.
Пример
Удалим из таблицы author всех авторов, фамилия которых начинается на «Д»,
  а из таблицы book  - все книги этих авторов.
Запрос:
DELETE FROM author
WHERE name_author LIKE "Д%";
SELECT * FROM author;
SELECT * FROM book;
Задание
Удалить всех авторов и все их книги, общее количество книг которых меньше 20.
DELETE FROM author 
WHERE author_id IN( SELECT author_id FROM book
GROUP BY author_id
HAVING SUM(amount)<20)
