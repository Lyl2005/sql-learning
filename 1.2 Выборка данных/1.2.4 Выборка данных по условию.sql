SELECT title, price 
FROM book
WHERE price < 600;

SELECT title, author, price * amount AS total
FROM book
WHERE price * amount > 4000;

SELECT author,title,price FROM book WHERE amount <10;

SELECT title, author, price 
FROM book
WHERE price > 600 AND author = 'Булгаков М.А.';


Разные результаты
SELECT title, author, price 
FROM book
WHERE (author = 'Булгаков М.А.' OR author = 'Есенин С.А.') AND price > 600;

и

SELECT title, author, price 
FROM book
WHERE author = 'Булгаков М.А.' OR author = 'Есенин С.А.' AND price > 600;
