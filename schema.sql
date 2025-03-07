create database EmployeeDB;
use EmployeeDB;

-- create table department
create table Department(
id int auto_increment primary key,
name varchar(50) unique not null,
manager_id int null
);

-- create employee table
create table Employee(
id int auto_increment primary key,
name varchar(20) not null,
email varchar(20) unique not null,
phone_number varchar(15),
department_id int,
salary decimal(10,2),
hire_date DATE,
role varchar(50),
foreign key (department_id) references Department(id) on delete set null
);

-- create Attendance table
create table Attendance(
id int auto_increment primary key,
employee_id int,
date Date not null,
status enum('Present','Absent','On Leave') not null,
foreign key(employee_id) references Employee(id) on delete cascade
);

-- create payroll table
create table payroll(
id int auto_increment primary key,
employee_id int,
month varchar(20) not null,
salary_paid decimal(10,2) not null,
bonus decimal(10,2) not null,
foreign key(employee_id) references Employee(id) on delete cascade
);