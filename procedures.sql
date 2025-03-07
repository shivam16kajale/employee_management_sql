DELIMITER //

-- Stored Procedure: Calculate Total Payroll
CREATE PROCEDURE CalculateTotalPayroll()
BEGIN
    SELECT SUM(salary_paid + bonus) AS total_expense FROM Payroll;
END //

-- Trigger: Auto-Insert Payroll Entry on Employee Creation
CREATE TRIGGER after_employee_insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Payroll (employee_id, month, salary_paid, bonus)
    VALUES (NEW.id, DATE_FORMAT(NOW(), '%M %Y'), NEW.salary, 0);
END //

DELIMITER ;
