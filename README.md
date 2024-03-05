  <h1> SQLproject</h1>
# In this project i have created a sample database to learn and practise sql query's

<h1>INTRODUCTION</h1> 
# Tools used  mysql community server and debeaver. 

# In this project i have created cricket store with 3 different tables namely customer, product table , order table 

 Create a database 

# for creating a database in sql we use create command 
 Syntax ----- create database customer,

# for using the correspondind database we use 'USE' command 
ex --USE customer 

 creating table in database
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
# SQL offers different datatypes 
 in this table i have used primary key with integer  as datatype
 and for variable i have Varchar datatype and set the space to 50 

<img width="883" alt="Screenshot 2024-02-25 at 7 53 50 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/51efe4b3-176d-4682-a749-b8eb2190b073">


<h2>DESCRIBE TABLE </h2>
i have used here Describe command to show description of following tables 

````
desc Customer
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/72affb87-fd46-4216-b33f-121990af4a98)


````
desc product
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/79ec043b-7d3b-4646-b565-6a9a5a2b9bd8)


````
desc orders
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/02e7fbda-5765-4d79-90ef-2fae8178320c)




 <H1> select command </H1>

# for viewing a table we use select command 

select * from Customer will display all the contents in the table.


  <h1> Insert command</h1>

# Insert command in sql is used for inserting records into the table 

EX-

````
insert into Customer(id,firstname,lastname,Age,City)values(1,'Yashwanth','Reddy',33,'hyderabad')

insert into Customer(id,firstname,lastname,Age,City)values(2,'pooja','shetty',23,'delhi')

insert into Customer(id,firstname,lastname,Age,City)values(3,'shiva','Reddy',28,'hyderabad')

insert into Customer(id,firstname,lastname,Age,City)values(4,'ram','Reddy',13,'mumbai')

insert into Customer(id,firstname,lastname,Age,City)values(5,'raj','kumar',21,'pune')

insert into Customer(id,firstname,lastname,Age,City)values(6,'shareef','murtuza',26,'chennai'); 
````
<img width="801" alt="Screenshot 2024-02-25 at 8 31 56 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/6db3ef79-1998-40d7-afc4-139f937c7b10">

# I have created a new table for products and inserted the following data into the table 
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


<h1>WHERE Clause </h1>

The WHERE clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.


````
select * from Customer 
where Lastname ='reddy'
order by Firstname  ASC
````

<img width="614" alt="Screenshot 2024-03-03 at 7 27 29 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/46c70bf3-04d6-4196-a7e5-a378f1b34cbd">

Ex-2

````
select * from Customer
where id =5
````

<img width="614" alt="Screenshot 2024-03-03 at 7 30 34 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/be0c43c0-f597-4dc5-9510-67166b6d68a2">

Ex-3 

````
select * from product
where product_price >=100
````

<img width="614" alt="Screenshot 2024-03-03 at 7 32 51 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/5116c270-926c-45a0-97dd-338003a7245b">










 <h1>Alter command</h1> 

 #In sql we use alter command to edit the table and we can perform different task depending upon requirements 

 #we can add modify column and even change column datatype as well 

 here i have modified product_price table datatype as float(6,2)
````
     ALTER TABLE product 
    modify  product_price float(6,2);
````
 <h1>Update</h1>

update command in sql is used  to update records in the table 
````
 UPDATE product
 SET product_price =199.89
 WHERE id = 5;
````
<img width="657" alt="Screenshot 2024-02-25 at 10 01 08 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/0808aea1-2690-4230-9614-3bb53811bc75">

i have created a new table Orders and created new columns and used datetime function
````
CREATE table orders
(
  OrderID int primary key AUTO_INCREMENT,
  OrderDate Datetime,
  CustomerID int,
  ProductID int
  
  
)


SELECT * from orders
````
<img width="657" alt="Screenshot 2024-02-28 at 12 48 26 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/873dd66a-240e-4947-920d-f4b6aa6b3150">

