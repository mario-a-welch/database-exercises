USE codeup_test_db;

SELECT 'All albums in your table' AS 'RESULTS';
SELECT album_name, sales FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT 'All albums in your table' AS 'RESULTS';
SELECT album_name, sales FROM albums;

SELECT 'All albums released before 1980' AS 'RESULTS';
SELECT album_name, release_date FROM albums WHERE release_date < '1980';

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < '1980';

SELECT 'All albums released before 1900' AS 'RESULTS';
SELECT album_name, release_date FROM albums WHERE release_date < '1900';

SELECT 'All albums from Michael Jackson' AS 'RESULTS';
SELECT album_name, artist FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums from Peter Jackson' AS 'RESULTS';
SELECT album_name, artist FROM albums WHERE artist = 'Peter Jackson';