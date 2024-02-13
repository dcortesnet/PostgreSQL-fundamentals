CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    publication_year INTEGER,
    author_id INTEGER REFERENCES authors(author_id)
);


INSERT INTO authors (first_name, last_name, email) 
VALUES 
('John', 'Doe', 'john.doe@example.com'), 
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Johnson', 'michael.johnson@example.com');

INSERT INTO books (title, publication_year, author_id) 
VALUES 
('Introduction to PostgreSQL', 2020, 1), 
('Advanced SQL Techniques', 2018, 2),
('Database Design Fundamentals', 2019, 3);


