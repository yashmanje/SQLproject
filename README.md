  <h1> SQLproject</h1>
# This project involves the creation of a sample database for the purpose of learning and practicing SQL queries.

<h1>INTRODUCTION</h1> 
# The tools utilized for this project include the MySQL Community Server and DBeaver, providing a comprehensive environment for SQL development. 

Database Structure

In this project, a cricket store database has been created with three distinct tables: Customer, Product, and Orders

</br>
 
 <h3>Create a database</h3> 

for creating a database in sql we use create command 
 
 ````create database customer;````

</br>
 
for using the corresponding database we use 'USE' command 

````USE customer```` 


To create a table in a database, you would typically use the CREATE TABLE statement in SQL.

```` 
create TABLE Customer
(
id int PRIMARY key,
Firstname VARCHAR(50),
Lastname varchar(50),
Age int,
City VARCHAR(50)
)
````
*   The "Customer" table is created with columns such as "id," "Firstname," "Lastname," "Age," and "City."
*   The "id" column is defined as an integer and serves as the primary key,
*   The "Firstname" and "Lastname" columns are set as variable character (VARCHAR) data types with a maximum length of 50 characters.
*   The "Age" column is represented as an integer.
*   The "City" column is also a variable character type with a maximum length of 50 characters.
 
<img width="883" alt="Screenshot 2024-02-25 at 7 53 50 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/51efe4b3-176d-4682-a749-b8eb2190b073">

</br>

<h2>DESCRIBE TABLE </h2>
 I've utilized the "DESCRIBE" command to present a detailed overview of the tables.

````
desc Customer
````


![image](https://github.com/yashmanje/SQLproject/assets/151402001/72affb87-fd46-4216-b33f-121990af4a98)

</br>

````
desc product
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/79ec043b-7d3b-4646-b565-6a9a5a2b9bd8)

</br>

````
desc orders
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/02e7fbda-5765-4d79-90ef-2fae8178320c)


</br>

 <H1> select command </H1>

  To observe the contents of a table, the SELECT command is utilized.
  Using "select * from Customer" will showcase all the data stored in the table.

 ```` select * from Customer;```` 

</br>

 <h1> Insert command</h1>

 Insert command in sql is used for inserting records into the table 

````
insert into Customer(id,firstname,lastname,Age,City)values(1,'Yashwanth','Reddy',33,'hyderabad')

insert into Customer(id,firstname,lastname,Age,City)values(2,'pooja','shetty',23,'delhi')

insert into Customer(id,firstname,lastname,Age,City)values(3,'shiva','Reddy',28,'hyderabad')

insert into Customer(id,firstname,lastname,Age,City)values(4,'ram','Reddy',13,'mumbai')

insert into Customer(id,firstname,lastname,Age,City)values(5,'raj','kumar',21,'pune')

insert into Customer(id,firstname,lastname,Age,City)values(6,'shareef','murtuza',26,'chennai'); 
````

<img width="801" alt="Screenshot 2024-02-25 at 8 31 56 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/6db3ef79-1998-40d7-afc4-139f937c7b10">

</br>

 This code snippet demonstrates the creation of a "product" table and the insertion of data.
````
create TABLE product
(
id int PRIMARY key,
prodcut_name VARCHAR(50),
product_price float
)

insert into product (id,prodcut_name ,product_price)values(1,'BAT',299.89);

insert into product (id,prodcut_name ,product_price)values(2,'BAll',19.89);

insert into product (id,prodcut_name ,product_price)values(3,'gloves',99.89);

insert into product (id,prodcut_name ,product_price)values(4,'helmet',169.89);

insert into product (id,prodcut_name ,product_price)values(5,'Pads',199.89);

select * from product 
````
<img width="657" alt="Screenshot 2024-02-25 at 8 52 34 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/faede961-ab2a-42f8-a071-32b089d22ea4">

</br>

<h1>WHERE Clause </h1>

The WHERE clause functions as a filter for records in a database query. Its purpose is to retrieve only those records that meet a specific condition.


