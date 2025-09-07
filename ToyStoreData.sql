-- Identify customers on file that did not order a vintage car

With First_Query AS (
SELECT A.customerName, B.orderNumber, D.productLine FROM customers A
JOIN orders B ON A.customerNumber = B.customerNumber
JOIN orderdetails C ON B.orderNumber = C.orderNumber
JOIN products D ON C.productCode = D.productCode  
)
SELECT * FROM First_Query WHERE productLine <> 'Vintage Cars'
ORDER BY productLine DESC