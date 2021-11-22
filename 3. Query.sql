--SELECT OPERATION
SELECT name,gender FROM SUPPLIER;


--WHERE Operation(OR,AND)
SELECT id , name , price 
	FROM product
WHERE (id=1 OR id=3) AND (price=400);

--BETWEEN
SELECT name , shop_name from SELLER WHERE id BETWEEN 11 AND 13;

--IN
SELECT id, name , shop_name from SELLER WHERE id IN(12,13,14);

--Aggregate Function + Alias
SELECT AVG(price) as Average_price , MAX(price) as Maximum_price , MAX(price)-AVG(price) as max_minus_avg ,COUNT(price) as countt
FROM PRODUCT
WHERE price > 350;

--ORDER BY and GROUP BY
SELECT id,cost
FROM buy
ORDER BY pr_id,quantity;

SELECT COUNT(id),name
from seller
group by shop_name
order by id;

--LIKE
SELECT name , shop_name from SELLER WHERE name like'%s';
SELECT name , shop_name from SELLER WHERE name like'S%';
SELECT name , shop_name from SELLER WHERE name like'%_l';
SELECT name , shop_name from SELLER WHERE name like'S_%';
SELECT name , shop_name from SELLER WHERE name like'S%B';

--HAVING
SELECT name , shop_name from SELLER HAVING AVG(id)>3;

--Combined of above


--UPDATE
UPDATE PRODUCT 
SET name='Rasberi Pi'
where id=5;

--ALTER
ALTER TABLE Seller ADD birthyear number(4);
select * from seller;

ALTER TABLE Seller MODIFY birthyear varchar(10);

ALTER TABLE Seller DROP COLUMN birthyear;
select * from seller;

--DELETE
DELETE from supplier where id=505;                                

--INNER JOIN
SELECT ID ,name from seller
INNER JOIN product
ON seller.id = product.seller_id;
 
--Cartesian Join

--FULL Join


SELECT seller.name , product.name from seller
INNER JOIN product
ON seller.id=product.seller_id;

--RIGHT JOIN
SELECT seller.name , product.name from seller
RIGHT JOIN product
ON seller.id=product.seller_id;

--LEFT JOIN
SELECT seller.name , product.name from seller
LEFT JOIN product
ON seller.id=product.seller_id;

--SELF JOIN
SELECT a.name , b.quantity
from seller a , product b
where a.id=b.seller_id;

--DROP TABLE
DROP TABLE seller;
DROP TABLE buy;