````
select * from Customer 
where Lastname ='reddy'
order by Firstname  ASC
````

<img width="614" alt="Screenshot 2024-03-03 at 7 27 29 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/46c70bf3-04d6-4196-a7e5-a378f1b34cbd">

</br>

Ex-2

````
select * from Customer
where id =5
````

<img width="614" alt="Screenshot 2024-03-03 at 7 30 34 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/be0c43c0-f597-4dc5-9510-67166b6d68a2">

</br>

Ex-3 

````
select * from product
where product_price >=100
````

<img width="614" alt="Screenshot 2024-03-03 at 7 32 51 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/5116c270-926c-45a0-97dd-338003a7245b">


</br>

<h1>Alter command</h1> 

In SQL, the "ALTER" command is used to modify tables, allowing for various tasks based on specific requirements.
This includes actions such as adding, modifying, or changing the datatype of columns. 
In this instance, the datatype of the "product_price" table has been modified to "FLOAT(6,2)."

````
     ALTER TABLE product 
    modify  product_price float(6,2);
````

</br>

 <h1>Update</h1>

update command in sql is used  to update records in the table 
````
 UPDATE product
 SET product_price =199.89
 WHERE id = 5;
````
<img width="657" alt="Screenshot 2024-02-25 at 10 01 08 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/0808aea1-2690-4230-9614-3bb53811bc75">

</br>

i have created a new table ''Orders'' and created new columns and used ''Datetime'' function

````
CREATE table orders
(
  OrderID int primary key AUTO_INCREMENT,
  OrderDate Datetime,
  CustomerID int,
  ProductID int
  
  
)


SELECT * from orders

<img width="657" alt="Screenshot 2024-02-28 at 12 48 26 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/873dd66a-240e-4947-920d-f4b6aa6b3150">

</br>
i have inserted data  into orders table 

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),1,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),2,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),3,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),4,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),5,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),6,3)
````
<img width="629" alt="Screenshot 2024-02-29 at 5 22 04 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/818bb519-38d5-42a4-90b9-243567781e2a"> 

</br>

<img width="629" alt="Screenshot 2024-02-29 at 5 22 13 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/2c1d5d6d-9e8d-47c0-87da-2745a074d23f">

</br>

<H1>Foreign keys</H1>
foreign keys are constraint  used for linking two tables together 
Foreign key is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.
here i have linked customerid from orders table to customer table id primary key 
 and i have also linked productID from orders table to primary key of products tables 
 
````
  alter table orders 
  add foreign key (CustomerID) references customer(id)

  alter table orders 
  add foreign key (productID) references product(id)
````

  ER Diagram 

  <img width="523" alt="Screenshot 2024-02-28 at 2 07 00 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/8628f957-aefe-4825-b317-3683fc5aade9">

</br>

  <h1>Inner Join</h1> 

An SQL Join clause is used to combine multiple related tables in a database, based on common fields/columns.

here i have combined all the three tables customer,orders,product using inner join 


````
SELECT *

from Orders

inner JOIN Product on Orders.ProductID=Product.ID

inner JOIN Customer  on Orders.CustomerID =customer.ID

````
<img width="1288" alt="Screenshot 2024-02-29 at 6 11 25 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/6b0bb548-ec56-4f80-ae0d-82b26efe5003">

</br>

i have cleaned the data using alias and removed some columns and simplified the result 

````
SELECT o.OrderDate,c.Firstname,c.Lastname,c.Age,c.City,p.prodcut_name,p.product_price  

from Orders as o

inner JOIN Product as p on o.ProductID=p.ID

inner join Customer as c on o.CustomerID=c.ID  
````


<img width="1286" alt="Screenshot 2024-02-29 at 6 16 30 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/a88e307d-67cc-4863-baa7-1667592af187">

</br>

with the following data i will be performing various query on this data 


<h1>Group by </h1>
In SQL, The Group By statement is used for organizing similar data into groups. 
the main purpose of grouping the records of a table based on particular columns is to perform calculations on these groups
typically used with aggregate functions such as SUM(), COUNT(), AVG(), MAX(), or MIN() etc.


