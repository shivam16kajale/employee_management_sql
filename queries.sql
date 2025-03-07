-- Get All Employees with Department Name

select e.id ,e.name,e.email,e.salary,d.name department_name from employee e join department d on e.department_id = d.id;

-- Get Employee Attendance Summary
SELECT e.name, COUNT(*) AS total_days, 
       SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS present_days
FROM employee e
JOIN attendance a ON e.id = a.employee_id
GROUP By e.id;

-- Get Payroll Details
select e.name,p.month,p.salary_paid,p.bonus from payroll p join employee e on p.employee_id = e.id;

-- Count Employees Per Department
select d.name department, count(e.id) employee_count from department d 
left join employee e on d.id = e.department_id group by d.id;

