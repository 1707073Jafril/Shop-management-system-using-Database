set serveroutput on

--DECLARE
--s_PHONE phone.seller%TYPE;
CREATE OR REPLACE function f6(s_name in varchar2) return number IS
s_phone seller.phone%type;

begin
select phone into s_PHONE from seller where name=s_name;
return s_PHONE;
end;
/

set serveroutput on
declare
s_phone seller.phone%type;
--s_name seller.name%type;
begin
s_phone:=f6('Elin');
dbms_output.put_line('Phone number of is: ' || s_phone);

end;
/