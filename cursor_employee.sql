declare
cursor c1 is select empname, salary, hire_date from employeee;
empl c1%rowtype;
expr integer;
increment number(3);
begin
open c1;
fetch c1 into empl;
while(c1%found)
loop
expr:=floor(months_between(sysdate,empl.hire_date)/12);
empinc(empl.salary,expr, increment);
dbms_output.put_line(empl.empname||' - '||empl.salary||' - '||increment||' - '||expr);
fetch c1 into empl;
end loop;
close c1;
end;
/