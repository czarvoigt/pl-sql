/* Exemplo função verifica se existe o funcionário com o ID especificado
    caso sim, retorna o salário. Caso não exista, retorna -1 */

CREATE OR REPLACE FUNCTION F_RETURN_SAL (id IN emp.empno%TYPE)
    RETURN INTEGER
IS
    FunctionResult   INTEGER;
    vsal             INTEGER;
    vcad             INTEGER;
BEGIN
    SELECT NVL (1, 0)
      INTO vcad
      FROM emp e
     WHERE e.empno = id;

    IF vcad <> 0
    THEN
        SELECT sal
          INTO vsal
          FROM emp
         WHERE empno = id;

        FunctionResult := vsal;
    ELSE
        FunctionResult := -1;
    END IF;

    RETURN (FunctionResult);
END F_RETURN_SAL;