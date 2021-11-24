/*
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, screen, price)
Printer(code, model, color, type, price)
*/

--1. 
/*
Find the model number, speed and hard drive capacity for all the PCs with prices below $500.
*/
SELECT model, speed, hd
FROM PC
WHERE price < 500

--2.
/*
List all printer makers. Result set: maker.
*/
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'

--3
/*
Find all records from the Printer table containing data about color printers.
*/
SELECT *
FROM Printer
WHERE color = 'y'

--4
/*
For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
*/
SELECT  DISTINCT maker, speed
FROM Product INNER JOIN
Laptop ON Product.model = Laptop.model
WHERE hd >= 10

--5.
/*
Get hard drive capacities that are identical for two or more PCs.
Result set: hd.
*/
SELECT hd
FROM PC
GROUP BY hd
HAVING COUNT(hd) >= 2

--6.
/*
For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
*/
SELECT DISTINCT Product.maker, Laptop.speed
FROM Product INNER JOIN
Laptop ON Laptop.model = Product.model
WHERE hd >= 10

--7.
/*
Get the models and prices for all commercially available products (of any type) produced by maker B.
*/
SELECT PC.model, PC.price
FROM Product INNER JOIN PC
ON PC.model = Product.model
WHERE maker = 'B'
UNION
SELECT Laptop.model, Laptop.price
FROM Product INNER JOIN Laptop
ON Laptop.model = Product.model
WHERE maker = 'B'
UNION
SELECT Printer.model, Printer.price
FROM Product INNER JOIN Printer
ON Printer.model = Product.model
WHERE maker = 'B'

--8.
/*
Find the makers producing PCs but not laptops.
*/
SELECT maker FROM Product
WHERE type = 'PC'
Except
SELECT maker from Product
WHERE type = 'Laptop'

--9.
/*
Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
*/
SELECT DISTINCT maker
FROM Product INNER JOIN PC
ON PC.model = Product.model
WHERE speed >= 450

-10.
/*
Find the printer models having the highest price. Result set: model, price.
*/
SELECT DISTINCT model, price FROM PRINTER
WHERE price = (SELECT MAX(price)
FROM Printer
)

-11.
/*
Find out the average speed of PCs.
*/
SELECT AVG (speed) 
FROM PC

-12.
/*
Find out the average speed of the PCs produced by maker A.
*/
SELECT AVG(speed) AS avg_speed
FROM PC INNER JOIN Product
ON PC.model = Product.model
WHERE Product.maker = 'A'

-13.
/*
Get hard drive capacities that are identical for two or more PCs.
Result set: hd.
*/
SELECT hd
FROM PC
GROUP BY hd
HAVING COUNT (hd) >=2

-14.
/*
Classes(class, type, country, numGuns, bore, displacement)
Ships(name, class, launched)
Battles(name, date)
Outcomes(ship, battle, result)
For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
*/
SELECT Ships.class, Ships.name, Classes.country
FROM Ships INNER JOIN Classes ON
Classes.class = Ships.class
WHERE Classes.numGuns >= 10





