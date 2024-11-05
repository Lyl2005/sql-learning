SELECT title,name_author,name_genre,price,amount
FROM book INNER JOIN author ON author.author_id = book.author_id
INNER JOIN genre ON  book.genre_id = genre.genre_id

WHERE genre.genre_id IN 
(SELECT query_in_1.genre_id
          FROM (SELECT genre_id, SUM(amount) AS sum_amount
                FROM book
                GROUP BY genre_id
               )query_in_1
            INNER JOIN 
              (SELECT genre_id, SUM(amount) AS sum_amount
                FROM book
                GROUP BY genre_id
                ORDER BY sum_amount DESC
                LIMIT 1
               ) query_in_2
          ON query_in_1.sum_amount= query_in_2.sum_amount
         )
         ORDER BY title
Сначала определяется таблица, из которой выбираются данные (FROM), 
затем из этой таблицы отбираются записи в соответствии с условием  WHERE,
выбранные данные агрегируются (GROUP BY),  из агрегированных записей выбираются те,
    которые удовлетворяют условию после HAVING.
Потом формируются данные результирующей выборки, как это указано после SELECT
    ( вычисляются выражения, присваиваются имена и пр. ).
Результирующая выборка сортируется, как указано после ORDER BY.
