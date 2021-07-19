

SELECT * FROM characters;

SELECT books.title, books.year 
FROM books 
INNER JOIN series 
ON books.series_id = series.id 
WHERE series.id = 1
ORDER BY books.year
;

SELECT * FROM series ORDER BY title;

SELECT * FROM books ORDER BY series_id;

SELECT characters.name, characters.motto 
FROM characters 
ORDER BY length(characters.motto) DESC 
LIMIT 1
;

SELECT characters.species, COUNT(characters.species) 
FROM characters 
GROUP BY characters.species 
ORDER BY COUNT(characters.species) DESC 
LIMIT 1
;

SELECT authors.name, subgenres.name 
FROM authors 
INNER JOIN series 
ON authors.id = series.author_id 
INNER JOIN subgenres 
ON series.subgenre_id = subgenres.id
ORDER BY authors.name
;

SELECT series.title 
FROM series 
INNER JOIN authors 
ON series.author_id = authors.id 
INNER JOIN characters 
ON authors.id = characters.author_id 
WHERE characters.species = 'human'
GROUP BY series.title 
ORDER BY COUNT(*) DESC 
LIMIT 1 
;

SELECT characters.name, COUNT(*) 
FROM characters 
INNER JOIN character_books 
ON characters.id = character_books.character_id 
GROUP BY characters.id 
ORDER BY COUNT(*) DESC, characters.id DESC 
;

SELECT * FROM characters;

SELECT * FROM character_books;
