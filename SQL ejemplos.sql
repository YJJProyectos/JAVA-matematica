create table cosas(id integer primary key,texto text,num integer);
insert into cosas values(1,"3232",4);
insert into cosas values(2,"44332",4);
insert into cosas values(3,"otro",5);
insert into cosas values(4,"algo mas",7);
select texto,num from cosas;
select SUM(num) FROM cosas;
select id FROM cosas WHERE num >=5 ORDER BY num;
select id,num FROM cosas WHERE num >=5 ORDER BY num ASC, id DESC;
CREATE TABLE store( id INTEGER primary key, name TEXT, num INTEGER);
INSERT into store values(2,"lalal",3);
INSERT into store values(3,"cosa",5);
INSERT into store values(8,"cosa",10);
INSERT into store values(4,"ekwkw",5);
INSERT into store values(9,"otro",7);
INSERT into store values(5,"coooososo",100);
INSERT into store values(6,"coooososo",300);
SELECT name,SUM(num) from store WHERE id >2 GROUP BY name;
SELECT AVG(num) from store;
/* EWEW */
SELECT AVG(num) FROM cosas;
INSERT into cosas values(9,"promedio",(SELECT AVG(num) FROM cosas));

CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO artists (name, country, genre)
    VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO artists (name, country, genre)
    VALUES ("Queen", "UK", "Rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Celine Dion", "Canada", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Garth Brooks", "US", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Rihanna", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Gloria Estefan", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs (artist, title)
    VALUES ("Taylor Swift", "Shake it off");
INSERT INTO songs (artist, title)
    VALUES ("Rihanna", "Stay");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "My heart will go on");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "A new day has come");
INSERT INTO songs (artist, title)
    VALUES ("Shania Twain", "Party for two");
INSERT INTO songs (artist, title)
    VALUES ("Gloria Estefan", "Conga");
INSERT INTO songs (artist, title)
    VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO songs (artist, title)
    VALUES ("ABBA", "Mamma mia");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bicycle Race");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bohemian Rhapsody");
INSERT INTO songs (artist, title)
    VALUES ("Guns N' Roses", "Don't cry");

SELECT title FROM songs WHERE artist = "Queen";
SELECT name FROM artists WHERE genre = "Pop";
SELECT title FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre = "Pop");
SELECT title FROM songs WHERE artist LIKE "%Guns%";

SELECT artist FROM songs;
SELECT DISTINCT artist FROM songs;
SELECT COUNT(DISTINCT artist) FROM songs;



CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);
    
SELECT title FROM songs;
SELECT title FROM songs WHERE mood == "epic" OR released > 1990;
SELECT title FROM songs WHERE mood == "epic" AND released > 1990 AND duration < 240;

/* OTRO */
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);
    
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);

INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Twilight", 118501);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "New Moon", 132807);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Eclipse", 147930);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);
    
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);
 
SELECT author,SUM(words) as total_words FROM books GROUP BY author HAVING total_words >= 1000000;
SELECT author,AVG(words) as avg_words FROM books GROUP BY author HAVING avg_words >= 150000;

SELECT author,
    CASE 
    WHEN author = "J.R.R. Tolkien" then "Es Tolkien"
    ELSE "No es Tolkien"
    END as "Quien es"
    FROM books;
SELECT COUNT(author) as "Cantidad de pibes",author FROM (SELECT author,
    CASE 
    WHEN author = "J.R.R. Tolkien" then "Es Tolkien"
    ELSE "No es Tolkien"
    END as "Quien es"
    FROM books) GROUP BY author;   
SELECT COUNT(author) as "Cantidad de pibes",author FROM (SELECT author,
    CASE 
    WHEN author = "J.R.R. Tolkien" then "Es Tolkien"
    ELSE "No es Tolkien"
    END as "Quien es"
    FROM books) GROUP BY author HAVING "Cantidad de pibes" = 4




CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;
UPDATE documents 
    SET author = "Jackie Draper" 
    WHERE author = "Jackie Paper";
SELECT * FROM documents;


DELETE FROM documents WHERE title = "Things I'm Afraid Of";
SELECT * FROM documents;
/* */
CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

INSERT INTO persons (name,age) VALUES ("Jia",24);
INSERT INTO hobbies (person_id, name) VALUES (6,"Viching");

SELECT persons.name,hobbies.name FROM persons 
    JOIN hobbies
    WHERE persons.id = hobbies.person_id;
SELECT persons.name,hobbies.name FROM persons 
    JOIN hobbies
    ON persons.id = hobbies.person_id;

SELECT persons.name,hobbies.name FROM persons 
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name LIKE "%Jia%";
SELECT persons.name,hobbies.name FROM persons 
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = "Jia";

	
CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");
ALTER TABLE clothes ADD price INTEGER; 
SELECT * FROM clothes;
UPDATE clothes SET price=10 WHERE id = 1;
SELECT * FROM clothes;
UPDATE clothes 
SET price=
    CASE 
        WHEN id = 1
            THEN 10
        WHEN id = 2
            THEN 20
        WHEN id = 3
            THEN 30
    END ;
SELECT * FROM clothes;



CREATE TABLE animales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    clave INTEGER
);

CREATE TABLE foranea(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
/*    algo FOREING KEY (id), */
    name TEXT,
  artist INTEGER,
  FOREIGN KEY(artist) REFERENCES animales(id)
);
CREATE TABLE cosas( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    clave INTEGER
);
CREATE TABLE osos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pies TEXT
);
ALTER TABLE osos ADD cosas INTEGER;
INSERT INTO osos VALUES(1,"lala", 3);
SELECT * FROM osos; 



CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    teacher_id INTEGER);
    
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT);

INSERT INTO teachers (name, email)
    VALUES ("Socrates", "soc@rat.es");
INSERT INTO teachers (name, email)
    VALUES ("Maria Montessori", "maria@montessori.com");
    
INSERT INTO students (name, email, teacher_id)
    VALUES ("Antisthenes", "jr@winston.com", 1);
INSERT INTO students (name, email, teacher_id)
    VALUES ("Xenophon", "xenophon@greece.com", 1);
INSERT INTO students (name, email, teacher_id)
    VALUES ("Plato", "plato@greece.com", 1);
INSERT INTO students (name, email, teacher_id)
    VALUES ("Larry", "larry@page.com", 2);
INSERT INTO students (name, email, teacher_id)
    VALUES ("Sergey", "larry@page.com", 2);
INSERT INTO students (name, email, teacher_id)
    VALUES ("Ray", "ray@bradbury.com", NULL);

SELECT * FROM students;
SELECT * FROM teachers;


/* Show students next to their teachers */
SELECT students.name, teachers.name AS teacher_name
    FROM students
    JOIN teachers
    ON students.teacher_id = teachers.id;
  
/* Show students next to their teachers,
   even if they don't have a teacher assigned
*/ 
SELECT students.name, teachers.name AS teacher_name
    FROM students
    LEFT OUTER JOIN teachers
    ON students.teacher_id = teachers.id;

SELECT email, COUNT(teacher_id) as numero FROM students
GROUP BY email ORDER BY numero DESC,email ASC;
