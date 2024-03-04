Execute Aggregate functions in SQL


      P_ID P_NAME	    S_ID       C_ID UNIT		            PRICE
---------- ---------- ---------- ---------- -------------------- -------------------------------
	 1 chaos	               1	  1       10 boxes X 20 bags   18
	 2 chang	               1   	  1       24-12 oz bottles	    19
	 3 Auiseed	       1	  2       12 500 ml bottle	    10
	 4 chef anton	       2	  2       48-6 og java		    22
	 5 chef mix	       2	  2       36 box			    35
	 
	 
1. Retrive max and min price of supplier id =2
2. Find the total number of product where category id=1
3. Find the number of product where pruce is greater than 20
4. Retrive the sum of price where the supplier id is 1
5. Retrive average price of all products
6. Retrve average price of products in category id is 1
7. Retrive all products with a high rpice than the average price




SQL> create table product ( p_id INT PRIMARY KEY, p_name Varchar(20), s_id INT, c_id INT, unit varchar(30), price numeric(7,3));

Table created.

SQL> insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price);
Enter value for p_id: 1
Enter value for p_name: chaos 
Enter value for s_id: 1
Enter value for c_id: 1
Enter value for unit: 10 boxes X 20 bags
Enter value for price: 18
old   1: insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price)
new   1: insert into product values(1,'chaos',1, 1,'10 boxes X 20 bags',18)

1 row created.

SQL> /
Enter value for p_id: 2
Enter value for p_name: chang
Enter value for s_id: 1
Enter value for c_id: 1
Enter value for unit: 24-12 oz bottles
Enter value for price: 19
old   1: insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price)
new   1: insert into product values(2,'chang',1, 1,'24-12 oz bottles',19)

1 row created.

SQL> /
Enter value for p_id: 3
Enter value for p_name: Auiseed      
Enter value for s_id: 1
Enter value for c_id: 2
Enter value for unit: 12 500 ml bottle
Enter value for price: 10
old   1: insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price)
new   1: insert into product values(3,'Auiseed',1, 2,'12 500 ml bottle',10)

1 row created.

SQL> 4
SP2-0226: Invalid line number
SQL> /
Enter value for p_id: 4
Enter value for p_name: chef anton
Enter value for s_id: 2
Enter value for c_id: 2
Enter value for unit: 48-6 og java
Enter value for price: 22
old   1: insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price)
new   1: insert into product values(4,'chef anton',2, 2,'48-6 og java',22)

1 row created.

SQL> /
Enter value for p_id: 5       
Enter value for p_name: chef mix
Enter value for s_id: 2
Enter value for c_id: 2
Enter value for unit: 36 box
Enter value for price: 35
old   1: insert into product values(&p_id,'&p_name',&s_id, &c_id,'&unit',&price)
new   1: insert into product values(5,'chef mix',2, 2,'36 box',35)

1 row created.

SQL> select * from product;

     P_ID P_NAME	    S_ID       C_ID UNIT		            PRICE
---------- ---------- ---------- ---------- -------------------- -------------------------------
	 1 chaos	               1	  1       10 boxes X 20 bags   18
	 2 chang	               1   	  1       24-12 oz bottles	    19
	 3 Auiseed	       1	  2       12 500 ml bottle	    10
	 4 chef anton	       2	  2       48-6 og java		    22
	 5 chef mix	       2	  2       36 box			    35

SQL> select min(price) from product where s_id=2;

MIN(PRICE)
----------
	22

SQL> select max(price) from product where s_id=2;

MAX(PRICE)
----------
	35

SQL> select count(p_id) from product where c_id=1;

COUNT(P_ID)
-----------
	  2

SQL> select count(p_id) from product where c_id=2;

COUNT(P_ID)
-----------
	  3

SQL> select count(p_id) from product where price>=20;

COUNT(P_ID)
-----------
	  2

SQL> select sum(price) from product where s_id=1;

SUM(PRICE)
----------
	47

SQL> select avg(price) from product;

AVG(PRICE)
----------
      20.8

SQL> select avg(price) from product where c_id=1;

AVG(PRICE)
----------
      18.5

SQL> SELECT * FROM product WHERE price > (SELECT AVG(price) FROM product);

      P_ID P_NAME	    S_ID       C_ID UNIT		      PRICE
---------- ---------- ---------- ---------- -------------------- ----------
	 4 chef anton	       2	  2 48-6 og java		 22
	 5 chef mix	       2	  2 36 box			 35

SQL> 


