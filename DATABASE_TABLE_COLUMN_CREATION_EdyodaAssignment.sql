CREATE DATABASE EDYODA_ASSIGNMENT;
USE EDYODA_ASSIGNMENT;
CREATE TABLE SalesPeople (
    Snum INT PRIMARY KEY,
    Sname VARCHAR(50) UNIQUE,
    City VARCHAR(50),
    Comm INT
);
INSERT INTO SalesPeople(Snum,Sname,City,Comm) VALUES(1001,"Peel","London",12); 
INSERT INTO SalesPeople(Snum,Sname,City,Comm) VALUES(1002,"Serres","Sanjose",13); 
INSERT INTO SalesPeople(Snum,Sname,City,Comm) VALUES(1004,"Motika","London",11); 
INSERT INTO SalesPeople(Snum,Sname,City,Comm) VALUES(1007,"Rifkin","Barcelona",15); 
INSERT INTO SalesPeople(Snum,Sname,City,Comm) VALUES(1003,"Axelrod","Newyork",10);
CREATE TABLE Customers (
    Cnum INT PRIMARY KEY,
    Cname VARCHAR(50),
    City VARCHAR(50) NOT NULL,
    Snum INT,
    FOREIGN KEY (Snum)
        REFERENCES SalesPeople (Snum)
);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2001,"Hoffman","London",1001);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2002,"Giovanni","Rome",1003);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2003,"Liu","Sanjose",1002);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2004,"Grass","Berlin",1002);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2006,"Clemens","London",1001);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2008,"Cisneros","Sanjose",1007);
INSERT INTO Customers(Cnum,Cname,City,Snum) VALUES(2007,"Pereira","Rome",1004);
CREATE TABLE Orders (
    Onum INT PRIMARY KEY,
    Amt FLOAT,
    Odate DATE,
    Cnum INT,
    Snum INT,
    FOREIGN KEY (Cnum)
        REFERENCES Customers (Cnum),
    FOREIGN KEY (Snum)
        REFERENCES SalesPeople (Snum)
);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3001,18.69,STR_TO_DATE("3-10-1990", "%d-%m-%Y"),2008,1007);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3003,767.19,STR_TO_DATE("3-10-1990", "%d-%m-%Y"),2001,1001);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3002,1900.10,STR_TO_DATE("3-10-1990", "%d-%m-%Y"),2007,1004);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3005,5160.45,STR_TO_DATE("3-10-1990", "%d-%m-%Y"),2003,1002);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3006,1098.16,STR_TO_DATE("3-10-1990", "%d-%m-%Y"),2008,1007);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3009,1713.23,STR_TO_DATE("4-10-1990", "%d-%m-%Y"),2002,1003);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3007,75.75,STR_TO_DATE("4-10-1990", "%d-%m-%Y"),2004,1002);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3008,4273.00,STR_TO_DATE("5-10-1990", "%d-%m-%Y"),2006,1001);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3010,1309.95,STR_TO_DATE("6-10-1990", "%d-%m-%Y"),2004,1002);
INSERT INTO Orders(Onum,Amt,Odate,Cnum,Snum) VALUES(3011,9891.88,STR_TO_DATE("6-10-1990", "%d-%m-%Y"),2006,1001);


