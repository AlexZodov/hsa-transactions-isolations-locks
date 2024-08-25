CREATE TABLE balances (
                         id INT PRIMARY KEY,
                         user_id INT,
                         balance INT
);
INSERT INTO balances (id, user_id, balance) VALUES (1, 777, 1000);

CREATE TABLE orders (
                        id SERIAL PRIMARY KEY,
                        customer_id INT,
                        amount DECIMAL(10, 2)
);
INSERT INTO orders (customer_id, amount) VALUES
                                             (1, 100.00),
                                             (1, 150.00),
                                             (2, 200.00);