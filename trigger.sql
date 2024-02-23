create or replace trigger acctrigger
before update or delete on account
for each row
declare
optype varchar2(10);
begin
if updating then
optype='UPDATE';
elsif
if deleting then
optype='DELETE';
end if;
if :old.acc_balance =50 then
raise_application_error(-20500,'account balance is 50');
end if;
insert into backup values(:old.acc_no,:old.acc_balance,optype,system);
end;
/

