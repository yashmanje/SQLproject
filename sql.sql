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



