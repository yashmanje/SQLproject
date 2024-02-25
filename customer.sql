create TABLE Customer
(
id int PRIMARY key,
Firstname VARCHAR(50),
Lastname varchar(50),
Age int,
City VARCHAR(50)
)

SELECT * from Customer 

insert into Customer(id,firstname,lastname,Age,City)values(1,'Yashwanth','Reddy',33,'hyderabad');
insert into Customer(id,firstname,lastname,Age,City)values(2,'pooja','shetty',23,'delhi')
insert into Customer(id,firstname,lastname,Age,City)values(3,'shiva','Reddy',28,'hyderabad')
insert into Customer(id,firstname,lastname,Age,City)values(4,'ram','Reddy',13,'mumbai')
insert into Customer(id,firstname,lastname,Age,City)values(5,'raj','kumar',21,'pune')
insert into Customer(id,firstname,lastname,Age,City)values(6,'shareef','murtuza',26,'chennai');