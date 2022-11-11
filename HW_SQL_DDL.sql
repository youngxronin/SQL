-- 1. Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values ('Anna'),
 ('Vladimir'),
 ('Anton'),
 ('Egor'),
 ('Daniil'),
 ('Ekaterina'),
 ('Darya'),
 ('Ivan'),
 ('Vasya'),
 ('Anastasia'),
 ('Lyubov'),
 ('Miroslava'),
 ('Anton'),
 ('Dmitry'),
 ('Alexander'),
 ('Nikita'),
 ('Mihail'),
 ('Svetlana'),
 ('Alexandra'),
 ('Tatiana'),
 ('Sergei'),
 ('Olga'),
 ('Oleg'),
 ('Yevgenia'),
 ('Maria'),
 ('Nadezhda'),
 ('Igor'),
 ('Aleksei'),
 ('Alina'),
 ('Alena'),
 ('Viktoriia'),
 ('Evgenii'),
 ('Jane'),
 ('Anna_2'),
 ('Vladimir_2'),
 ('Anton_2'),
 ('Egor_2'),
 ('Daniil_2'),
 ('Ekaterina_2'),
 ('Darya_2'),
 ('Ivan_2'),
 ('Vasya_2'),
 ('Anastasia_2'),
 ('Lyubov_2'),
 ('Miroslava_2'),
 ('Anton_2'),
 ('Dmitry_2'),
 ('Alexander_2'),
 ('Nikita_2'),
 ('Mihail_2'),
 ('Svetlana_2'),
 ('Alexandra_2'),
 ('Tatiana_2'),
 ('Sergei_2'),
 ('Olga_2'),
 ('Oleg_2'),
 ('Yevgenia_2'),
 ('Maria_2'),
 ('Nadezhda_2'),
 ('Igor_2'),
 ('Aleksei_2'),
 ('Alina_2'),
 ('Alena_2'),
 ('Viktoriia_2'),
 ('Evgenii_2'),
 ('Jane_3'),
 ('Yevgenia_3'),
 ('Maria_3'),
 ('Nadezhda_3'),
 ('Igor_3');
 

select * from employees;

-- 3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

-- 4. Наполнить таблицу salary 16 строками

insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

-- 5. Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

-- 6. Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 17),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 21),
	   (22, 22),
	   (23, 23),
	   (24, 24),
	   (25, 25),
	   (26, 26),
	   (27, 27),
	   (28, 28),
	   (29, 29),
	   (71, 30),
	   (72, 31),
	   (73, 32),
	   (74, 33),
	   (75, 34),
	   (76, 35),
	   (77, 36),
	   (78, 37),
	   (79, 38),
	   (80, 39),
	   (81, 40);
	  
	  SELECT * FROM employee_salary;



-- 7.Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- 8. Поменять тип столба role_name с int на varchar(30)
-- 9. Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java develope'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;


-- 10. Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
	references employees(id),
	role_id int not null,
	foreign key(role_id)
	references roles(id)
);

select * from roles_employee;






























