-- �������: 1 
-- ������� ����� ������, �������� � ������ �������� ����� ��� ���� �� ���������� ����� 500 ���. �������: model, speed � hd
select model, speed, hd
from pc
where price < 500

-- �������: 2 
-- ������� �������������� ���������. �������: maker
select distinct maker
from product
where type = 'Printer'

-- �������: 3 
-- ������� ����� ������, ����� ������ � ������� ������� ��-���������, ���� ������� ��������� 1000 ���.
Select model, ram, screen
from laptop
where price > 1000

-- �������: 4 
-- ������� ��� ������ ������� Printer ��� ������� ���������.
Select *
from printer
where color ='y'

-- �������: 5 
-- ������� ����� ������, �������� � ������ �������� ����� ��, ������� 12x ��� 24x CD � ���� ����� 600 ���
Select model, speed, hd
from pc
where (cd = '12x' or cd = '24x') and price < 600