SELECT * FROM employees;

SELECT first_name, age
FROM employees;

SELECT * FROM employees WHERE age > 30;

SELECT * FROM employees WHERE age > 30 AND is_active = true;

SELECT * FROM employees WHERE age > 30 OR is_active = true;

SELECT *
FROM employees
WHERE (age > 30 AND is_active = true) OR (hire_date < '2022-01-01');

SELECT *
FROM employees
ORDER BY age DESC;

SELECT age, COUNT(*)
FROM employees
GROUP BY age;

SELECT first_name, last_name, AVG(age) AS average_age
FROM employees
GROUP BY first_name, last_name
HAVING AVG(age) > 35;