CREATE DATABASE payroll_system;
USE payroll_system;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(100),
    base_salary DECIMAL(10,2)
);

CREATE TABLE attendance (
    att_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    days_present INT,
    month VARCHAR(20),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    month VARCHAR(20),
    net_salary DECIMAL(10,2),
    generated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
