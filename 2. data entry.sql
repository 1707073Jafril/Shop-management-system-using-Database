--data into seller
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(10,'Bolod Sanam','M','Bogra',0111,'Mithila Supershop');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(11,'Doglous Sakib','M','Rajshahi',0222,'Elin DogHouse');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(12,'Adam Towhid','M','Rangpur',0333,'VungChung Shop');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(13,'Elin','F','Natore',0444,'RupKotha');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(14,'Joha','M','Bogra',0555,'TechNoshOP');

--data into customer
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(10, 'Jahid', 'M', 'Ullapara',1000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(11, 'Jahida', 'F', 'Rajshahi',2000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(12, 'Sujoy', 'M', 'Khulna',3000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(13, 'Smrity', 'F', 'Khulna',4000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(14, 'Alamin','M', 'Bogra',5000);

--insert into supplier
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(10,'Zoha','M','Bogra',12345);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(11,'Akib','M','Comilla',23456);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(12,'Shawon','M','Rangpur',32347);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(13,'Kibriya','M','Dinajpur',42348);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(14,'Anika','F','Barishal',52349);

--insert into products
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(10,10,'PythonPedia',400,3,'N');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(11,11,'Dog',2500,1,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(12,12,'Movie DVD',500,5,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(13,13,'Necklaces',270,3,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(14,14,'Arduino',750,2,'Y');

--insert into supply
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(10,14,13,101);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(11,11,10,102);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(12,12,14,103);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(13,10,12,104);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(14,13,11,105);

--insert into buy
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(10,10,10,400,3);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(11,11,11,2500,1);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(12,12,12,500,5);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(13,13,13,270,3);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(14,14,14,750,2);

--show info of table seller
SELECT * FROM SELLER;

--show info of table customer
SELECT * FROM CUSTOMER;

--show info of table supplier
SELECT * FROM SUPPLIER;

--show info of table product
SELECT * FROM PRODUCT;

--show info of table supply
SELECT * FROM SUPPLY;

--show info of table buy
SELECT * FROM BUY;
