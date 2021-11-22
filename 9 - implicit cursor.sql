SET SERVEROUTPUT ON

DECLARE total_n NUMBER(15);

BEGIN

UPDATE SELLER
SET name='Azizul' where id=10;

IF sql%notfound THEN
	dbms_output.put_line('Failed to update!!!');
 ElSIF sql%found THEN
 	total_n:= sql%rowcount;
 	dbms_output.put_line('updated ' || total_n);
 END IF;
 END;
 /