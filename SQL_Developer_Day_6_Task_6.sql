
drop table if exists Customers
CREATE TABLE Customers 
(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
country VARCHAR(50),
loyalty_points INT
)

INSERT INTO Customers(customer_id,customer_name,country,loyalty_points) VALUES
(1, 'Aman', 'India', 120),
(2, 'Neha', 'India', 80),
(3, 'John', 'USA', 200),
(4, 'Sara', 'UK', 150),
(5, 'Ali', 'UAE', 60),
(6, 'Priya', 'India', 95),
(7, 'David', 'USA', 180),
(8, 'Rohan', 'India', 110),
(9, 'Meera', 'India', 130),
(10, 'Sophia', 'UK', 210),
(11, 'Ahmed', 'UAE', 70),
(12, 'Olivia', 'Canada', 160),
(13, 'Ethan', 'USA', 140),
(14, 'Aarav', 'India', 105),
(15, 'Isabella', 'UK', 190),
(16, 'Karan', 'India', 75),
(17, 'Mia', 'Canada', 115),
(18, 'Hassan', 'UAE', 65),
(19, 'Lucas', 'USA', 170),
(20, 'Arjun', 'India', 135),
(21, 'Emma', 'UK', 145),
(22, 'Zara', 'UAE', 90),
(23, 'Noah', 'Canada', 200),
(24, 'Krishna', 'India', 125),
(25, 'Charlotte', 'USA', 155),
(26, 'Manish', 'India', 100),
(27, 'Amelia', 'UK', 185),
(28, 'Kabir', 'India', 95),
(29, 'Ayesha', 'UAE', 85),
(30, 'Benjamin', 'Canada', 175),
(31, 'Harsh', 'India', 120),
(32, 'Grace', 'UK', 165),
(33, 'Varun', 'India', 140),
(34, 'Ella', 'USA', 190),
(35, 'Nisha', 'India', 115),
(36, 'Daniel', 'Canada', 155),
(37, 'Saanvi', 'India', 130),
(38, 'Henry', 'USA', 145),
(39, 'Riya', 'India', 105),
(40, 'Chloe', 'UK', 175),
(41, 'Tariq', 'UAE', 95),
(42, 'Liam', 'USA', 210),
(43, 'Ishita', 'India', 150),
(44, 'William', 'Canada', 165),
(45, 'Pooja', 'India', 90),
(46, 'James', 'UK', 200),
(47, 'Aditya', 'India', 135),
(48, 'Sophie', 'USA', 180),
(49, 'Dev', 'India', 125),
(50, 'Harper', 'Canada', 170);


