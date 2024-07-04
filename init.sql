-- Table: Department
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Table: Employee
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_dept_id INT,
    emp_join_date DATE,
    emp_salary_id INT,
    FOREIGN KEY (emp_dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY (emp_salary_id) REFERENCES Salary(salary_id)
);

-- Table: Salary
CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    salary_amount DECIMAL(10, 2),
    salary_date DATE,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

INSERT INTO Department (dept_id, dept_name)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

INSERT INTO Employee (emp_id, emp_name, emp_dept_id, emp_join_date, emp_salary_id)
VALUES
    (1, 'John Doe', 1, '2020-01-15', 1),
    (2, 'Jane Smith', 2, '2019-05-20', 2),
    (3, 'Michael Johnson', 3, '2021-08-10', 3);

INSERT INTO Salary (salary_id, emp_id, salary_amount, salary_date)
VALUES
    (1, 1, 60000.00, '2024-07-01'),
    (2, 2, 70000.00, '2024-07-01'),
    (3, 3, 80000.00, '2024-07-01');
