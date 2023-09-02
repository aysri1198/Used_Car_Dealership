CREATE DATABASE cars;
USE cars;

/* Query 1: Read Data */
SELECT * FROM car_dekho;

/* Query 2: Total Cars: To get a count of total records */
SELECT COUNT(*) FROM car_dekho;

/* Query 3: The manager asked the employee How many cars will be available in 2023? */
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2023;

/* Query 4: The manager asked the employee How many cars is available in 2020, 2021 and 2022? */
-- Method 1 --
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2020;
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2021;
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2022;
-- Method 2 --
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR IN (2020,2021,2022)
GROUP BY YEAR;

/* Query 5: Client asked me to print the total count of all cars by year. I don’t see all the details. */
SELECT YEAR, COUNT(*) 
FROM car_dekho 
GROUP BY YEAR;

/* Query 6: Client asked to car dealer agent How many diesel cars will there be in 2020? */ 
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2020 AND fuel = "Diesel";

/* Query 7: Client requested a car dealer agent How many petrol cars will there be in 2020? */
SELECT COUNT(*) FROM car_dekho 
WHERE YEAR = 2020 AND fuel = "Petrol";

/* Query 8: The manager told the employee to give a print of all the fuel cars (Petrol, Diesel, CNG) came according to year. */
SELECT YEAR, COUNT(*) FROM car_dekho 
WHERE fuel = "Petrol"
GROUP BY YEAR;

SELECT YEAR, COUNT(*) FROM car_dekho 
WHERE fuel = "Diesel"
GROUP BY YEAR;

SELECT YEAR, COUNT(*) FROM car_dekho 
WHERE fuel = "CNG"
GROUP BY YEAR;

/* Query 9: Manager said there were more than 100 cars in a given year, find which year had more than 100 cars? */
SELECT YEAR, COUNT(*) FROM car_dekho
GROUP BY YEAR
HAVING COUNT(*)>100;

-- ALSO --
SELECT YEAR, COUNT(*) FROM car_dekho
GROUP BY YEAR
HAVING COUNT(*)<50;

/* Query 10: The manager asked the employee to give him complete list of all cars count details between 2015 to 2023? */
SELECT COUNT(*) FROM car_dekho
WHERE YEAR BETWEEN 2015 AND 2023;

/* Query 11: The manager asked the employee to give complete list of all cars details between 2015 to 2023? */
SELECT * FROM car_dekho
WHERE YEAR BETWEEN 2015 AND 2023;

-- END --