drop table if exists Products_table
CREATE TABLE Products_table (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products_table(product_id,product_name,category,price) VALUES
(101, 'Laptop', 'Electronics', 80000),
(102, 'Mobile', 'Electronics', 40000),
(103, 'Shoes', 'Fashion', 3000),
(104, 'Watch', 'Fashion', 5000),
(105, 'Book', 'Stationery', 500),
(106, 'Tablet', 'Electronics', 35000),
(107, 'Headphones', 'Electronics', 4000),
(108, 'Smart TV', 'Electronics', 60000),
(109, 'Bluetooth Speaker', 'Electronics', 7000),
(110, 'Camera', 'Electronics', 55000),
(111, 'T-Shirt', 'Fashion', 1200),
(112, 'Jeans', 'Fashion', 2500),
(113, 'Jacket', 'Fashion', 4500),
(114, 'Saree', 'Fashion', 3000),
(115, 'Handbag', 'Fashion', 3500),
(116, 'Sunglasses', 'Fashion', 2000),
(117, 'Wallet', 'Fashion', 1500),
(118, 'Cap', 'Fashion', 800),
(119, 'Scarf', 'Fashion', 1000),
(120, 'Belt', 'Fashion', 900),
(121, 'Notebook', 'Stationery', 200),
(122, 'Pen Set', 'Stationery', 150),
(123, 'Marker', 'Stationery', 100),
(124, 'Diary', 'Stationery', 350),
(125, 'Calculator', 'Stationery', 1200),
(126, 'Stapler', 'Stationery', 250),
(127, 'File Folder', 'Stationery', 180),
(128, 'Printer Paper', 'Stationery', 400),
(129, 'Highlighter', 'Stationery', 90),
(130, 'Glue Stick', 'Stationery', 75),
(131, 'Microwave', 'Home Appliances', 15000),
(132, 'Refrigerator', 'Home Appliances', 45000),
(133, 'Washing Machine', 'Home Appliances', 30000),
(134, 'Air Conditioner', 'Home Appliances', 40000),
(135, 'Vacuum Cleaner', 'Home Appliances', 12000),
(136, 'Mixer Grinder', 'Home Appliances', 7000),
(137, 'Toaster', 'Home Appliances', 2500),
(138, 'Coffee Maker', 'Home Appliances', 8000),
(139, 'Iron', 'Home Appliances', 3000),
(140, 'Water Purifier', 'Home Appliances', 15000),
(141, 'Cricket Bat', 'Sports', 5000),
(142, 'Football', 'Sports', 1500),
(143, 'Tennis Racket', 'Sports', 3500),
(144, 'Badminton Racket', 'Sports', 2000),
(145, 'Basketball', 'Sports', 1800),
(146, 'Yoga Mat', 'Sports', 1000),
(147, 'Skipping Rope', 'Sports', 600),
(148, 'Gym Gloves', 'Sports', 900),
(149, 'Dumbbells Set', 'Sports', 4000),
(150, 'Sports Shoes', 'Sports', 3500);


drop table if exists Orders_table 
CREATE TABLE Orders_table (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products_table(product_id)
);

INSERT INTO Orders_table(order_id,customer_id,product_id,order_date,quantity) VALUES
(1001, 1, 101, '2025-01-15', 1),
(1002, 2, 103, '2025-01-20', 2),
(1003, 1, 104, '2025-02-10', 1),
(1004, 3, 102, '2025-02-15', 1),
(1005, 4, 105, '2025-02-20', 5),
(1006, 5, 103, '2025-03-01', 1),
(1007, 3, 101, '2025-03-05', 1),
(1008, 6, 106, '2025-01-18', 1),
(1009, 7, 111, '2025-01-22', 3),
(1010, 8, 107, '2025-01-25', 2),
(1011, 9, 121, '2025-01-28', 5),
(1012, 10, 112, '2025-02-02', 2),
(1013, 11, 135, '2025-02-04', 1),
(1014, 12, 131, '2025-02-07', 1),
(1015, 13, 142, '2025-02-12', 2),
(1016, 14, 109, '2025-02-14', 1),
(1017, 15, 119, '2025-02-18', 2),
(1018, 16, 138, '2025-02-22', 1),
(1019, 17, 125, '2025-02-25', 3),
(1020, 18, 108, '2025-02-28', 1),
(1021, 19, 144, '2025-03-02', 2),
(1022, 20, 120, '2025-03-06', 1),
(1023, 21, 134, '2025-03-09', 1),
(1024, 22, 141, '2025-03-12', 2),
(1025, 23, 127, '2025-03-15', 4),
(1026, 24, 145, '2025-03-17', 1),
(1027, 25, 118, '2025-03-20', 2),
(1028, 26, 132, '2025-03-23', 1),
(1029, 27, 147, '2025-03-25', 2),
(1030, 28, 115, '2025-03-28', 3),
(1031, 29, 136, '2025-04-01', 1),
(1032, 30, 110, '2025-04-03', 1),
(1033, 31, 148, '2025-04-06', 2),
(1034, 32, 117, '2025-04-08', 2),
(1035, 33, 133, '2025-04-11', 1),
(1036, 34, 149, '2025-04-14', 3),
(1037, 35, 114, '2025-04-16', 1),
(1038, 36, 150, '2025-04-19', 2),
(1039, 37, 137, '2025-04-21', 1),
(1040, 38, 113, '2025-04-24', 2),
(1041, 39, 140, '2025-04-26', 1),
(1042, 40, 146, '2025-04-29', 2),
(1043, 41, 124, '2025-05-02', 3),
(1044, 42, 139, '2025-05-05', 1),
(1045, 43, 122, '2025-05-07', 4),
(1046, 44, 143, '2025-05-10', 2),
(1047, 45, 116, '2025-05-13', 1),
(1048, 46, 128, '2025-05-15', 3),
(1049, 47, 129, '2025-05-18', 2),
(1050, 48, 123, '2025-05-20', 5),
(1051, 49, 126, '2025-05-23', 1),
(1052, 50, 130, '2025-05-25', 4),
(1053, 2, 101, '2025-05-28', 1),
(1054, 5, 102, '2025-05-30', 1),
(1055, 10, 103, '2025-06-02', 2),
(1056, 15, 104, '2025-06-04', 1),
(1057, 20, 105, '2025-06-06', 3),
(1058, 25, 106, '2025-06-08', 1),
(1059, 30, 107, '2025-06-10', 2),
(1060, 35, 108, '2025-06-12', 1),
(1061, 40, 109, '2025-06-14', 1),
(1062, 45, 110, '2025-06-16', 1),
(1063, 50, 111, '2025-06-18', 2),
(1064, 12, 112, '2025-06-20', 1),
(1065, 18, 113, '2025-06-21', 2),
(1066, 24, 114, '2025-06-22', 1),
(1067, 29, 115, '2025-06-23', 1),
(1068, 36, 116, '2025-06-24', 1),
(1069, 42, 117, '2025-06-25', 1),
(1070, 48, 118, '2025-06-26', 2),
(1071, 7, 119, '2025-06-27', 1),
(1072, 14, 120, '2025-06-28', 2),
(1073, 21, 121, '2025-06-29', 3),
(1074, 28, 122, '2025-06-30', 1),
(1075, 34, 123, '2025-06-30', 2),
(1076, 41, 124, '2025-06-30', 1),
(1077, 47, 125, '2025-06-30', 2),
(1078, 9, 126, '2025-06-30', 1),
(1079, 16, 127, '2025-06-30', 3),
(1080, 22, 128, '2025-06-30', 1),
(1081, 33, 129, '2025-06-30', 2),
(1082, 39, 130, '2025-06-30', 1),
(1083, 46, 131, '2025-06-30', 1),
(1084, 11, 132, '2025-06-30', 2),
(1085, 17, 133, '2025-06-30', 1),
(1086, 23, 134, '2025-06-30', 1),
(1087, 31, 135, '2025-06-30', 1),
(1088, 27, 136, '2025-06-30', 2),
(1089, 13, 137, '2025-06-30', 1),
(1090, 19, 138, '2025-06-30', 1),
(1091, 25, 139, '2025-06-30', 1),
(1092, 32, 140, '2025-06-30', 2),
(1093, 38, 141, '2025-06-30', 2),
(1094, 44, 142, '2025-06-30', 1),
(1095, 49, 143, '2025-06-30', 1),
(1096, 8, 144, '2025-06-30', 1),
(1097, 26, 145, '2025-06-30', 1),
(1098, 37, 146, '2025-06-30', 2),
(1099, 43, 147, '2025-06-30', 1),
(1100, 6, 148, '2025-06-30', 2);

select*from Customers
select*from Orders_table
select*from Products_table

--1.Find the customer(s) who has loyalty points greater than the average loyalty points of all customers.
select
* 
from Customers
where loyalty_points>(select avg(loyalty_points) from Customers)

--Find the most expensive product purchased by each customer.
select
customer_name,
product_name,
totaL_price,
rank_sales
from 
(select
c.customer_name,
p.product_name,
sum(o.quantity*p.price) as totaL_price,
dense_rank() over(partition by c.customer_name order by sum(o.quantity*p.price)desc) as rank_sales
from Customers as c
join
Orders_table as o
on
c.customer_id=o.customer_id
join
Products_table as p
on
o.product_id=p.product_id
group by c.customer_name,p.product_name
) as t1
where rank_sales=1

--Find all customers who have purchased products from the Fashion category.



select
customer_name
from Customers
where customer_id in (select
                      o.customer_id
                      from Orders_table as o
                      join
                      Products_table as p
                      on
                      o.product_id=p.product_id
                      where p.category='Fashion'
                      )

--Find all customers who have purchased at least one Electronics product.
select
customer_name
from Customers as c
where exists
(select
1
from Orders_table as o
join
Products_table as p
on
o.product_id=p.product_id
where c.customer_id=o.customer_id
and p.category='Electronics'
)

--Find the customer(s) with the highest loyalty points.

select
customer_id,
customer_name,
country,
loyalty_points,
rank_points
from
(select
customer_id,
customer_name,
country,
loyalty_points,
dense_rank() over(order by loyalty_points desc) as rank_points
from Customers
) as t1
where rank_points=1







