SET SERVEROUTPUT ON;
DECLARE
    v_ann_sal NUMBER;
    v_years   NUMBER;
BEGIN
    v_ann_sal := fn_annual_salary(5000);
    v_years   := fn_years_of_service(TO_DATE('2020-01-01','YYYY-MM-DD'));
    
    DBMS_OUTPUT.PUT_LINE('Test Annual Salary Calculation (5000/mo): ' || v_ann_sal);
    DBMS_OUTPUT.PUT_LINE('Test Years of Service (Since 2020): ' || v_years);
END;
/