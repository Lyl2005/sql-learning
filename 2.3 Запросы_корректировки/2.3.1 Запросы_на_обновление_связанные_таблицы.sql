Для книг, которые уже есть на складе (в таблице book), но по другой цене, чем в поставке (supply),
необходимо в таблице book увеличить количество на значение, указанное в поставке,  и пересчитать цену. 
А в таблице  supply обнулить количество этих книг. 
UPDATE book INNER JOIN author USING(author_id)
INNER JOIN supply ON book.title = supply.title
                   AND supply.author = author.name_author
SET book.amount = book.amount + supply.amount,
supply.amount = 0,
book.price = (book.price*book.amount+supply.price*supply.amount)/(book.amount+supply.amount)
WHERE book.price <> supply.price;
SELECT * FROM book;
SELECT * FROM supply
