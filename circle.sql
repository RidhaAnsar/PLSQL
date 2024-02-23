declare
rad number;
area number;
begin
rad:=3;
while rad<7 loop
area:=3.14*rad*rad;
insert into circle values(rad, area);
end loop;
end;
/