SET SERVEROUPUT ON

DECLARE
CURSOR cur_seller IS 
select name , phone from SELLER;

TYPE s_name IS TABLE OF SELLER.name%TYPE INDEX BY binary_integer;
TYPE s_phone IS TABLE OF SELLER.phone%TYPE INDEX BY binary_integer;
name_list s_name;
contact_list s_phone;
counter integer :=0;

BEGIN
FOR n IN cur_seller LOOP

	counter:=counter+1;
	name_list(counter) := n.name;
	contact_list(counter):= n.phone;
	dbms_output.put_line('Seller ('||counter ||') : ' ||name_list(counter) || '  Contact : '||contact_list(counter));
END LOOP;
END;
/