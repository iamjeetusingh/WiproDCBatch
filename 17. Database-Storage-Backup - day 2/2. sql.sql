# create database
CREATE DATABASE emp;

# select database
USE emp;

# creating employee table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

# adding data into a table
INSERT INTO employees (name, age, position, salary)
VALUES ('John Wick', 30, 'Software Engineer', 60000.00);

#listing 
SELECT * FROM employees;


# adding entries into a table
INSERT INTO employees (name, age, position, salary) VALUES
('John Doe', 30, 'Manager', 50000.00),
('Jane Smith', 25, 'Developer', 60000.00),
('Michael Johnson', 35, 'Analyst', 55000.00),
('Emily Davis', 28, 'Designer', 48000.00),
('David Wilson', 40, 'Engineer', 70000.00),
('Sarah Brown', 33, 'Marketing', 52000.00),
('Chris Taylor', 29, 'Sales', 53000.00),
('Jennifer Lee', 31, 'HR', 48000.00),
('Kevin Clark', 27, 'QA', 54000.00),
('Amanda Evans', 32, 'Operations', 56000.00);

# select query
SELECT *
FROM employees
WHERE name = 'John Doe';

# list user where salary is greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

# list user where salary is greater than 50000 & age is greater than 30
SELECT *
FROM employees
WHERE salary > 50000 AND age > 30;

# order by employee name - ascending order
SELECT * FROM employees order by name;
SELECT * FROM employees order by name asc;

# order by employee name - descending order
SELECT * FROM employees order by name desc;

# functions
select concat (name, position) from employees;
select concat (name, ", ", position) from employees;


# creating another table 2
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    project_description VARCHAR(255),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

#inserting data in table 2
INSERT INTO projects (project_name, project_description, employee_id) VALUES
('Project A', 'Developing new feature', 1);

# listing table
select * from projects;

# listing employee name using project table
select e.name as name 
from projects p
join employees e on p.employee_id = e.id;

# inserting multiple values in project table.
INSERT INTO projects (project_name, project_description, employee_id) VALUES
('Project X', 'Developing new feature', 2),
('Project Y', 'Designing user interface', 3),
('Project Z', 'Testing application', 4),
('Project A', 'Marketing campaign', 5),
('Project B', 'Optimizing database performance', 6),
('Project C', 'Implementing security features', 7),
('Project D', 'Training new employees', 8),
('Project E', 'Researching market trends', 9),
('Project F', 'Creating promotional materials', 10),
('Project G', 'Updating website content', 11);

# listing table
select * from projects;

# listing employee name using project table
select e.name as name 
from projects p
join employees e on p.employee_id = e.id;

# join employee table and project all together with unique
SELECT e.id, e.name AS name, e.age, e.position, e.salary,
p.project_id, p.project_name, p.project_description
FROM employees e
JOIN projects p ON e.id = p.project_id;

# counting total employees
select count(*) from employees;

# listing average salary of employees
select avg(salary) average_sal from employees;

# counting total salary of all employees
SELECT SUM(Salary) total_sal FROM employees;

###################################################################
# Task 4: Create a database for a local library, using the information given below:
# 1. Book ID (unique identifier for each book)
# 2. Title (the title of the book)
# 3. Author (the author of the book)
# 4. Genre (the genre/category of the book)
# 5. Publication Year (the year the book was published)
# 6. Quantity Available (the number of copies available in the library)
# & insert some entries here.
###################################################################

create database library;
use library;
create table books(
book_id INT PRIMARY KEY,
title VARCHAR(50),
author VARCHAR(30),
genre VARCHAR(30),
publish_year year,
quantity VARCHAR(3)
);

INSERT INTO books (book_id, title, author, genre, publish_year, quantity) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 5);

select * from books;

INSERT INTO books (book_id, title, author, genre, publish_year, quantity) VALUES
(2, '1984', 'George Orwell', 'Dystopian', 1949, 3),
(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1948, 7),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classics', 1925, 4),
(5, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', 1997, 8);

show databases;




