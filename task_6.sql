-- task_6.sql
-- Insert multiple rows into the customers table safely

USE alx_book_store;

INSERT INTO customers (customer_name, email, address)
VALUES 
    ('Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
    ('Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
    ('Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');
