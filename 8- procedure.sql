SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE abc(s_id IN NUMBER) IS
s_name seller.name%type;
s_shop seller.shop_name%type;
s_phone seller.phone%type;

BEGIN

SELECT name , shop_name , phone INTO s_name , s_shop , s_phone from SELLER where id = s_id;

dbms_output.put_line('Seller Name : ' || s_name);
dbms_output.put_line('Shop Name : ' || s_shop);
dbms_output.put_line('Contact No : ' || s_phone);
dbms_output.put_line('.................');

END;
/

show ERRORS PROCEDURE abc;

SET SERVEROUTPUT ON

BEGIN
abc(13);
END;
/

