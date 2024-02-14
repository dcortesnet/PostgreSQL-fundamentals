CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    customer_id INT,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (name, email) VALUES
    ('Juan', 'juan@example.com');

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
    (1, '2024-02-14', 150.00),
    (1, '2024-02-15', 200.00),
    (1, '2024-02-16', 100.00);
