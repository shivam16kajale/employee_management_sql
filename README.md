# Employee Management System (SQL Project)
![EmployeeDB(EER Diagram)](https://github.com/user-attachments/assets/0fcb8a46-334f-43d8-b078-78c1ab39c9cf)


## 📌 Overview
A standalone SQL-based **Employee Management System** using **MySQL**.  
It includes employee records, departments, payroll, and attendance tracking.

## 🏗 Database Schema
✔ **Employee Table** (Employee Details)  
✔ **Department Table** (Manages Departments)  
✔ **Attendance Table** (Tracks Employee Presence)  
✔ **Payroll Table** (Manages Employee Salaries)  

## 🔍 Features
✔ **Employee Management** (Insert, Update, Delete Employees)  
✔ **Payroll Processing** (Salary, Bonuses, Monthly Reports)  
✔ **Attendance Tracking** (Present, Absent, On Leave)  
✔ **Stored Procedures & Triggers**  

## 🛠 SQL Queries
**Get All Employees with Departments**  
```sql
SELECT Employee.id, Employee.name, Employee.salary, Department.name AS department 
FROM Employee
JOIN Department ON Employee.department_id = Department.id;
