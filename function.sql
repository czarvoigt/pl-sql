--teste
create or replace function F_RETURN_SAL(id in emp.empno%type)
  return integer is
  FunctionResult integer;
  vsal           integer;
  vcad           integer;
begin
  select nvl(count(*), 0) into vcad from emp e where e.empno = id;

  if vcad <> 0 then
  
    select sal into vsal from emp where empno = id;
    FunctionResult := vsal;
  else
    FunctionResult := -1;
  end if;

  return(FunctionResult);
end F_RETURN_SAL;
