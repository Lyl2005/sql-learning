Оператор внешнего соединения LEFT OUTER JOIN  (можно использовать LEFT JOIN) соединяет две таблицы.
Порядок таблиц для оператора важен, поскольку оператор не является симметричным.
Отбор идет по первой таблице (Слева)
Оператор LEFT JOIN выведет записи из первой таблицы,а для не найденных пар из второй проставит значения Null
 То есть отбор идет по автору(слева),если книг этого автора нет,то название автора выводится в любом случае,
  а вместо названия книги,если ее нет выводится Null
 Результат запроса формируется так:

1.в результат включается внутреннее соединение (INNER JOIN) первой и второй таблицы в соответствии с условием;
2.затем в результат добавляются те записи первой таблицы, которые не вошли во внутреннее соединение на шаге 1, 
для таких записей соответствующие поля второй таблицы заполняются значениями NULL.
 Пример

Вывести название всех книг каждого автора, если книг некоторых авторов в данный момент 
 нет на складе – вместо названия книги указать Null.

Запрос:

SELECT name_author, title 
FROM author LEFT JOIN book
     ON author.author_id = book.author_id
ORDER BY name_author;     
То есть отбор идет по автору(слева),если книг этого автора нет,то название автора выводится в любом случае,
  а вместо названия книги,если ее нет выводится Null
https://www.youtube.com/watch?v=PTAkqURmI0s на котиках

Оператор RIGHT JOIN поступит наоборот, выведет данные из второй (правой) таблицы,
 а на место не хватающих записей из первой поставит Null