<h4>SUM</h4>

here in the following code i have used sum to function to get the total of product price 
````
SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname
````

<img width="608" alt="Screenshot 2024-02-29 at 9 46 45 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/1e19ea01-cc30-4dd0-956a-158bf31607a9">

</br>

<h1>Order by </h1>

using order by keyword i have sorted the data in asc and desc order 

DESC
````
SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname 
ORDER by c.Firstname DESC
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/6840de16-04ae-466b-bd90-af0ddf8d2d92)

</br>

ASC

````
SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname 
ORDER by c.Firstname ASC
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/af6c0957-f2ea-4b57-a28f-022b5ed7f199)

</br>

AVG

i have used avg function here to get avg price each person spent 

````
SELECT c.Firstname,AVG(p.product_price) as Total
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname  
````

<img width="608" alt="Screenshot 2024-02-29 at 10 01 12 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/7e9ac78d-7ae3-40bf-8098-249e50f620ea">

</br>

 average spent by city wise 
````
 SELECT c.City ,AVG(p.product_price) as Total
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.City 
ORDER by c.City asc
````

<img width="608" alt="Screenshot 2024-02-29 at 10 03 56 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/10cb4b66-f0ad-4065-bc9e-2c6fac7592b9">

</br>

COUNT 

using count function i have computed list of orders ordered by each person 

````
SELECT c.Firstname,COUNT(p.prodcut_name)
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname
````



![image](https://github.com/yashmanje/SQLproject/assets/151402001/c556cbbb-d1b6-4446-ad70-e13706aac85f)

</br>


<h1>Having clause</h1>


having clause is used for performing aggregated functions on the group

here i have used having clause on the group to get the count  

````
SELECT c.Firstname,p.prodcut_name ,sum(p.product_price),COUNT(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname, p.prodcut_name 
HAVING count(p.prodcut_name)>=2
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/f5039e2f-dfae-44a6-8738-e586f1bea8f1)

</br>


created a new database for further practise 

````
create table Student
(
RollNo int primary key not null,
FirstName varchar(50),
LastName varchar(50)
)

select * from Student 

alter table Student 
add column city varchar(50)
````

inserted following data into student table 

````
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(100,'Pooja','Kapoor',98,'A','Hyderabad')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(101,'Sandeep','Reddy',68,'c','Delhi')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(102,'yashwanth','reddy',95,'A','Hyderabad')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(103,'Shekar','Rao',88,'B','Chennai')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(104,'Deepika','shetty',58,'C','Hyderabad')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(105,'kareena','Kapoor',38,'D','Mumbai')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(106,'Rahul','reddy',88,'B','Delhi')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(107,'Digvijay','Reddy',99,'A','Hyderabad')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(108,'Shefali','Khan',58,'C','Delhi')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(109,'poonam','shetty',78,'B','Hyderabad')
insert into  Student (RollNo,FirstName,LastName,marks,grade,city)values(110,'rohit','Rao',68,'C','Mumbai')
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/2223b089-44c7-4c6f-a9ec-fe6b2b036721)

</br>


DESCRIBE Table 
````
desc Student
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/4275588a-ceb8-4dec-bd95-65746c76147a)

</br>

````
select * from Student
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/77ce1d4c-b5f1-440c-bb98-6cdcaa5cac83)

</br>


<h1>Operators </h1>

In SQL we have different operators we can use to perform query's 

<h3>AND</h3> 

The AND operator is used to filter records based on more than one condition

using student table i have used 'AND' operator to get results of those students who scored more than 70 and belong to city hyderabad 

````
select * from Student
where marks >70 and city='hyderabad'
````

<img width="826" alt="Screenshot 2024-03-06 at 1 11 38 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/450d6abf-bd30-4003-9899-1e742e0f3789">

</br>

EX-2 

````
select * from Student
where grade='A' and LastName ='reddy'
order by marks DESC
````

<img width="732" alt="Screenshot 2024-03-06 at 1 15 47 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/e0e749de-de9a-42d5-9dcb-7838b76d2cde">

