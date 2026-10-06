-- ILLEGAL ATTEMPT (Will fail compilation if uncommented):
-- BEGIN
--     GOTO inner_clause;
--     IF 1=1 THEN
--         <<inner_clause>>
--         DBMS_OUTPUT.PUT_LINE('Illegal jump inside an IF block statement.');
--     END IF;
-- END;
-- /

-- CORRECTED FIX:
SET SERVEROUTPUT ON;
DECLARE
    v_condition BOOLEAN := TRUE;
BEGIN
    IF v_condition THEN
        DBMS_OUTPUT.PUT_LINE('Fixed: Execute logic structured inside structural blocks safely.');
    END IF;
END;
/