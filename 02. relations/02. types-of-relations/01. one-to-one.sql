CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE capitals (
    capital_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country_id INT UNIQUE REFERENCES countries(country_id)
);

INSERT INTO countries (name)
VALUES ('United States'),
       ('United Kingdom'),
       ('France');

INSERT INTO capitals (name, country_id)
VALUES ('Washington D.C.', 1), 
       ('London', 2),            
       ('Paris', 3);
