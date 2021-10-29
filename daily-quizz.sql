/*
nobel(yr, subject, winner)
*/ 


--17.
/*
Change the query shown so that it displays Nobel prizes for 1950
*/
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950
 
 -18.
/*
Show who won the 1962 prize for Literature.
*/
SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

-19.
/*
Show the year and subject that won 'Albert Einstein' his prize.
*/
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

-20.
/*
Give the name of the 'Peace' winners since the year 2000, including 2000.
*/
SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000 

-21.
/*
Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
*/
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
AND yr >= 1980 AND yr <= 1989

-22.
/*
Show all details of the presidential winners:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
*/
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson','Jimmy Carter', 'Barack Obama')

--11.
/*
Find the countries that have "t" as the second character.
*/
SELECT name FROM world
WHERE name LIKE '_t%'
ORDER by name

--12.
/*
Find the countries that have exactly four characters.
*/
SELECT name FROM world
 WHERE name LIKE '____'

--13.
/*
Find the country where the capital is the country plus "City".
*/
SELECT name
  FROM world
 WHERE capital = concat(name, ' City')

--14.
/*
Find the capital and the name where the capital includes the name of the country.
*/
SELECT capital, name
FROM world
WHERE capital LIKE concat ('%', name, '%')


-15.
/*
Find the capital and the name where the capital is an extension of name of the country.
*/
SELECT capital, name FROM world
WHERE capital LIKE concat ('%', name, '%') AND capital > name
  
  -16.
  /*
Show the name and the extension where the capital is an extension of name of the country.
*/
SELECT name, REPLACE(capital, name, '')
FROM world WHERE capital LIKE concat(name, '%') AND capital > name



