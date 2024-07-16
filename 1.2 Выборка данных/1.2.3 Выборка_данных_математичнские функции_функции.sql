SELECT title, 
author, amount,ROUND(price-(price*0.3),2) AS new_price
FROM book;


В SQL реализована возможность заносить в поле значение в зависимости от условия. Для этого используется функция IF():
IF(логическое_выражение, выражение_1, выражение_2)
Функция вычисляет логическое_выражение, если оно истина – в поле заносится значение выражения_1, 
в противном случае –  значение выражения_2. Все три параметра IF() являются обязательными.
Допускается использование вложенных функций, вместо выражения_1 или выражения_2 может стоять новая функция IF

SELECT title, amount, price, 
IF(amount<4, price*0.5, price*0.7) AS sale
FROM book;


Цена по скидке должна отображаться с двумя знаками после запятой, добавим в запрос округление:
SELECT title, amount, price, 
ROUND(IF(amount<4, price*0.5, price*0.7),2) AS sale
FROM book;


SELECT author, title,
ROUND(IF(author = 'Булгаков М.А.', price*1.1, IF(author = 'Есенин С.А.', price*1.05, price*1)), 2) AS new_price
FROM book;


SELECT title, author, price * amount AS total
FROM book
WHERE price * amount > 4000;

