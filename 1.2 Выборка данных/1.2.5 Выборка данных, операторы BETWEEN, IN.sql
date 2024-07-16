 Логическое выражение после ключевого слова WHERE может включать операторы  BETWEEN и IN. Приоритет  у этих операторов такой же как у операторов сравнения, то есть они выполняются раньше, чем NOT, AND, OR.

Оператор BETWEEN позволяет отобрать данные, относящиеся к некоторому интервалу, включая его границы.

Пример

Выбрать названия и количества тех книг, количество которых от 5 до 14 включительно.

Запрос:

SELECT title, amount 
FROM book
WHERE amount BETWEEN 5 AND 14;
