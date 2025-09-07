-- Identify customers on file that did not order a vintage car

With First_Query AS (
SELECT A.customerName, D.productLine FROM customers A
JOIN orders B ON A.customerNumber = B.customerNumber
JOIN orderdetails C ON B.orderNumber = C.orderNumber
JOIN products D ON C.productCode = D.productCode  
)
SELECT customerName, productLine
FROM First_Query

-- How many variations of the product category
-- SELECT count(distinct productCode), productLine FROM products GROUP BY productLine;