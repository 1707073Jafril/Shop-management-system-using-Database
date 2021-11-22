SET SERVEROUTPUT ON

DECLARE
CURSOR cur_buy is SELECT ID ,seller_id ,cost
FROM BUY;
buy_rec cur_buy%ROWTYPE;

BEGIN
OPEN cur_buy;
dbms_output.put_line('ID ' || ' Seller ID ' || ' Cost ');
LOOP
	FETCH cur_buy INTO buy_rec;
	EXIT WHEN cur_buy%NOTFOUND;
	dbms_output.put_line(buy_rec.id || ' ' || buy_rec.seller_id || ' ' || buy_rec.cost);
END LOOP;
END;
/