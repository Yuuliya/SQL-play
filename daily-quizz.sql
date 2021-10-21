--1. 
/*
Show the countries which have a name that includes the word 'United'
*/
SELECT name
FROM world
WHERE name LIKE '%United%'

--2.
/*
Show the countries that are big by area or big by population. Show name, population and area.
*/
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

--3.
/*
Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
*/
SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population < 250000000)
  OR (area < 3000000 and population > 250000000)
  
  --4.
  /*
Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
*/
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America'

