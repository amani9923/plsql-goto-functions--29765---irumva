-- Create Departments Table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    hire_date DATE NOT NULL,
    monthly_salary NUMBER(10,2) CHECK (monthly_salary >= 0),
    department_id NUMBER REFERENCES departments(department_id)
);

-- Insert Sample Data
INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'Marketing');
INSERT INTO departments VALUES (30, 'Purchasing');
INSERT INTO departments VALUES (40, 'Human Resources');

INSERT INTO employees VALUES (101, 'John', 'Doe', 'jdoe@mail.com', TO_DATE('2018-03-15', 'YYYY-MM-DD'), 5000.00, 10);
INSERT INTO employees VALUES (102, 'Jane', 'Smith', 'jsmith@mail.com', TO_DATE('2021-06-20', 'YYYY-MM-DD'), 7500.00, 20);
INSERT INTO employees VALUES (103, 'Bob', 'Johnson', 'bjohnson@mail.com', TO_DATE('2025-01-10', 'YYYY-MM-DD'), 3000.00, 30);
COMMIT;