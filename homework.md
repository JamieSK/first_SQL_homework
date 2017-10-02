# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.
SELECT * FROM movies;
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
11 | Guardians of the Galaxy             | 2014 | 22:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
16 | Guardians of the Galaxy 2           | 2017 | 23:50
(16 rows)

2. Return ONLY the name column from the 'people' table
SELECT name FROM people;
name
----------------------
Clare   Blackburne
John    Crookshank
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
John Daley
(19 rows)

3. Oops! Someone at CodeClan spelled John's name wrong! Change it to reflect the proper spelling (change 'John Crookshank' to 'John Cruickshank').
UPDATE people SET name =  'John Cruickshank' WHERE name = 'John Crookshank';
UPDATE 0

4. Return ONLY your name from the 'people' table.
SELECT * FROM people WHERE name = 'Jamie	Klein';
id |    name
----+-------------
 4 | Jamie Klein
(1 row)

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
DELETE 1

6. Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name) VALUES ('Alan Russel');
INSERT INTO 0 1

7. John Daley (G1), has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people WHERE name = 'John Daley';
DELETE 1

8. Somehow the list of people includes two people named 'Alex'. Change these entries to the proper names ('Alex the First', 'Alex the Second')
UPDATE people SET name = 'Alex the First' WHERE id = 6;
UPDATE 1
UPDATE people SET name = 'Alex the Second' WHERE id = 16;
UPDATE 1

9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');
INSERT 0 1

10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
UPDATE 1

## Extension

1. Research how to delete multiple entries from your table in a single command.
DELETE FROM people WHERE id IN (6, 12, 16);
DELETE 3
