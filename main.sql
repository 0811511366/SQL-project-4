DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
sale_id INT PRIMARY KEY,
customer_name VARCHAR(50),
product VARCHER(50),
quantity INTEGER,
price DECIMAL(10,2),
sales_date DATE
);

INSERT INTO sales(sale_id,customer_name,product,quantity,price,sales_date)
VALUES
(1,'Alice','Laptop',1,1200,'2024-03-01'),
(2,'Bob','Smartphone',2,800,'2024-03-02'),
(3,'Charlie','Headphone',3,100,'2024-03-02'),
(4,'Alice','Mouse',2,50,'2024-03-04'),
(5,'Bob','Laptop',1,1200,'2024-03-05'),
(6,'Charlie','Tablet',1,600,'2024-03-06');
SELECT * FROM sales ;

SELECT * FROM Sales ORDER BY sales_date DESC LIMIT 3;

SELECT product, SUM(price * quantity) AS Totalsales
FROM sales
GROUP BY product;