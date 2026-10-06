SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER := 6000;
BEGIN
    IF v_salary > 7000 THEN
        GOTO high_salary;
    ELSE
        GOTO standard_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Tier: High Executive Review Required.');
    GOTO finish;

    <<standard_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Tier: Standard Staff Review Approved.');

    <<finish>>
    NULL;
END;
/