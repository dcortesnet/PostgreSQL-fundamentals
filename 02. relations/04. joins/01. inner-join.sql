CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO products (name, price) VALUES
('Product A', 10.99),
('Product B', 15.99),
('Product C', 20.49);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT,
    quantity INT,
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sales (product_id, quantity) VALUES
(1, 2),
(2, 1),
(1, 3);

SELECT sales.sale_id, products.product_id, products.name as name_product, sales.quantity, products.price
FROM sales
INNER JOIN products ON sales.product_id = products.product_id;
