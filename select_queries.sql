USE codeup_test_db;

SELECT 'All albums by Pink Floyd' AS 'Results';
SELECT album_name FROM albums Where artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Results';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Results';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Results';
SELECT album_name, release_date FROM albums WHERE release_date > '1989' AND release_date < '2000';

SELECT 'Which albums had less than 20 million certified sales' AS 'Results';
SELECT album_name, sales FROM albums WHERE sales < '20.0';

SELECT 'All albums with a genre of "Rock"' AS 'Results';
SELECT album_name, genre FROM albums WHERE genre = 'rock';

