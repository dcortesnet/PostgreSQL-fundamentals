CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE
);

CREATE TABLE invoice_items (
    item_id SERIAL PRIMARY KEY,
    invoice_id INT,
    item_name VARCHAR(255),
    CONSTRAINT fk_invoice_id FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id) ON DELETE CASCADE
);

INSERT INTO invoices (invoice_date) VALUES ('2024-02-13');
INSERT INTO invoice_items (invoice_id, item_name) VALUES
(1, 'Producto A'),
(1, 'Producto B'),
(1, 'Producto C');
