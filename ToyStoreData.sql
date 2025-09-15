-- Identify customers on file that did not order a vintage car
With First_Query AS (
SELECT A.customerName, C.orderNumber, D.productLine, C.productCode, C.quantityOrdered FROM customers A
JOIN orders B ON A.customerNumber = B.customerNumber
JOIN orderdetails C ON B.orderNumber = C.orderNumber
JOIN products D ON C.productCode = D.productCode  
)
SELECT distinct customerName, count(DISTINCT orderNumber) AS Number_of_orders_made
FROM First_Query GROUP BY customerName ORDER BY Number_of_orders_made DESC;

-- Most popular products ranked
SELECT B.productName, A.quantityOrdered FROM orderdetails A
LEFT JOIN products B ON A.productCode = B.productCode
ORDER BY quantityOrdered DESC LIMIT 15;


