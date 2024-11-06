SELECT name_author
FROM author 
INNER JOIN book ON author.author_id = book.author_id
  INNER JOIN  genre ON genre.genre_id = book.genre_id - получилась лишняя строка запроса,  исправлено в следующем запросе 

GROUP BY name_author
HAVING COUNT(DISTINCT name_genre)=1;

SELECT name_author
FROM author 
INNER JOIN book ON author.author_id = book.author_id
 GROUP BY name_author
HAVING COUNT(DISTINCT genre_id)=1 - и исправлен уникальный запрос по айди жанра,а не по имени,которого в таблицах book и автор нет,
и нет джойна с таблицей жанр   

SELECT name_author,name_genre - почему выводит не то,что нужно,разобраться!!!
FROM author 
INNER JOIN book ON author.author_id = book.author_id
  INNER JOIN  genre ON genre.genre_id = book.genre_id
GROUP BY name_author,name_genre
HAVING COUNT(DISTINCT name_genre)=1

SELECT name_author
FROM author  
WHERE author_id in 
(SELECT author_id 
 FROM book
GROUP BY author_id
Having COUNT(DISTINCT genre_id) =1 )



SELECT author_id FROM book  group by author_id HAVING COUNT(DISTINCT genre_id)=1

SELECT author_id, MAX(amount) AS max_sum_amount
  
     FROM book 
     GROUP BY author_id - вообще неправильный дурной запрос,можно посмотреть результат
