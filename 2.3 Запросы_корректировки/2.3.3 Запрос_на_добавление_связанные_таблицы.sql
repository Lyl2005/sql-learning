Следующий шаг - добавить новые записи о книгах, которые есть в таблице supply и нет в таблице book.
  (В таблицах supply и book сохранены изменения предыдущих шагов).
  Поскольку в таблице supply не указан жанр книги, оставить его пока пустым (занести значение Null).

Пример

Прежде всего необходимо сформировать запрос с полями, которые соответствуют полям таблицы book,
  так как использовать только таблицу supply нельзя - в ней вместо кода автора стоит его фамилия. 
Запрос:
SELECT title, author_id, price, amount
FROM 
    author 
    INNER JOIN supply ON author.name_author = supply.author;
Далее необходимо отобрать только новые книги из таблицы supply.
  Как видно из таблицы с результатами запроса, в тех записях, которые нужно добавить,
  значения столбца amount не равны 0 (количество уже учтенных книг обнулены предыдущим запросом). Добавим это условие в запрос.
Запрос:
SELECT title, author_id, price, amount
FROM 
    author 
    INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;
Задание
Добавить новые книги из таблицы supply в таблицу book на основе сформированного выше запроса. 
Затем вывести для просмотра таблицу book.
  INSERT INTO book (title,author_id,price,amount)
SELECT title, author_id, price, amount
FROM 
    author 
    INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;
SELECT * FROM book;
