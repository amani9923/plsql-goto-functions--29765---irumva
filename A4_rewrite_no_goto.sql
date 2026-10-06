SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := 25;
BEGIN
    -- Rewritten cleanly without GOTO structures
    IF v_num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is POSITIVE.');
    ELSIF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is NEGATIVE.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
    END IF;
END;
/