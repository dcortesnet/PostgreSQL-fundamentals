CREATE TABLE users (
    id_user SERIAL PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO users (name, phone) VALUES
('User A', '555-1234'),
('User B', '555-5678'),
('User C', '555-9012');

CREATE TABLE gifts (
    id_gift SERIAL PRIMARY KEY,
    id_user INT,
    product VARCHAR(100),
    quantity INT,
    CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES users(id_user)
);

INSERT INTO gifts (id_user, product, quantity) VALUES
(1, 'Product X', 2),
(2, 'Product Y', 1),
(1, 'Product Z', 3);

SELECT *
FROM users
LEFT JOIN gifts ON users.id_user = gifts.id_user;