</br>

<H3>OR </H3>

The OR operator is used to filter records based on more than one condition

using student table i have used 'OR' operator to get results of those students who got B grade  and city is hyderabad

````
select * from Student  
where grade="B" or city ='hyderabad'
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/63c94be5-0cea-4fd8-8f7a-75041a58b133)

</br>

EX-2

````
select * from Student  
where marks>=50  or LastName ='shetty'

````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/faddc29d-5b5a-45c2-84a0-af9a663534ce)

</br>

<H3>Between operator </H3>

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

````
select * from Student
where marks BETWEEN 60 and 90 
````
<img width="732" alt="Screenshot 2024-03-06 at 1 33 41 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/df9641a1-c846-4a31-a217-a8a4ace5376e">

</br>

<h3>IN operator </h3>

The IN operator allows you to specify multiple values in a WHERE clause.

````
select * from Student
where city in ('delhi','pune')
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/ca8db7fa-189c-4581-be08-361d75ef0290)

</br>

<h3>NOT Operator </h3>

The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.

````
select * from Student
where city not in ('delhi','pune')
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/842aff2e-7a9c-4728-a98c-bb606796a754)

</br>

<h1>Limit clause </h1>

The LIMIT clause is used to specify the number of records to return.

The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
i used limit clause here to get only 5 student records who have scored more than 50 marks and odered them desc 
````
select * from student 
where marks>=50 
order by marks desc 
limit 5
````

<img width="732" alt="Screenshot 2024-03-06 at 1 50 28 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/c04ecb33-12b0-4e61-8cfa-55f1c4913f99">

</br>

<h3>OFFSET</h3>

MySQL Offset is used to specify from which row we want the data to retrieve. To be precise, specify which row to start retrieving from. Offset is used along with the LIMIT. 

````
select * from student 
order by marks desc 
limit 5 offset 4
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/be9d66f7-f6e0-4754-a326-d553da1bf5ee)


