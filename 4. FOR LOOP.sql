SET SERVEROUTPUT ON

DECLARE
c_name customer.name%type;
c_contact customer.phone%type;
pr_name product.name%type;
price_p product.price%type;
p_quantity product.quantity%type;
spl_id supply.id%type;

BEGIN 
FOR counter IN 10..15 LOOP
--select id into spl_id from supply where id = counter;
select name , phone into c_name , c_contact from customer where id in(select sp_id from supply where id=counter);
select name , price , quantity into pr_name, price_p ,p_quantity from product where id in(select pr_id from supply where id = counter);

--Print output
dbms_output.put_line('Name of customer : ' || c_name);
dbms_output.put_line('Phone of customer : ' || c_contact);
dbms_output.put_line('Name of Product : ' || pr_name);
dbms_output.put_line('Price of Product : ' || price_p);
dbms_output.put_line('Quantity : ' || p_quantity);
dbms_output.put_line('id'|| spl_id);
dbms_output.put_line('______________________');
 	
	END LOOP;
END;
/
