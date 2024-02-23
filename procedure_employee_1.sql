create or replace procedure
employ(empn in char)
as 
ename employeee.empname%type;
depno employeee.deptno%type;
begin
select empname, deptno into ename, depno from employeee where empno=empn;
dbms_output.put_line('name:'||ename);
dbms_output.put_line('deptno:'||depno);
dbms_output.put_line('*********************');
end;
/