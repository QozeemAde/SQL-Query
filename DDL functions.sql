CREATE DATABASE IF NOT EXISTS customers;
USE customers;
CREATE TABLE customer_details (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
);
INSERT INTO customer_details VALUES ('Qozeem', 'Omoya', 25);


SELECT 
    *
FROM
    customer_details;

DROP DATABASE Qozeem;
USE customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);
 
CREATE TABLE Sales (
    purchase_number INT,
    date_of_purchase DATE,
    customer_id INT,
    item_code NUMERIC
);
 
 ALTER TABLE Sales
 ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
 

DROP TABLE customer_details;
DROP TABLE items;

CREATE TABLE Companies (
    company_id CHAR(3),
    company_name VARCHAR(255),
    headquarters_phone_number VARCHAR(15),
    PRIMARY KEY (company_id)
);
 ALTER TABLE Companies
 ADD UNIQUE KEY Companies(headquarters_phone_number);

/*CREATE TABLE items (item varchar (255), 
unit_price DECIMAL(10, 2),
company_id CHAR(3));
DROP TABLE Companies;
ALTER TABLE items
 ADD FOREIGN KEY (company_id) REFERENCES Companies(company_id); */
 
ALTER TABLE customers
ADD COLUMN Gender ENUM('M', 'F') AFTER last_name;
 
INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)

VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

SELECT 
    *
FROM
    customers
