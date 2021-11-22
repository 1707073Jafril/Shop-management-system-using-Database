SET SERVEROUTPUT ON
--DECLARE
--c_gender varCHAR2(15);
--c_phone NUMBER(10);
--c_name name.customer%type

CREATE OR REPLACE FUNCTION f1(
	--c_gender IN varCHAR2 , c_phone IN NUMBER) RETURN varchar2 IS c_name varchar2;
p_name in varchar , p_price in NUMBER) RETURN NUMBER IS P_quantity INT;

BEGIN
--select name into c_name from customer where gender=c_gender and phone=c_phone;
--RETURN c_name;
select quantity into P_quantity from product where Name=p_name and price=p_price;
RETURN P_quantity;
end;
/
show ERRORS PROCEDURE p1;

SET SERVEROUTPUT ON

DECLARE
--P_quantity product.quantity%type;
--A varchar(10);
--B NUMBER(10);


BEGIN
--c_name:=customer_details('M',1000);
--a:='Dog';
--b:=2500;
--P_quantity:=f1(a,b);
dbms_output.put_line('Name is :' || f2('M',1000));
exception WHEN too_many_rows THEN

dbms_output.put_line('Errors fetching are more than one');
end;
/
