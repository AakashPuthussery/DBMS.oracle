SQL> create table category(CategoryID INT PRIMARY KEY, CategoryName VARCHAR(5), Discription VARCHAR(10));

Table created.

SQL> create table product(ProductID INT PRIMARY KEY, ProductName VARCHAR(5), CategoryID INT, Price Numeric(7,3), FOREIGN KEY(CategoryID) REFERENCES category(CategoryID));

Table created.

SQL> insert into category values(&CategoryID, '&CategoryName', '&Disciption');
Enter value for categoryid: 1
Enter value for categoryname: Wine
Enter value for disciption: Grapewine
old   1: insert into category values(&CategoryID, '&CategoryName', '&Disciption')
new   1: insert into category values(1, 'Wine', 'Grapewine')

1 row created.

SQL> /
Enter value for categoryid: 2
Enter value for categoryname: Vodka
Enter value for disciption: Russian
old   1: insert into category values(&CategoryID, '&CategoryName', '&Disciption')
new   1: insert into category values(2, 'Vodka', 'Russian')

1 row created.

SQL> /
Enter value for categoryid: 3
Enter value for categoryname: Feni
Enter value for disciption: Goan
old   1: insert into category values(&CategoryID, '&CategoryName', '&Disciption')
new   1: insert into category values(3, 'Feni', 'Goan')

1 row created.

SQL> /
Enter value for categoryid: 4
Enter value for categoryname: Rum
Enter value for disciption: kerala
old   1: insert into category values(&CategoryID, '&CategoryName', '&Disciption')
new   1: insert into category values(4, 'Rum', 'kerala')

1 row created.

SQL> /
Enter value for categoryid: 5
Enter value for categoryname: Beer
Enter value for disciption: KF
old   1: insert into category values(&CategoryID, '&CategoryName', '&Disciption')
new   1: insert into category values(5, 'Beer', 'KF')

1 row created.

SQL> select * from category;

CATEGORYID CATEG  DESCRIPTION
---------- -----  ----------
	 1 Wine    Grapewine
	 2 Vodka   Russian
	 3 Feni    Goan
	 4 Rum	   kerala
	 5 Beer    KF
SQL> insert into product values(&ProductID,'&ProductName',&CategoryID,&Price);
Enter value for productid: 1
Enter value for productname: GL
Enter value for categoryid: 4
Enter value for price: 2000.45
old   1: insert into product values(&ProductID,'&ProductName',&CategoryID,&Price)
new   1: insert into product values(1,'GL',4,2000.45)

1 row created.

SQL> /
Enter value for productid: 2
Enter value for productname: HB
Enter value for categoryid: 2
Enter value for price: 2500
old   1: insert into product values(&ProductID,'&ProductName',&CategoryID,&Price)
new   1: insert into product values(2,'HB',2,2500)

1 row created.

SQL> /
Enter value for productid: 3
Enter value for productname: Apple
Enter value for categoryid: 2
Enter value for price: 4000.34
old   1: insert into product values(&ProductID,'&ProductName',&CategoryID,&Price)
new   1: insert into product values(3,'Apple',2,4000.34)

1 row created.

SQL> /
Enter value for productid: 4
Enter value for productname: Bat
Enter value for categoryid: 4 
Enter value for price: 1200
old   1: insert into product values(&ProductID,'&ProductName',&CategoryID,&Price)
new   1: insert into product values(4,'Bat',4,1200)

1 row created.

SQL> /
Enter value for productid: 5
Enter value for productname: Jinn
Enter value for categoryid: 5
Enter value for price: 4000
old   1: insert into product values(&ProductID,'&ProductName',&CategoryID,&Price)
new   1: insert into product values(5,'Jinn',5,4000)

1 row created.

SQL> select * from Product;

 PRODUCTID PRODU CATEGORYID	 PRICE
---------- ----- ---------- ----------
	 1 GL		  4    2000.45
	 2 HB		  2	  2500
	 3 Apple	  2    4000.34
	 4 Bat		  4	  1200
	 5 Jinn 	  5	  4000
SQL> select ProductID, ProductName, CategoryName from Product NATURAL JOIN Category;  

 PRODUCTID PRODU CATEG
---------- ----- -----
	 3 Apple Vodka
	 2 HB	 Vodka
	 4 Bat	 Rum
	 1 GL	 Rum
	 5 Jinn  Beer

SQL> Select ProductID, ProductName, CategoryName from Product INNER JOIN Category ON Product.CategoryID= Category.CategoryID;

 PRODUCTID PRODU CATEG
---------- ----- -----
	 3 Apple Vodka
	 2 HB	 Vodka
	 4 Bat	 Rum
	 1 GL	 Rum
	 5 Jinn  Beer

SQL> Select ProductID, ProductName, CategoryName from Product NATURAL RIGHT OUTER JOIN Category;

 PRODUCTID PRODU CATEG
---------- ----- -----
	 1 GL	 Rum
	 2 HB	 Vodka
	 3 Apple Vodka
	 4 Bat	 Rum
	 5 Jinn  Beer
	 6 jawan Wine
		 Feni

7 rows selected.

SQL> Select ProductID, ProductName, CategoryName from Product NATURAL FULL OUTER JOIN Category;

 PRODUCTID PRODU CATEG
---------- ----- -----
	 1 GL	 Rum
	 2 HB	 Vodka
	 3 Apple Vodka
	 4 Bat	 Rum
	 5 Jinn  Beer
	 6 jawan Wine
		 Feni

7 rows selected.
SQL> Select ProductID,ProductName,CategoryName FROM Product NATURAL LEFT OUTER JOIN Category;

 PRODUCTID PRODU CATEG
---------- ----- -----
	 6 jawan Wine
	 3 Apple Vodka
	 2 HB	 Vodka
	 4 Bat	 Rum
	 1 GL	 Rum
	 5 Jinn  Beer

6 rows selected.

SQL> 


