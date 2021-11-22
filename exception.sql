SET SERVEROUTPUT ON

DECLARE
	s_id seller.id%type := &cs_id;
	p_price product.price%type := &cp_price;
	--s_name seller.name%type;
	--s_phone seller.phone%type;
	err_exception EXCEPTION;

BEGIN
IF (s_id <= 0) OR (p_price < 0) THEN
 	RAISE err_exception;

ELSE
	dbms_output.put_line('No EXCEPTION is found , Hurry!!!!');
END IF;
EXCEPTION
	WHEN err_exception THEN
		dbms_output.put_line('Invalid ID or price');
	WHEN no_data_found THEN
		dbms_output.put_line('No data found.');
	WHEN others THEN
		dbms_output.put_line('Sorry , the error is not identified');

END;
/