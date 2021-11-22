SET SERVEROUTPUT ON

DECLARE
f_w UTL_FILE.file_type;
CURSOR cur_product IS SELECT * from PRODUCT;
I cur_product%ROWTYPE;

BEGIN
f_w:= UTL_FILE.FOPEN('MYDIR','writing1.csv','W');
OPEN cur_product;
--UTL_FILE.PUT(f_w,'id'||','||'name' ||',' ||'Price');
--UTL_FILE.NEW_LINE(f_w);
--for cursor_record in cur_product
	LOOP
	FETCH cur_product INTO I;
	EXIT WHEN cur_product%NOTFOUND;
	UTL_FILE.PUT(f,I.id ||','||I.name ||',' ||I.price);
	UTL_FILE.NEW_LINE(f_w);
	END LOOP;
UTL_FILE.FCLOSE(f_w);
END;
/

SELECT * from PRODUCT;