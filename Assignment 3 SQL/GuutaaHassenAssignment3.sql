CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(5, 2),
    manager_id INT,
    department_id INT
);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    (101, 'John', 'Doe', 'john.doe@example.com', '555-1234', '2023-01-15', 'IT_PROG', 50000.00, 0.10, NULL, 1),
    (102, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2023-02-20', 'SA_REP', 60000.00, 0.15, 101, 1),
    (103, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-9876', '2023-03-10', 'FIN_ANALYST', 55000.00, 0.12, 101, 2),
    (104, 'Emily', 'Brown', 'emily.brown@example.com', '555-4321', '2023-04-05', 'HR_REP', 45000.00, 0.08, 101, 3),
    (105, 'William', 'Davis', 'william.davis@example.com', '555-8765', '2023-05-01', 'SA_REP', 65000.00, 0.14, 102, 1),
    (106, 'Sophia', 'Wilson', 'sophia.wilson@example.com', '555-6543', '2023-06-15', 'IT_PROG', 52000.00, 0.09, 102, 1);
    
    SELECT employees.last_name, employees.department_id, employees.job_id, employees.employee_id
FROM employees
NATURAL JOIN departments;

ALTER TABLE job_history
ADD previous_job VARCHAR2(50),
    current_job VARCHAR2(50);
    
    UPDATE job_history
SET previous_job = 'IT_PROG', current_job = 'SA_REP'
WHERE employee_id = 101 AND start_date = '2023-01-01';

UPDATE job_history
SET previous_job = 'SA_REP', current_job = 'FIN_ANALYST'
WHERE employee_id = 102 AND start_date = '2023-03-15';

UPDATE job_history
SET previous_job = 'FIN_ANALYST', current_job = 'HR_REP'
WHERE employee_id = 103 AND start_date = '2023-02-10';

SELECT employees.employee_id, employees.last_name, departments.department_id, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id;

    