--data into seller
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(10,'Bolod Sanam','M','Bogra',0111,'Mithila Supershop');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(11,'Doglous Sakib','M','Rajshahi',0222,'Elin DogHouse');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(12,'Adam Towhid','M','Rangpur',0333,'VungChung Shop');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(13,'Elin','F','Natore',0444,'RupKotha');
INSERT INTO SELLER(id,name ,gender,adress,phone,shop_name) VALUES(14,'Joha','M','Bogra',0555,'TechNoshOP');

--data into customer
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(101, 'Jahid', 'M', 'Ullapara',1000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(102, 'Jahida', 'F', 'Rajshahi',2000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(103, 'Sujoy', 'M', 'Khulna',3000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(104, 'Smrity', 'F', 'Khulna',4000);
INSERT INTO CUSTOMER(id,name ,gender,adress,phone) VALUES(105, 'Alamin','M', 'Bogra',5000);

--insert into supplier
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(501,'Zoha','M','Bogra',12345);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(502,'Akib','M','Comilla',23456);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(503,'Shawon','M','Rangpur',32347);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(504,'Kibriya','M','Dinajpur',42348);
INSERT INTO SUPPLIER(id,name,gender,adress,phone) VALUES(505,'Anika','F','Barishal',52349);

--insert into products
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(1,10,'PythonPedia',400,3,'N');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(2,11,'Dog',2500,1,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(3,12,'Movie DVD',500,5,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(4,13,'Necklaces',270,3,'Y');
INSERT INTO PRODUCT(id,seller_id,name,price,quantity,moneyback) VALUES(5,14,'Arduino',750,2,'Y');

--insert into supply
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(1001,502,3,101);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(1002,504,5,102);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(1003,501,1,103);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(1004,505,2,104);
INSERT INTO SUPPLY(id,sp_id,pr_id,c_id) VALUES(1005,503,4,105);

--insert into buy
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(901,1,10,400,3);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(902,2,11,2500,1);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(903,3,12,500,5);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(904,4,13,270,3);
INSERT INTO BUY(id,pr_id,seller_id,cost,quantity) VALUES(905,5,14,750,2);

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