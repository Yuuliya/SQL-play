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
