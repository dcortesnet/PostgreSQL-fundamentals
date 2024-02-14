CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE student_courses (
    student_course_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES courses(course_id),
    CONSTRAINT uc_student_course UNIQUE (student_id, course_id)
);

INSERT INTO students (name) VALUES
    ('Juan'),
    ('María'),
    ('Pedro');

INSERT INTO courses (name) VALUES
    ('Matemáticas'),
    ('Historia'),
    ('Inglés');

INSERT INTO student_courses (student_id, course_id) VALUES
    (1, 1), -- Juan en Matemáticas
    (1, 2), -- Juan en Historia
    (2, 2), -- María en Historia
    (2, 3), -- María en Inglés
    (3, 1); -- Pedro en Matemáticas