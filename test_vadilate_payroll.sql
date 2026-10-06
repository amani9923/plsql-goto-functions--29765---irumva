SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Checking Status Emp 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Checking Status Emp 999: ' || fn_validate_payroll(999));
END;
/