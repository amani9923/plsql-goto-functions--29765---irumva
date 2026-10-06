CREATE OR REPLACE FUNCTION fn_calculate_tax (p_annual_salary IN NUMBER) 
RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary > 80000 THEN
        v_tax := p_annual_salary * 0.30;
    ELSIF p_annual_salary > 50000 THEN
        v_tax := p_annual_salary * 0.20;
    ELSE
        v_tax := p_annual_salary * 0.10;
    END IF;
    RETURN v_tax;
END;
/