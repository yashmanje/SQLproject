<h1> SQLproject</h1>
In this project i have created a sample database to learn and practise sql query's

<h2>INTRODUCTION</h2> 
# Tools used  mysql community server and debeaver. 


<h1>1</h1> Create a database 

for creating a database in sql we use create command 
Syntax ----- create database customer,

for using the correspondind database we use 'USE' command 
ex --USE customer 

<h1>2</h1> creating table in database
 
create TABLE Customer
(
id int PRIMARY key,
Firstname VARCHAR(50),
Lastname varchar(50),
Age int,
City VARCHAR(50)
)

SQL offers different datatypes 
in this table i have used primary key with integer  as datatype
and for variable i have Varchar datatype and set the space to 50 

<img width="883" alt="Screenshot 2024-02-25 at 7 53 50 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/51efe4b3-176d-4682-a749-b8eb2190b073">


<h1>2</h1> <H1> select command </H1>

for viewing a table we use select command 

select * from Customer will display all the contents in the table.


<h1>3</h1>  <h1> insert command</h1>

insert command in sql is used for inserting records into the table 

EX-

insert into Customer(id,firstname,lastname,Age,City)values(1,'Yashwanth','Reddy',33,'hyderabad');
insert into Customer(id,firstname,lastname,Age,City)values(2,'pooja','shetty',23,'delhi')
insert into Customer(id,firstname,lastname,Age,City)values(3,'shiva','Reddy',28,'hyderabad')
insert into Customer(id,firstname,lastname,Age,City)values(4,'ram','Reddy',13,'mumbai')
insert into Customer(id,firstname,lastname,Age,City)values(5,'raj','kumar',21,'pune')
insert into Customer(id,firstname,lastname,Age,City)values(6,'shareef','murtuza',26,'chennai');

<img width="801" alt="Screenshot 2024-02-25 at 8 31 56 AM" src="https://github.com/yashmanje/SQLproject/assets/151402001/6db3ef79-1998-40d7-afc4-139f937c7b10">








