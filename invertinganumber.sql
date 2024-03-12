declare
n number;
r number;
rem number;
begin
r:=0;
n:=&n;
while (n!=0)
loop
rem:=mod(n,10);
r:=(r*10)+rem;
n:=floor(n/10);
end loop;
dbms_output.put_line('inverse of the number='||r);
end;
/
