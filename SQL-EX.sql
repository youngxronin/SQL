-- �������: 1 
-- ������� ����� ������, �������� � ������ �������� ����� ��� ���� �� ���������� ����� 500 ���. �������: model, speed � hd
SELECT model, speed, hd
FROM pc
WHERE price < 500;

-- �������: 2 
-- ������� �������������� ���������. �������: maker
SELECT DISTINCT maker
FROM product
WHERE TYPE = 'Printer';

-- �������: 3 
-- ������� ����� ������, ����� ������ � ������� ������� ��-���������, ���� ������� ��������� 1000 ���.
SELECT model, ram, screen
FROM laptop
WHERE price > 1000;

-- �������: 4 
-- ������� ��� ������ ������� Printer ��� ������� ���������.
SELECT *
FROM printer
WHERE color ='y';

-- �������: 5 
-- ������� ����� ������, �������� � ������ �������� ����� ��, ������� 12x ��� 24x CD � ���� ����� 600 ���
SELECT model, speed, hd
FROM pc
WHERE (cd = '12x' or cd = '24x') and price < 600;

--�������: 6
-- ��� ������� �������������, ������������ ��-�������� c ������� �������� ����� �� ����� 10 �����, ����� �������� ����� ��-���������. �����: �������������, ��������.
SELECT DISTINCT  maker, laptop.speed
FROM product INNER JOIN
laptop ON laptop.model = product.model
WHERE laptop.hd >=10;

-- �������: 7 
-- ������� ������ ������� � ���� ���� ��������� � ������� ��������� (������ ����) ������������� B (��������� �����).
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

-- �������: 8 
-- ������� �������������, ������������ ��, �� �� ��-��������.
SELECT DISTINCT maker FROM product WHERE type = 'pc'
EXCEPT
SELECT maker FROM product WHERE type = 'laptop';

-- �������: 9 
-- ������� �������������� �� � ����������� �� ����� 450 ���. �������: Maker
SELECT DISTINCT maker 
FROM product join pc ON pc.model = product.model
WHERE speed >= 450;

-- �������: 10 
-- ������� ������ ���������, ������� ����� ������� ����. �������: model, price
SELECT model, price
FROM printer
WHERE price in (SELECT MAX(price)
                FROM printer);

