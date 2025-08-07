CREATE TABLE employees(
	emp_id INTEGER PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department VARCHAR(100),
	age INTEGER CHECK (age>=18),
	salary NUMERIC(10,2),
	hire_date DATE

);

INSERT INTO employees
VALUES(1, 'Yash', 'IT', 25, 55000, '2022-05-01'),
    (2, 'Ajit', 'HR', 29, 60000, '2021-07-15'),
    (3, 'Rajendra', 'Finance', 31, 75000, '2020-02-20'),
    (4, 'Sonu', 'Finance', 31, 75000, '2020-02-20');

SELECT * FROM employees;

-- Select Specific Column

SELECT name,department
FROM employees;

--Use WHERE Clause
SELECT * FROM employees
WHERE department ='IT';

--Use AND & OR Operator
SELECT * FROM employees 
WHERE department = 'IT' AND salary >= 55000;

SELECT * FROM employees 
WHERE department = 'IT' OR department = 'HR';

-- Use LIKE

SELECT * FROM employees 
WHERE name LIKE 'Y%'; 

---Use Between Operator
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 70000;


--- Use ORDER BY LIMIT
SELECT * FROM employees
ORDER BY salary ASC
LIMIT 3;





