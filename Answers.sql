use edyoda_assignment;

#Question 1 - Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT 
    COUNT(*)
FROM
    SalesPeople
WHERE
    Sname LIKE 'A%' OR 'a%';
    
#Question2 -  Display all the Salesperson whose all orders worth is more than Rs. 2000.
SELECT 
    SP.Snum, SP.Sname, SUM(o.Amt) AS AmtTotal
FROM
    Orders o
        JOIN
    SalesPeople SP ON o.Snum = SP.Snum
GROUP BY SP.Snum
HAVING AmtTotal > 2000;

#Question3 -  Count the number of Salesperson belonging to Newyork.
SELECT 
    COUNT(*)
FROM
    SalesPeople
WHERE
    City = 'Newyork';

#Question4 - Display the number of Salespeople belonging to London and belonging to Paris.
SELECT 
    *
FROM
    SalesPeople
WHERE
    City = 'London' OR City = 'Paris';

#Question5 - Display the number of orders taken by each Salesperson and their date of orders.
SELECT 
    o.Odate, s.Sname, o.Onum
FROM
    Orders o
        JOIN
    SalesPeople s ON s.Snum = o.Snum;