--1.
/* 
TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
 
A. Select all the song titles */
SELECT title FROM songs;

/* B. Show the titles of the songs that have an 'epic' mood or a release date after 1990 */
SELECT title FROM songs WHERE mood = 'epic' OR released > '1990';

