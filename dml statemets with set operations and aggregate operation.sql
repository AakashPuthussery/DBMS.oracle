SQL> create table sailors(sid INT PRIMARY KEY, sname varchar(12), rating int, age int);   

Table created.

SQL> create table boats (bid INT PRIMARY KEY, bname varchar(12), color varchar(10));

Table created.

SQL> create table reserves(day date, sid INT, bid INT, FOREIGN KEY(sid) REFERENCES sailors(sid), FOREIGN KEY(bid) REFERENCES boats(bid));

Table created.
SQL> insert into sailors values(&sid,'&sname',&rating,&age);
Enter value for sid: 29
Enter value for sname: Brutus
Enter value for rating: 1
Enter value for age: 330
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(29,'Brutus',1,330)

1 row created.

SQL> / 
Enter value for sid: 31
Enter value for sname: Lubber
Enter value for rating: 8
Enter value for age: 55.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(31,'Lubber',8,55.5)

1 row created.

SQL> /
Enter value for sid: 32
Enter value for sname: Andy
Enter value for rating: 8
Enter value for age: 25.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(32,'Andy',8,25.5)

1 row created.

SQL> /
Enter value for sid: 58   
Enter value for sname: Rusty
Enter value for rating: 10
Enter value for age: 35.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(58,'Rusty',10,35.0)

1 row created.

SQL> /
Enter value for sid: 64
Enter value for sname: Horatio
Enter value for rating: 7
Enter value for age: 35.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(64,'Horatio',7,35.0)

1 row created.

SQL> /
Enter value for sid: 71 
Enter value for sname: Zorba
Enter value for rating: 10
Enter value for age: 16.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(71,'Zorba',10,16.0)

1 row created.

SQL> /
Enter value for sid: 74
Enter value for sname: Horatio
Enter value for rating: 9
Enter value for age: 35.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(74,'Horatio',9,35.0)

1 row created.

SQL> / 
Enter value for sid: 85
Enter value for sname: Art
Enter value for rating: 3
Enter value for age: 25.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(85,'Art',3,25.5)

1 row created.

SQL> / 
Enter value for sid: 95
Enter value for sname: Bob
Enter value for rating: 3
Enter value for age: 63.5
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(95,'Bob',3,63.5)

1 row created.

SQL> /
Enter value for sid: 29       
Enter value for sname: Brutus
Enter value for rating: 7
Enter value for age: 45.0
old   1: insert into sailors values(&sid,'&sname',&rating,&age)
new   1: insert into sailors values(29,'Brutus',7,45.0)

1 row created.

SQL> select * from sailors;

       SID SNAME	    RATING	  AGE
---------- ------------ ---------- ----------
	31 Lubber		 8	   56
	32 Andy 		 8	   26
	58 Rusty		10	   35
	64 Horatio		 7	   35
	71 Zorba		10	   16
	74 Horatio		 9	   35
	85 Art			 3	   26
	95 Bob			 3	   64
	22 Dustin		 7	   45
	29 Brutus		 7	   45

10 rows selected.

SQL> insert into boats values (&bid, '&bname', '&color');
Enter value for bid: 101
Enter value for bname: Intertake
Enter value for color: blue
old   1: insert into boats values (&bid, '&bname', '&color')
new   1: insert into boats values (101, 'Intertake', 'blue')

1 row created.

SQL> /  
Enter value for bid: 102
Enter value for bname: Intertake
Enter value for color: red
old   1: insert into boats values (&bid, '&bname', '&color')
new   1: insert into boats values (102, 'Intertake', 'red')

1 row created.

SQL> /
Enter value for bid: 103
Enter value for bname: Clipper
Enter value for color: green
old   1: insert into boats values (&bid, '&bname', '&color')
new   1: insert into boats values (103, 'Clipper', 'green')

1 row created.

SQL> /
Enter value for bid: 104
Enter value for bname: Marre
Enter value for color: red
old   1: insert into boats values (&bid, '&bname', '&color')
new   1: insert into boats values (104, 'Marre', 'red')

1 row created.

SQL> select * from boats;

       BID BNAME	COLOR
---------- ------------ ----------
       101 Intertake	blue
       102 Intertake	red
       103 Clipper	green
       104 Marre	red
SQL> /
Enter value for sid: 22
Enter value for bid: 101
Enter value for day: 10/10/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (22,101,'10/10/98')

1 row created.

SQL>insert into reserved(&sid,&bid,'&day');
Enter value for sid: 22
Enter value for bid: 102
Enter value for day: 10/10/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (22,102,'10/10/98')

1 row created.

SQL> /
Enter value for sid: 22
Enter value for bid: 103
Enter value for day: 10/8/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (22,103,'10/8/98')

1 row created.

SQL> /
Enter value for sid: 22
Enter value for bid: 104
Enter value for day: 10/7/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (22,104,'10/7/98')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 102
Enter value for day: 11/10/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (31,102,'11/10/98')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 103
Enter value for day: 11/9/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (31,103,'11/9/98')

1 row created.

SQL> /
Enter value for sid: 31
Enter value for bid: 104
Enter value for day: 11/12/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (31,104,'11/12/98')

1 row created.

SQL> /
Enter value for sid: 64
Enter value for bid: 101
Enter value for day: 9/5/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (64,101,'9/5/98')

1 row created.

SQL> /
Enter value for sid: 64
Enter value for bid: 102
Enter value for day: 9/8/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (64,102,'9/8/98')

1 row created.

SQL> /
Enter value for sid: 74
Enter value for bid: 103
Enter value for day: 9/8/98
old   1: insert into reserved values (&sid,&bid,'&day')
new   1: insert into reserved values (74,103,'9/8/98')

1 row created.

SQL> select * from reserved;

       SID	  BID DAY
---------- ---------- --------
	22	  101 10-10-98
	22	  102 10-10-98
	22	  103 10-08-98
	22	  104 10-07-98
	31	  102 11-10-98
	31	  103 11-09-98
	31	  104 11-12-98
	64	  101 09-05-98
	64	  102 09-08-98
	74	  103 09-08-98

10 rows selected.

SQL> select distinct sname from sailors1;
SNAME
------------
Rusty
Lubber
Andy
Art
Bob
Dustin
Zorba
Brustus
Horatio

9 rows selected.



