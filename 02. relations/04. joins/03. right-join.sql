CREATE TABLE areas (
    id_area SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO areas (name) VALUES
('Sales'),
('Marketing'),
('Human Resources');

CREATE TABLE interns (
    id_intern SERIAL PRIMARY KEY,
    name VARCHAR(100),
    id_area INT,
    CONSTRAINT fk_area_id FOREIGN KEY (id_area) REFERENCES areas(id_area)
);

INSERT INTO interns (name, id_area) VALUES
('John', 1),
('Mary', 2),
('Peter', 1),
('Laura', NULL);

SELECT *
FROM interns
RIGHT JOIN areas ON interns.id_area = areas.id_area;