declare
vnum1 number :=10;
vnum2 number :=20;
vnum3 number :=30;
vnum4 number :=01;
vnum5 number :=03;
vnum6 number :=05;
vnum7 number :=05;
vnum8 number :=05;
vnum9 number :=05;
vnum10 number :=17500;

aux number;

  type numeros is varray(10) of number;
  var1 numeros :=  numeros(vnum1, vnum2, vnum3, vnum4, vnum5, vnum6, vnum7, vnum8, vnum9, vnum10); 

BEGIN 
  for i in 1..10 loop
    for n in 1..10 loop
      if var1(n) > var1(i) then
        aux :=var1(i);
        var1(i):=var1(n);
        var1(n):=aux;
        end if;
 end loop;
 end loop;
 
 for j in 1..10 loop
   dbms_output.put_line(var1(j));
   end loop;
end;