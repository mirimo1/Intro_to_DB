-- Active: 1755345889487@@127.0.0.1@3306@alx_book_store
-- Active: 1755345889487@@127.0.0.1@3306@alx_book_store
-- Create database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Table: Authors
DROP TABLE IF EXISTS Authors;
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
);

-- Table: Books
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Table: Customers
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

-- Table: Orders
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Table: Order_Details
DROP TABLE IF EXISTS Order_Details;
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
