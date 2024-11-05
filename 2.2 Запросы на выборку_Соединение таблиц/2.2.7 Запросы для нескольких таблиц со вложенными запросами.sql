SELECT name_author
FROM author 
INNER JOIN book ON author.author_id = book.author_id
  INNER JOIN  genre ON genre.genre_id = book.genre_id      

GROUP BY name_author
HAVING COUNT(DISTINCT name_genre)=1;

SELECT author_id FROM book  group by author_id HAVING COUNT(DISTINCT genre_id)=1

SELECT author_id, MAX(amount) AS max_sum_amount
  
     FROM book 
     GROUP BY author_id - вообще неправильный дурной запрос,можно посмотреть результат
