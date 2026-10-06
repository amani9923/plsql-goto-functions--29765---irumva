CREATE OR REPLACE FUNCTION fn_validate_payroll (p_emp_id IN NUMBER) 
RETURN VARCHAR2 IS
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary INTO v_salary FROM employees WHERE employee_id = p_emp_id;
    
    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero.';
    ELSE
        RETURN 'VALID';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee does not exist.';
END;
/