![image](https://github.com/yashmanje/SQLproject/assets/151402001/fbb61c8e-2159-4509-ad94-458983b99488)

</br>


<H1>Truncate </H1>

The TRUNCATE TABLE command deletes the data inside a table, but not the table itself.


truncate  TABLE student;

![image](https://github.com/yashmanje/SQLproject/assets/151402001/332b61ae-2407-43e9-b47e-66d991caaf09)


</br>

<H1>Drop </H1>

The DROP TABLE command deletes a table in the database.
````
alter table Student 
drop column city
````

<img width="732" alt="Screenshot 2024-03-06 at 3 16 43 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/5f3024f0-9996-4d9a-bcbd-e9c25e4c2480">

</br>

the drop command is also used for deleting the table 

````
DROP TABLE student
````
<img width="732" alt="Screenshot 2024-03-07 at 1 33 36 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/e6f416e1-8edd-4463-adef-39a2d323bd74">

</br>

the drop command can also be used to drop entire database 

````
drop database student_records
````
<img width="782" alt="Screenshot 2024-03-07 at 1 38 30 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/2937a532-5d4f-4e2f-b083-939f8ade3e2a">

</br>

creating a new database and table to practise different joins 
````
create table student 
(
ID int primary key, 
Name varchar (50)
)

insert into student  (ID,Name )

values 
(101,'Jack'),
(102,'Smith'),
(103,'Jennifer '),
(104,'kendra');
````
 
````
create table Course
(
ID int primary key,
Course varchar(50)

)
 
insert into Course (ID,Course)
values 
(102,'English'),
(104,'Math'),
(105,'Science'),
(107,'Computer Science')

````


![image](https://github.com/yashmanje/SQLproject/assets/151402001/ff5f7ab3-1dcf-4025-b859-850a0b4c8c65)

</br>

![image](https://github.com/yashmanje/SQLproject/assets/151402001/f781a125-c6b7-4043-81a8-d5f5a8e37b9b)


</br>

<h2>Inner join </h2>

The INNER JOIN keyword selects records that have matching values in both tables.

from both student and course table we get the matching value below 

````
select * from student s 
inner join Course c 
on 
s.ID =c.ID 
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/5c530078-7fd9-4782-aaf7-1ef8727bbeba)

</br>

<h2> Left Join </h2>

The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

````
select * from student s 
left  join Course c 
on 
s.ID =c.ID 
````

<img width="569" alt="Screenshot 2024-03-07 at 2 47 21 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/08d98420-3dd2-490d-a549-1411cb2b6ee7">

</br>

<h2>Right Join </h2>

The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

````
select * from student s 
Right  join Course c 
on 
s.ID =c.ID 

````

<img width="569" alt="Screenshot 2024-03-07 at 2 49 53 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/355c7907-b517-4fbb-b269-007851e59e0e">

</br>

<h2>Full Join </h2>

The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

In mysql we have to use union for full join to indirectly implement full join.

````
select * from student s 
left  join Course c 
on 
s.ID =c.ID 

union 

select * from student s 
right  join Course c 
on 
s.ID =c.ID 
````

<img width="569" alt="Screenshot 2024-03-07 at 2 57 23 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/b703c63b-0c7b-4792-b5e9-cbd7e162a5e9">

</br>

<h2>Cross Join </h2>

The CROSS JOIN keyword returns all records from both tables (table1 and table2)

````
select * from student s 
cross join Course c 
on 
s.ID =c.ID
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/d1fce17e-7ea9-429e-86b4-aa8ae1113984)

</br>

<h2>Left exclusive join </h2>

this join only return the records in left table non overlapping 

````
select * from student s 
left join Course c 
on 
s.ID =c.ID 
where c.id is null
````
<img width="569" alt="Screenshot 2024-03-07 at 3 19 01 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/ef2f7a27-cc1b-496f-adc3-8b8ad1567695">

</br>

<h2>Right exclusive join </h2>

this join only return the records in right table non overlapping 

````
select * from student s 
right join Course c 
on 
s.ID =c.ID 
where s.id is null
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/502e41f9-0114-4174-b22d-572181adff76)

</br>

<h2>Self join </h2>

A self join is a regular join, but the table is joined with itself.

````
create table employee 
(
ID int primary key,
Name varchar (50),
manager_ID int 

)

insert into employee (ID,Name,manager_ID)
values 
(101,'Adam',103),
(102,'Bob',104),
(103,'Casey',NUll),
(104,'donald',103);

SELECT  a.name as manager_name ,b.Name 
from employee as a join employee as b 
on 
a.id=b.manager_ID 
````

<img width="784" alt="Screenshot 2024-03-07 at 3 49 39 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/c2e3cb78-3ebe-4c04-a614-60bf4ac75a2c">

<img width="784" alt="Screenshot 2024-03-07 at 3 50 09 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/8972ae74-33e1-4dfa-b3e6-ad570fade5b4">

</br>

<h1>Union </h1>

the UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order

````
select name  from employee  
union 
select name  from employee
````

<img width="784" alt="Screenshot 2024-03-07 at 4 00 44 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/da97b833-6be2-413f-adc8-2722705f7f9f">

</br>

<h2>Union all </h2>

The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

````
select name  from employee  
union all 
select name  from employee
````

<img width="784" alt="Screenshot 2024-03-07 at 4 05 15 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/f308cad0-21df-4432-bf78-2b52214adae4">

</br>

<h1>Sub queries </h1>

A subquery is a SQL query nested inside a larger query.
The subquery can be nested inside a SELECT, INSERT, UPDATE, or DELETE statement or inside another subquery.

for subqueries i have created new database and table 

````
create database Student_records 
use student_records


create table Student
(
RollNo int primary key,
FirstName varchar(50),
LastName varchar(50)
)

select * from student 

alter table Student 

change lastname  marks int
insert into Student (rollno,firstname,marks)
values 
(100,'Pooja',98),
(101,'Sandeep',68),
(102,'yashwanth',95),
(103,'Shekar',88),
(104,'Deepika',58),
(105,'kareena',38),
(106,'Rahul',88),
(107,'Digvijay',99),
(108,'Shefali',58),
(109,'poonam',78),
(110,'rohit',68)
````

using sub queries i have calculated those students who got more marks than class avg

````
select FirstName, marks 
from Student 
where marks >(select avg (marks ) from student )
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/2452c289-33a7-48ac-9f48-f8f12f290b61)

