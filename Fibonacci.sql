/* Imprime sequencia Fibonacci, até 100*/
DECLARE
    VAR1   NUMBER :=0;
    VAR2   NUMBER :=1;
    VAR3   NUMBER :=0;
    VCOUNT NUMBER :=0;
BEGIN
    WHILE (VCOUNT < 100) LOOP
        DBMS_OUTPUT.PUT_LINE(VAR1);
        VAR3:=(VAR1 + VAR2);
        VAR1:=VAR2;
        VAR2:=VAR3;
        VCOUNT:= VCOUNT+1;
    END LOOP;
END;