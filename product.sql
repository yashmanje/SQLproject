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

ALTER TABLE product 
modify  product_price float(6,2)

UPDATE product
SET product_price =199.89
WHERE id = 5;