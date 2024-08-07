 Логическое выражение после ключевого слова WHERE может включать операторы  BETWEEN и IN. Приоритет  у этих операторов такой же как у операторов сравнения, то есть они выполняются раньше, чем NOT, AND, OR.

Оператор BETWEEN позволяет отобрать данные, относящиеся к некоторому интервалу, включая его границы.

Пример

Выбрать названия и количества тех книг, количество которых от 5 до 14 включительно.

Запрос:

SELECT title, amount 
FROM book
WHERE amount BETWEEN 5 AND 14;

SELECT title, amount 
FROM book
WHERE amount >= 5 AND amount <=14;

Оператор  IN  позволяет выбрать данные, соответствующие значениям из списка.

Пример

Выбрать названия и цены книг, написанных Булгаковым или Достоевским.

Запрос:

SELECT title, price 
FROM book
WHERE author IN ('Булгаков М.А.', 'Достоевский Ф.М.');

То же самое SELECT title, price 
FROM book
WHERE author = 'Булгаков М.А.' OR author = 'Достоевский Ф.М.';

Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы), 
 а количество или 2, или 3, или 5, или 7 .
 SELECT title, author 
FROM book
WHERE price BETWEEN 540.50 AND 800 AND amount IN(2,3,5,7)
 
