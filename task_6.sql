-- task_6.sql
-- Insert multiple rows into the customer table with exact values

-- 1. Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- 2. Create the customer table if it doesn't exist
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(150) NOT NULL
);

-- 3. Clear old rows (optional, to avoid duplicate key errors)
TRUNCATE TABLE customer;

-- 4. Insert exact rows
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES 
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');

