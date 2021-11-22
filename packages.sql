SET SERVEROUTPUT ON

CREATE PACKAGE pk1 AS
PROCEDURE insert_seller(s_id seller.id%TYPE,
s_name seller.name%type,
s_gender seller.gender%type,
s_adress seller.adress%type,
s_phone seller.phone%type,
s_shop seller.shop_name%type);

PROCEDURE del_seller(s_id seller.id%type);

END pk1;
/

CREATE OR REPLACE PACKAGE BODY pk1 AS

PROCEDURE insert_seller(s_id seller.id%TYPE,
s_name seller.name%type,
s_gender seller.gender%type,
s_adress seller.adress%type,
s_phone seller.phone%type,
s_shop seller.shop_name%type)
IS

BEGIN


--SELECT name , shop_name , phone INTO s_name , s_shop , s_phone from SELLER where id = s_id;

--dbms_output.put_line('Seller Name : ' || s_name);
--dbms_output.put_line('Shop Name : ' || s_shop);
--dbms_output.put_line('Contact No : ' || s_phone);
--dbms_output.put_line('.................');

INSERT INTO seller (id , name ,gender ,adress,phone , shop_name) VALUES(s_id , s_name,s_gender,s_adress,s_phone,s_shop);
END insert_seller;

PROCEDURE del_seller(s_id seller.id%type) IS
BEGIN 
	DELETE from seller
	where id = s_id;
END del_seller;

END pk1;
/

SET SERVEROUTPUT ON

declare 
seller_id seller.id%type;

BEGIN
pk1.insert_seller(23, 'Arif' , 'M' , 'Madaripur',6585,'pp');

END;
/

SELECT * from seller;