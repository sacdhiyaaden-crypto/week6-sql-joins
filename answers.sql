-- WEEK 6: SQL JOINS
-- Database: classicmodels
-- GitHub: sacdhiyaaden-crypto / week6-sql-joins

USE classicmodels;

-- Question 1: INNER JOIN
-- Show employees with their office city and phone
-- Only employees who have an office
SELECT 
    employees.firstName,
    employees.lastName,
    employees.officeCode,
    offices.city,
    offices.phone
FROM employees
INNER JOIN offices
ON employees.officeCode = offices.officeCode;

-- Question 2: LEFT JOIN
-- Show all products with their product line description
-- Even if product line has no description
SELECT 
    products.productName,
    products.productCode,
    products.productLine,
    productlines.textDescription
FROM products
LEFT JOIN productlines
ON products.productLine = productlines.productLine;

-- Question 3: RIGHT JOIN
-- Show all offices with their employees
-- Even if office has no employees
SELECT 
    employees.firstName,
    employees.lastName,
    offices.officeCode,
    offices.city
FROM employees
RIGHT JOIN offices
ON employees.officeCode = offices.officeCode;
