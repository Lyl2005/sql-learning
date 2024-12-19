
Вложенные запросы могут использоваться в операторах соединения JOIN.
При этом им необходимо присваивать имя, которое записывается сразу после закрывающей скобки вложенного запроса.

SELECT
 ...
FROM
    таблица ... JOIN  
       (
        SELECT ...
       ) имя_вложенного_запроса
    ON условие

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
Задание
Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книги), 
написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде.
Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально.          
          
          SELECT title,
	   name_author,
	   name_genre,
	   price,
	   amount
  FROM book
  JOIN author USING (author_id)
  JOIN genre USING (genre_id)
 WHERE genre_id IN (
	   SELECT genre_id
		 FROM book
		GROUP BY genre_id
	   HAVING SUM(amount) IN (
              SELECT MAX(S)
            	FROM (SELECT genre_id, SUM(amount) AS S
                    	FROM book
                   	   GROUP BY genre_id
                  	 ) g_s
              )

	
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
 💕👏😍
	наконец-то дошло в каких случаях используется груп бай: если в селекте выбираются столбцы с агрегированными строчками
	типа sum count avg ,
	то в запросе обязательно надо добавить груп бай и прописать там остальные столбцы, 
	и наборот: если хочешь добавить групбай то нужно писать туда все неагрегированные столбцы. 
	без групп бай можно обойтись только если в селекте нет агрегированных столбцов. 
	а все думаю: программа чо тебе надо? чо ты докопался до этого груп бай? не хочу я групбай делать! 
	а он говорит: нимагу нада хочу групбай. а в других случаях ошибка не вылезала. теперь понял изза чего она. 
	агрегированные столбцы типа sum count avg все портят
	
	
