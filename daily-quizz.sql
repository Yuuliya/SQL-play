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

--8.
/*
Find the country that has all the vowels and no spaces in its name.
*/
SELECT name
   FROM world
WHERE name LIKE '%a%' AND 
name  LIKE '%e%' AND 
name  LIKE '%i%' AND 
name  LIKE '%o%' AND 
name  LIKE '%u%' AND 
name NOT LIKE '% %'

--9.
/*
Find the countries that contain the letter x.
*/
SELECT name FROM world
  WHERE name LIKE '%x%'

--10.
/*
Find the countries that have three or more a in the name.
*/
SELECT name
FROM world
WHERE name LIKE '%a%a%a%' 

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



