Запросом на добавление можно добавить записи, отобранные с помощью запроса на выборку, 
который включает несколько таблиц:
Задание
Включить новых авторов в таблицу author с помощью запроса на добавление,
  а затем вывести все данные из таблицы author. 
Новыми считаются авторы, которые есть в таблице supply, но нет в таблице author.
  INSERT INTO author
SELECT  name_author,supply.author
FROM 
    author 
    RIGHT JOIN supply on author.name_author = supply.author
WHERE name_author IS Null;
SELECT * FROM author;
