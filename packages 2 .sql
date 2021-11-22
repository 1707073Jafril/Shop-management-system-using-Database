SET SERVEROUTPUT ON

CREATE PACKAGE pk3 AS
PROCEDURE abc(s_id seller.id%TYPE);

--PROCEDURE del_seller(s_id seller.id%type);

END pk3;
/

CREATE OR REPLACE PACKAGE BODY pk3 AS

PROCEDURE abc(s_id seller.id%TYPE) IS
s_name seller.name%type;
s_shop seller.shop_name%type;
s_phone seller.phone%type;

BEGIN

SELECT name , shop_name , phone INTO s_name , s_shop , s_phone from SELLER where id = s_id;

dbms_output.put_line('Seller Name : ' || s_name);
dbms_output.put_line('Shop Name : ' || s_shop);
dbms_output.put_line('Contact No : ' || s_phone);
dbms_output.put_line('.................');

END abc;

END pk3;
/

set serveroutput on
 declare
  s_id seller.id%type;
   begin
   pk3.abc(13);
  end;
   /