i have inserted some random orders into orders table 
````
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),1,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),2,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),3,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),4,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),5,3)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),6,3)
````
<img width="629" alt="Screenshot 2024-02-29 at 5 22 04 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/818bb519-38d5-42a4-90b9-243567781e2a"> 



<img width="629" alt="Screenshot 2024-02-29 at 5 22 13 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/2c1d5d6d-9e8d-47c0-87da-2745a074d23f">



<H1>Foreign keys</H1>
foreign keys are constraint  used for linking two tables together 

A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.

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


i have cleaned the data using alias and removed some columns and simplified the result 

````
SELECT o.OrderDate,c.Firstname,c.Lastname,c.Age,c.City,p.prodcut_name,p.product_price  

from Orders as o

inner JOIN Product as p on o.ProductID=p.ID

inner join Customer as c on o.CustomerID=c.ID  
````


<img width="1286" alt="Screenshot 2024-02-29 at 6 16 30 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/a88e307d-67cc-4863-baa7-1667592af187">


with the following data i will be performing various query on this data 


<h1>Group by </h1>
n SQL, The Group By statement is used for organizing similar data into groups. 
the main purpose of grouping the records of a table based on particular columns is to perform calculations on these groups
typically used with aggregate functions such as SUM(), COUNT(), AVG(), MAX(), or MIN() etc.

here in the following code i have used sum to function to get the total of product price 
````
SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname
````

<img width="608" alt="Screenshot 2024-02-29 at 9 46 45 PM" src="https://github.com/yashmanje/SQLproject/assets/151402001/1e19ea01-cc30-4dd0-956a-158bf31607a9">

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


DESCRIBE Table 
````
desc Student
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/4275588a-ceb8-4dec-bd95-65746c76147a)

````
select * from Student
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/77ce1d4c-b5f1-440c-bb98-6cdcaa5cac83)


<h1>Operators </h1>

In SQL we have different operators we can use to perform query's 

<h3>AND</h3> 

The AND operator is used to filter records based on more than one condition

using student table i have implemented AND operator to get results of those students who scored more than 70 and belong to city hyderabad 

````
select * from Student
where marks >70 and city='hyderabad'
````

<img width="826" alt="Screenshot 2024-03-06 at 1 11 38 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/450d6abf-bd30-4003-9899-1e742e0f3789">

EX-2 

````
select * from Student
where grade='A' and LastName ='reddy'
order by marks DESC
````

<img width="732" alt="Screenshot 2024-03-06 at 1 15 47 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/e0e749de-de9a-42d5-9dcb-7838b76d2cde">


<H3>OR </H3>

The OR operator is used to filter records based on more than one condition

using student table i have implemented OR operator to get results of those students who got B grade  and city is hyderabad

````
select * from Student  
where grade="B" or city ='hyderabad'
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/63c94be5-0cea-4fd8-8f7a-75041a58b133)


EX-2

````
select * from Student  
where marks>=50  or LastName ='shetty'

````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/faddc29d-5b5a-45c2-84a0-af9a663534ce)

<H3>Between operator </H3>

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

````
select * from Student
where marks BETWEEN 60 and 90 
````
<img width="732" alt="Screenshot 2024-03-06 at 1 33 41 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/df9641a1-c846-4a31-a217-a8a4ace5376e">


<h3>IN operator </h3>

The IN operator allows you to specify multiple values in a WHERE clause.

````
select * from Student
where city in ('delhi','pune')
````
![image](https://github.com/yashmanje/SQLproject/assets/151402001/ca8db7fa-189c-4581-be08-361d75ef0290)

<h3>NOT Operator </h3>

The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.

````
select * from Student
where city not in ('delhi','pune')
````

![image](https://github.com/yashmanje/SQLproject/assets/151402001/842aff2e-7a9c-4728-a98c-bb606796a754)





















