SELECT author_id FROM book  group by author_id HAVING COUNT(DISTINCT genre_id)=1
