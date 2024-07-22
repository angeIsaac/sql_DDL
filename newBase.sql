-- Active: 1713352804980@@127.0.0.1@3306@command

CREATE TABLE customer 
 (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_tel INT
 ); 

  CREATE TABLE product 
 (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    price INT
 ); 

CREATE TABLE orders 
(
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity INT,
    Total_amount INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (product_id),
    CONSTRAINT prim_KeyOrder PRIMARY KEY (customer_id, product_id)
);

SHOW KEYS FROM orders WHERE Key_name = 'FOREIGN KEY'; 

SHOW INDEX FROM orders;

ALTER TABLE product ADD COLUMN category VARCHAR(20);

ALTER TABLE orders ADD COLUMN orderDate date ;

ALTER TABLE orders 
AlTER COLUMN orderDate SET DEFAULT (SYSDATE());


SHOW TABLE orders; 