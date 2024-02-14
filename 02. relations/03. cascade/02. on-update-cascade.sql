CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_name) VALUES ('Ventas');

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(department_id) ON UPDATE CASCADE
);

INSERT INTO employees (name, department_id) VALUES ('Juan', 1);
INSERT INTO employees (name, department_id) VALUES ('María', 1);

UPDATE departments SET department_id = 100 WHERE department_id = 1;

SELECT * FROM employees;