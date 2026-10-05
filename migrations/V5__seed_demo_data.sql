-- Gelinta Xogta Tijaabada ah (Seed Demo Data)

-- 1. Macaamiisha Tijaabada ah
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Axmed', 'Cali', 'axmed.cali@email.com', '+252615111222'),
('Fadumo', 'Maxamed', 'fadumo.maxamed@email.com', '+252615333444'),
('Maxamed', 'Yuusuf', 'maxamed.yuusuf@email.com', '+252615555666');

-- 2. Alaabta Tijaabada ah
INSERT INTO products (product_name, description, price, stock_quantity) VALUES
('Laptop Dell Latitude', 'Core i5, 8GB RAM, 256GB SSD', 450.00, 15),
('Wireless Mouse', 'Ergonomic optical mouse', 15.50, 50),
('Mechanical Keyboard', 'RGB backlit gaming keyboard', 45.00, 30);

-- 3. Dalabaadka Tijaabada ah
INSERT INTO orders (customer_id, status, total_amount) VALUES
(1, 'Completed', 465.50),
(2, 'Pending', 45.00);

-- 4. Faahfaahinta Dalabaadka
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 450.00),
(1, 2, 1, 15.50),
(2, 3, 1, 45.00);
