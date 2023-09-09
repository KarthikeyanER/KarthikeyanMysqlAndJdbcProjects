create database MysqlGradedProject;
create database EcommerceProject;
use EcommerceProject;
create table supplier(
SUPP_ID INT Primary key,
SUPP_NAME varchar(50)
NOT NULL,
SUPP_CITY varchar(50)
NOT NULL,
SUPP_PHONE varchar(50)
NOT NULL);
drop table supplier;
create table customer(
CUS_ID INT Primary key,
CUS_NAME VARCHAR(20)
NOT NULL,
CUS_PHONE VARCHAR(10)
NOT NULL,
CUS_CITY VARCHAR(30)
NOT NULL,
CUS_GENDER CHAR
);

create table category(
CAT_ID INT Primary key,
CAT_NAME VARCHAR(20)
NOT NULL
);

create table product(
PRO_ID INT Primary key,
PRO_NAME VARCHAR(20)
NOT NULL
DEFAULT
"Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT ,
foreign key(CAT_ID) references category(cat_id) 
);

create table supplier_pricing
(
PRICING_ID INT Primary key,
PRO_ID INT ,
SUPP_ID INT ,
SUPP_PRICE INT
DEFAULT 0,
foreign key(pro_id) references product(pro_id),
foreign key(supp_id) references supplier(supp_id)
);

create table ORDERS
(
ORD_ID INT Primary key,
ORD_AMOUNT INT
NOT NULL,
ORD_DATE DATE
NOT NULL,
CUS_ID INT ,
PRICING_ID INT ,
foreign key (cus_id) references customer(cus_id),
foreign key (pricing_id) references supplier_pricing(pricing_id)
);

CREATE TABLE RATING(
RAT_ID INT PRIMARY KEY,
ORD_ID INT ,
RAT_RATSTARS INT
NOT NULL,
FOREIGN KEY (ord_id) references orders(ord_id)

);

-- Insert data into the 'supplier' table
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE)
VALUES
    (1, 'Rajesh Retails', 'Delhi', '1234567890'),
    (2, 'Appario Ltd.', 'Mumbai', '2589631470'),
    (3, 'Knome products', 'Bangalore', '9785462315'),
    (4, 'Bansal Retails', 'Kochi', '8975463285'),
    (5, 'Mittal Ltd.', 'Lucknow', '7898456532');
    
    
    -- Insert data into the 'customer' table
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES
    (1, 'AAKASH', '9999999999', 'DELHI', 'M'),
    (2, 'AMAN', '9785463215', 'NOIDA', 'M'),
    (3, 'NEHA', '9999999999', 'MUMBAI', 'F'),
    (4, 'MEGHA', '9994562399', 'KOLKATA', 'F'),
    (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');
-- Insert data into the 'category' table
INSERT INTO category (CAT_ID, CAT_NAME)
VALUES
    (1, 'BOOKS'),
    (2, 'GAMES'),
    (3, 'GROCERIES'),
    (4, 'ELECTRONICS'),
    (5, 'CLOTHES');
    
    -- Insert data into the 'product' table
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES
    (1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2),
    (2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5),
    (3, 'ROG LAPTOP', 'Windows 10 with 15-inch screen, i7 processor, 1TB SSD', 4),
    (4, 'OATS', 'Highly Nutritious from Nestle', 3),
    (5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1),
    (6, 'MILK', '1L Toned Milk', 3),
    (7, 'Boat Earphones', '1.5-Meter long Dolby Atmos', 4),
    (8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5),
    (9, 'Project IGI', 'Compatible with Windows 7 and above', 2),
    (10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5),
    (11, 'Rich Dad Poor Dad', 'Written by Robert Kiyosaki', 1),
    (12, 'Train Your Brain', 'By Shireen Stephen', 1);
    
    -- Insert data into the 'supplier_pricing' table
INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES
    (1, 1, 2, 1500),
    (2, 3, 5, 30000),
    (3, 5, 1, 3000),
    (4, 2, 3, 2500),
    (5, 4, 1, 1000),
    (6, 12, 2, 780),
    (7, 12, 4, 789),
    (8, 3, 1, 31000),
    (9, 1, 5, 1450),
    (10, 4, 2, 999),
    (11, 7, 3, 549),
    (12, 7, 4, 529),
    (13, 6, 2, 105),
    (14, 6, 1, 99),
    (15, 2, 5, 2999),
    (16, 5, 2, 2999);
    
    
    -- Insert data into the 'orders' table
INSERT INTO orders (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES
    (101, 1500, '2021-10-06', 2, 1),
    (102, 1000, '2021-10-12', 3, 5),
    (103, 30000, '2021-09-16', 5, 2),
    (104, 1500, '2021-10-05', 1, 1),
    (105, 3000, '2021-08-16', 4, 3),
    (106, 1450, '2021-08-18', 1, 9),
    (107, 789, '2021-09-01', 3, 7),
    (108, 780, '2021-09-07', 5, 6),
    (109, 3000, '2021-09-10', 5, 3),
    (110, 2500, '2021-09-10', 2, 4),
    (111, 1000, '2021-09-15', 4, 5),
    (112, 789, '2021-09-16', 4, 7),
    (113, 31000, '2021-09-16', 1, 8),
    (114, 1000, '2021-09-16', 3, 5),
    (115, 3000, '2021-09-16', 5, 3),
    (116, 99, '2021-09-17', 2, 14);
    
    -- Insert data into the 'rating' table
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES
    (1, 101, 4),
    (2, 102, 3),
    (3, 103, 1),
    (4, 104, 2),
    (5, 105, 4),
    (6, 106, 3),
    (7, 107, 4),
    (8, 108, 4),
    (9, 109, 3),
    (10, 110, 5),
    (11, 111, 3),
    (12, 112, 4),
    (13, 113, 2),
    (14, 114, 1),
    (15, 115, 1),
    (16, 116, 0);
    
    
    show tables;
    select * from customer;
    
    select count(cus_id),cus_gender from customer
    where cus_id in (select cus_id from orders where ord_amount>=3000)
    group by cus_gender  ;
    
    
    SELECT CUS_GENDER, COUNT(CUS_ID) AS TotalCustomers
FROM customer
WHERE CUS_ID IN (
    SELECT DISTINCT CUS_ID
    FROM `orders`
    WHERE ORD_AMOUNT >= 3000
)
GROUP BY CUS_GENDER;
    
    SELECT o.ORD_ID, p.PRO_NAME
FROM `orders` o
JOIN supplier_pricing sp ON o.PRICING_ID = sp.PRICING_ID
JOIN product p ON sp.PRO_ID = p.PRO_ID
WHERE o.CUS_ID = 2;


select o.*,p.pro_name from product p, 
supplier_pricing s,orders o,customer c
 where p.pro_id=s.pro_id and s.pricing_id=o.pricing_id 
 and c.cus_id=2 and o.cus_id=c.cus_id;
 
 select * from supplier s , supplier_pricing sp where s.supp_id=sp.supp_id and 
 (select count(supp_id) from supplier_pricing group by supp_id)>1;
 