declare
total number;
sal number;
begin
update bonus set salary=salary+2000 where name='Maria Jacob';
update bonus set salary=salary+2500 where name='Albert';
select sum(salary) into total from bonus;
if (total>75000) then
	dbms_output.put_line('Total exceeded 75000');
	rollback to s1;
else
	dbms_output.put_line('Salary Updated');
	commit;
end if;
end;
/

