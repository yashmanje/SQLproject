CREATE table orders
(
  OrderID int primary key AUTO_INCREMENT,
  OrderDate Datetime,
  CustomerID int,
  ProductID int
  
  
)


SELECT * from orders

select * from Customer

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),1,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),2,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),3,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),4,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),5,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),6,5)

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),6,5)


-- 
this us used for inner join 

SELECT *
from Orders
inner JOIN Product on Orders.ProductID=Product.ID
inner JOIN Product on Orders.ProductID=Product.ID



SELECT o.OrderDate,c.Firstname,c.Lastname,c.Age,c.City,p.prodcut_name,p.product_price  
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID



-- group by clause 

performing sum of product price 

SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname



-- using order by clause i have sorted the data in desc order 

SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname 
ORDER by c.Firstname DESC 



-- using order by clause i have sorted the data in asc order 

SELECT c.Firstname,sum(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname 
ORDER by c.Firstname ASC 



-- used avg function to get average amount spend by each person 

SELECT c.Firstname,AVG(p.product_price) as Total
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname  


-- got the avg price spend by city 

SELECT c.City ,AVG(p.product_price) as Total
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.City 


-- using count function 

SELECT c.Firstname,COUNT(p.prodcut_name)
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname



-- using having clause 

SELECT c.Firstname,p.prodcut_name ,sum(p.product_price),COUNT(p.product_price) 
from Orders as o
inner JOIN Product as p on o.ProductID=p.ID
inner join Customer as c on o.CustomerID=c.ID
GROUP by c.Firstname, p.prodcut_name 
HAVING count(p.prodcut_name)>=2



-- using DESC

desc orders



-- created a new database Student_records for further process 

create table Student
(
RollNo int primary key not null,
FirstName varchar(50),
LastName varchar(50)
)

select * from Student 

alter table Student 
add column city varchar(50)



-- inserted following data into student table 

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



-- using AND operator 
select * from Student
where marks >70 and city='hyderabad'

--ex-2 
select * from Student
where grade='A' and LastName ='reddy'
order by marks DESC 



--- OR operator 

select * from Student  
where marks>=50  or LastName ='shetty'

ex-2 

select * from Student  
where grade="B" or city ='hyderabad'



-- Between operator 

select * from Student
where marks BETWEEN 60 and 90 



-- IN operator 

select * from Student
where city  in ('delhi','pune')


-- not operator 
select * from Student
where city not in ('delhi','pune')


-- Limit clause 

select * from student 
where marks>=50 
order by marks desc 
limit 5

-- offset 

select * from student 
order by marks desc 
limit 5 offset 4

-- Delete commmamd 

DELETE from Student 
where marks<=40  

-- truncate table 

truncate  TABLE student;

-- drop table column 

alter table Student 
drop column city 

-- drop table 

DROP TABLE student

-- drop database 

DROP database  student_records 


-- creating a new database college 

create table student 
(
ID int primary key, 
Name varchar (50)
)

-- inserting new data into the database college 

insert into student  (ID,Name )

values 
(101,'Jack'),
(102,'Smith'),
(103,'Jennifer '),
(104,'kendra');

-- creating a new database course 

create table Course
(
ID int primary key,
Course varchar(50)

)

-- inserting new data into the database course 

insert into Course (ID,Course)
values 
(102,'English'),
(104,'Math'),
(105,'Science'),
(107,'Computer Science')


--- inner join 

select * from student s 
inner join Course c 
on 
s.ID =c.ID 

--- left join 

select * from student s 
left  join Course c 
on 
s.ID =c.ID 

--- Right join 

select * from student s 
Right  join Course c 
on 
s.ID =c.ID 

--- full join 

select * from student s 
left  join Course c 
on 
s.ID =c.ID 

union 

select * from student s 
right  join Course c 
on 
s.ID =c.ID 

--- cross join 

select * from student s 
cross join Course c 
on 
s.ID =c.ID 

-- left exclusive join 

select * from student s 
left join Course c 
on 
s.ID =c.ID 
where c.id is null 

-- right exculsive join 

select * from student s 
right join Course c 
on 
s.ID =c.ID 
where s.id is null 


-- self join 

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


--- Union operator 

select name  from employee   
union 
select name  from employee 

-- union all  operator 
select name  from employee   
union all 
select name  from employee 

-- 
sub queries 

for subqueries i gone create new database and table 

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

-- using sub queries i have calculated those students who got more marks than class avg 

select FirstName, marks 
from Student 
where marks >(select avg (marks ) from student )

-- ex-2 

using sub query i have got the names of students wo have even rollno 

select FirstName 
from Student 
where rollno in 
(select RollNo  from Student where RollNo %2=0);


-- Views 

create view view1 As

select RollNo ,FirstName ,marks  from Student  

select avg(marks) 
from view1
 






