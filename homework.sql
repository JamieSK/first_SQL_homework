-- 1
SELECT * FROM movies;

-- 2
SELECT name FROM people;

-- 3a
UPDATE people SET name =  'John Cruickshank' WHERE name = 'John Crookshank';

-- 3b
SELECT * FROM people WHERE name = 'Jamie Klein';

-- 4
DELETE FROM movies WHERE title = 'Batman Begins';

-- 5
INSERT INTO people (name) VALUES ('Alan Russel');

-- 6
DELETE FROM people WHERE name = 'John Daley';

-- 7
UPDATE people SET name = 'Alex the First' WHERE id = 6;
UPDATE people SET name = 'Alex the Second' WHERE id = 16;

-- 8
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

-- 9
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';

-- Extension
DELETE FROM people WHERE id IN (6, 12, 16);
