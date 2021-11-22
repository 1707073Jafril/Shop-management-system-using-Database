SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER bf1
AFTER INSERT OR UPDATE OR DELETE
ON PRODUCT
FOR EACH ROW
WHEN(NEW.ID > 0)
DECLARE
 total_price NUMBER;
 discounted_price NUMBER;
 --p_quantity PRODUCT.quantity%type;

BEGIN
--SELECT quantity INTO p_quantity from PRODUCT WHERE PRODUCT.ID=:NEW.ID;
total_price := :NEW.PRICE * :NEW.quantity; -- :OLD.PRICE; --p_quantity;

 IF (total_price > 1000) THEN
 	discounted_price := total_price - total_price * 0.3;
 ELSE
 	discounted_price := total_price;
 END IF;

dbms_output.put_line('Old price is : ' || :OLD.PRICE);
dbms_output.put_line('NEW price is : ' || :NEW.PRICE);
dbms_output.put_line('Total price is : ' || total_price);
dbms_output.put_line('discounted price is : ' || discounted_price);
END;
/

SET SERVEROUTPUT ON

--INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(15,11,'Python',300,1,'N');

UPDATE PRODUCT SET PRICE = PRICE + 100 WHERE id=14;