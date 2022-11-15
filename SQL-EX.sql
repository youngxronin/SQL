-- Задание: 1 
-- Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
SELECT model, speed, hd
FROM pc
WHERE price < 500;

-- Задание: 2 
-- Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker
FROM product
WHERE TYPE = 'Printer';

-- Задание: 3 
-- Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
SELECT model, ram, screen
FROM laptop
WHERE price > 1000;

-- Задание: 4 
-- Найдите все записи таблицы Printer для цветных принтеров.
SELECT *
FROM printer
WHERE color ='y';

-- Задание: 5 
-- Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол
SELECT model, speed, hd
FROM pc
WHERE (cd = '12x' or cd = '24x') and price < 600;

--Задание: 6
-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
SELECT DISTINCT  maker, laptop.speed
FROM product INNER JOIN
laptop ON laptop.model = product.model
WHERE laptop.hd >=10;

-- Задание: 7 
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT DISTINCT pc.model, price
FROM pc INNER JOIN 
product ON pc.model = product.model
WHERE maker = 'B'
UNION
SELECT DISTINCT laptop.model, price
FROM laptop INNER JOIN
product ON laptop.model = product.model
WHERE maker = 'B'
UNION
SELECT printer.model, price
FROM printer INNER JOIN
product ON printer.model = product.model
WHERE maker = 'B';

-- Задание: 8 
-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.
SELECT DISTINCT maker FROM product WHERE type = 'pc'
EXCEPT
SELECT maker FROM product WHERE type = 'laptop';

-- Задание: 9 
-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT DISTINCT maker 
FROM product join pc ON pc.model = product.model
WHERE speed >= 450;

-- Задание: 10 
-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
SELECT model, price
FROM printer
WHERE price in (SELECT MAX(price)
                FROM printer);

-- Задание: 11 
Найдите среднюю скорость ПК.
SELECT AVG(speed)
FROM pc;

