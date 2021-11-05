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

