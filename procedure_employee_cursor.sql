create or replace procedure
proj_emp(emp_name in varchar2)
as
cursor c1 is select p.projno,p.projname,p.deptno,p.resemp,p.stdate,p.enddate from project p,employeee e, empproj ep where e.empno=ep.empno and ep.projno=p.projno and e.empname=emp_name;
proj c1%rowtype;
begin
open c1;
fetch c1 into proj;
dbms_output.put_line('NAME:  '|| emp_name);
dbms_output.put_line('******************************');
while c1%found
loop
dbms_output.put_line('Project No: '||proj.projno);
dbms_output.put_line('Project Name: '||proj.projname);
dbms_output.put_line('Dept No: '||proj.deptno);
dbms_output.put_line('Resemp : '||proj.resemp);
dbms_output.put_line('Stdate: '||proj.stdate);
dbms_output.put_line('Enddate : '||proj.enddate);
dbms_output.put_line('******************************');
fetch c1 into proj;
end loop;
close c1;
end;
/

