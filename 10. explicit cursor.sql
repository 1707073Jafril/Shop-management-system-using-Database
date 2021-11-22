--Using of Explicit Cursor

SET SERVEROUTPUT ON


DECLARE --declartion
 s_id seller.id%type;
 s_name seller.name%type;
 s_shop seller.shop_name%type;
 CURSOR cur_seller IS -- decl. of cursor for for initializing memory
 	SELECT id , name , shop_name FROM SELLER;

 BEGIN
  OPEN cur_seller; --Allocating the memory
  LOOP
  FETCH cur_seller INTO s_id , s_name , s_shop; --Retrieving Data using fetch
  	EXIT WHEN cur_seller%notfound;
  	dbms_output.put_line('Shop name of '|| s_name ||'[id = ' ||s_id ||'] is ' || s_shop);
  END LOOP;
  CLOSE cur_seller; --Realesing the allocated memory
 END;
 /