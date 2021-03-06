--funcion para saber la edad actual de el ganador del premio
CREATE OR REPLACE FUNCTION EACTUAL (TODAY IN DATE)
    RETURN NUMBER
AS
    RESULTADO   NUMBER (10, 2);
BEGIN
    RESULTADO := (SYSDATE - TODAY) / 365;
    RETURN RESULTADO;
END;

SELECT EACTUAL (BIRTHDATE) FROM LESLIE.WINNERS

--funcion para obtener la edad al momento de ganar el premio

CREATE OR REPLACE FUNCTION EDAD_AL_GANAR (TODAY IN DATE, WHENGANAS IN DATE)
    RETURN NUMBER
AS
    RESULTADO   NUMBER (10, 2);
BEGIN
    RESULTADO := (TODAY - WHENGANAS) / 365;
    RETURN RESULTADO;
END;

--procedimiento almacenado para insertar a un ganador
CREATE OR REPLACE PROCEDURE INSERT_WINNER (NAMEE IN VARCHAR2, BIRTHDATEE IN DATE)
IS
BEGIN 
    INSERT INTO LESLIE.WINNERS (WINNER_ID,NAME,BIRTHDATE)
    VALUES (LESLIE.WINNERS_SEQ.NEXTVAL,NAME,BIRTHDATE );
    END;