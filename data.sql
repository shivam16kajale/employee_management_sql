-- Insert Departments
INSERT INTO Department (name) VALUES ('HR'), ('Engineering'), ('Sales');

-- Insert Employees
INSERT INTO Employee (name, email, phone_number, department_id, salary, role)
VALUES 
    ('Alice Johnson', 'alice@example.com', '1234567890', 1, 60000, 'HR Manager'),
    ('Bob Smith', 'bob@example.com', '1234567891', 2, 80000, 'Software Engineer'),
    ('Charlie Brown', 'charlie@example.com', '1234567892', 3, 50000, 'Sales Executive');

-- Insert Attendance
INSERT INTO Attendance (employee_id, date, status)
VALUES 
    (1, '2024-03-01', 'Present'),
    (2, '2024-03-01', 'Absent'),
    (3, '2024-03-01', 'On Leave');

-- Insert Payroll Data
INSERT INTO Payroll (employee_id, month, salary_paid, bonus)
VALUES 
    (1, 'February 2024', 60000, 500),
    (2, 'February 2024', 80000, 1000),
    (3, 'February 2024', 50000, 300);
