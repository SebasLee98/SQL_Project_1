SELECT A.orderNumber, B.customerNumber FROM orderdetails A
INNER JOIN orders B ON A.orderNumber = B.orderNumber
