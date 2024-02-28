CREATE table orders
(
  OrderID int primary key AUTO_INCREMENT,
  OrderDate Datetime,
  CustomerID int,
  ProductID int
  
  
)


SELECT * from orders

INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),1,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),2,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),3,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),4,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),5,5)
INSERT into orders (OrderDate ,CustomerID ,ProductID )values (now(),6,5)



SELECT o.OrderID,o.OrderDate,
from orders o 
inner join product as p on o.ProductID =p.id 
inner join Customer as c on o.CustomerID =c.id 

SELECT * from Orders
inner JOIN Products on Orders.ProductID=Products.ID  