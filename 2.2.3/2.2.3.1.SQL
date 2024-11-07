DELETE FROM author
WHERE author_id IN 
(SELECT author_id FROM book
WHERE AMOUNT<3);
SELECT * FROM book
