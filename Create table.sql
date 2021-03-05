-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- ТАБЛИЦА 'ШКОЛЬНИК'
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- создание таблицы (побочной для удаления) и заполнение данными
CREATE TABLE pupils(
  name VARCHAR(50) NOT NULL
);
INSERT INTO pupils (name)
VALUES 	('Владов');

-- удаление таблицы;
DROP TABLE pupils;

-- создание таблицы (create)
CREATE TABLE students(
	id SERIAL PRIMARY KEY, 
	surname VARCHAR(50) NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	fathername VARCHAR(50), 
	gender VARCHAR(1), 
	nationality VARCHAR(50), 
	height INT, 
	weight INT, 
	birthdate DATE, 
	phonenumber VARCHAR(16), 
	homeaddress VARCHAR(50), 
	grade INT
);

-- переименование таблицы (alter)
ALTER TABLE students RENAME TO pupils;

-- Создать таблицу school (id, sch_name, sch_description).
CREATE TABLE school(
  id INT, 
  sch_name VARCHAR(50), 
  sch_description VARCHAR(50),
  UNIQUE(id)
);
 
 -- Используя инструкцию alter, добавить дополнительные столбцы, один из которых school_id (тип integer и содержит идентификаторы школ).
ALTER TABLE pupils ADD school_id INT;