</br>

ex-2 
using sub query i have got the names of students wo have even rollno 
````
select FirstName 
from Student 
where rollno in 
(select RollNo  from Student where RollNo %2=0);
````

<img width="784" alt="Screenshot 2024-03-07 at 4 47 09 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/3f728f8d-f005-495f-8105-a128cadce6b3">

</br>

<h1>Views </h1>

In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

````
create view view1 As

select RollNo ,FirstName ,marks  from Student  

select * from view1

````
<img width="784" alt="Screenshot 2024-03-07 at 5 02 45 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/4090b5ef-e949-4575-99ca-2df50d2273da">

</br>

 we can even perform different queries on views as well 

````
create view view1 As

select RollNo ,FirstName ,marks  from Student  

select avg(marks) 
from view1
 ````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/8caa4fb9-b787-4b6f-8197-d85a5482a560)

</br>

<h1>Common Common Table Expression</h1>

In SQL, CTE stands for Common Table Expression. It is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. CTEs make complex queries more readable and manageable by breaking them into smaller, modular parts.

SQL query attempts to find students whose marks are greater than the average marks of all students

This query will return all columns for students whose marks are greater than the average marks of all students.

````
with avg_marks (AVG) as
(
select avg(marks) from Student 
)
select *
from student s, avg_marks av
where s.marks > av.avg
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/38fdf250-326e-4ff7-96f1-4bbc2aa74d2b)

</br>

creating a new database for CTE queries 

create database apple_sales
use apple_sales

````create table sales
(
	store_id  		int,
	store_name  	varchar(50),
	product			varchar(50),
	quantity		int,
	cost			int
);
````

inserted following data 

````
insert into sales values
(1, 'Apple Originals 1','iPhone 12 Pro', 1, 1000),
(1, 'Apple Originals 1','MacBook pro 13', 3, 2000),
(1, 'Apple Originals 1','AirPods Pro', 2, 280),
(2, 'Apple Originals 2','iPhone 12 Pro', 2, 1000),
(3, 'Apple Originals 3','iPhone 12 Pro', 1, 1000),
(3, 'Apple Originals 3','MacBook pro 13', 1, 2000),
(3, 'Apple Originals 3','MacBook Air', 4, 1100),
(3, 'Apple Originals 3','iPhone 12', 2, 1000),
(3, 'Apple Originals 3','AirPods Pro', 3, 280),
(4, 'Apple Originals 4','iPhone 12 Pro', 2, 1000),
(4, 'Apple Originals 4','MacBook pro 13', 1, 2500);
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/1226626f-fe87-465a-882a-3291e623dcd7)


Query-1 

Find total sales per each store

````
select store_id , sum(cost) as total_sales 
from sales s 
group by s.store_id 
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/34e0ec70-c217-4c4d-b936-adbcc54e5ece)

query-2 

Find average sales with respect to all stores

````
select avg (t_sales)
from 
(
select store_id ,sum(s.cost) as T_sales from sales s group by s.store_id 
) 
as x 
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/8756c305-a3c2-4032-9fc3-e20513b4e764)

</br>

Find stores who's sales where better than the average sales accross all stores using with clause 

````
WITH total_sales as
		(select s.store_id, sum(s.cost) as total_sales_per_store
		from sales s
		group by s.store_id),
	avg_sales as
		(select avg(total_sales_per_store) as avg_sale_for_all_store
		from total_sales)
select *
from   total_sales
join   avg_sales
on total_sales.total_sales_per_store > avg_sales.avg_sale_for_all_store;

````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/d6b0db24-f13f-4276-b2f8-bdfe5eb364a5)


