-- Задание: 1 
-- Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
select model, speed, hd
from pc
where price < 500

-- Задание: 2 
-- Найдите производителей принтеров. Вывести: maker
select distinct maker
from product
where type = 'Printer'

-- Задание: 3 
-- Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
Select model, ram, screen
from laptop
where price > 1000

-- Задание: 4 
-- Найдите все записи таблицы Printer для цветных принтеров.
Select *
from printer
where color ='y'

-- Задание: 5 
-- Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол
Select model, speed, hd
from pc
where (cd = '12x' or cd = '24x') and price < 600