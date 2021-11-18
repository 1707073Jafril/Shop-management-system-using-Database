SET SERVEROUTPUT ON
BEGIN
   DBMS_OUTPUT.PUT_LINE('KUETshoPP - A shop for KUETian');
END;
/	
drop table seller;
drop table customer;
drop table supplier;
drop table product;
drop table buy;
drop table supply;

--Table for Seller
create table seller(id number(10) NOT NULL PRIMARY KEY,
			Name varchar(15),
			Gender char(5),
			Adress varchar(30),
			Phone number(12),
			Shop_name varchar(30)
			);
			
describe seller;


--Table for Customer
create table customer(id number(10) NOT NULL PRIMARY KEY,
			Name varchar(15),
			Gender char(5),
			Adress varchar(30),
			Phone number(12)
			);
describe customer;

--Table for supplier
create table supplier(id number(10) NOT NULL PRIMARY KEY,
			Name varchar(15),
			Gender char(5),
			Adress varchar(30),
			Phone number(12)
);
describe supplier;

--Table for products
create table product(id number(10) NOT NULL PRIMARY KEY,
			 seller_id number(10) NOT NULL ,
			 Name varchar(15), 
			 price number(10) , 
			 quantity number(5),
   			 moneyback char(2),
			 FOREIGN KEY(seller_id) REFERENCES seller(id) on delete cascade 
);
describe product;

--Table for supply 
create table supply(id number(10) NOT NULL PRIMARY KEY,
		   sp_id number(10) NOT NULL,
		   pr_id number(10) NOT NULL,
		   c_id number(10) NOT NULL,
		   FOREIGN KEY(sp_id) references supplier(id) on delete cascade,
  		   FOREIGN KEY(pr_id) references product(id) on delete cascade,
  		   FOREIGN KEY(c_id) references customer(id) on delete cascade
);
describe supply;

--Table for buy 
create table buy(id number(10)  NOT NULL PRIMARY KEY,
  		  pr_id number(10) not null,
  		  seller_id number(10) not null,
                  cost number(10) not null,
                  quantity number(10) not null,
		  foreign key(pr_id) references product(id) on delete cascade,
   		  foreign key(seller_id) references seller(id) on delete cascade
);
describe buy;