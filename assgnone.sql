CREATE TABLE PRODUCTS
(
  PRODUCT_NAME VARCHAR2(50),
  DESCRIPTION VARCHAR2(100),
  STANDARD_COST NUMBER(10),
  LIST_PRICE INT,
  CATEGORY_ID INT
);
ALTER TABLE PRODUCTS
DROP COLUMN PRODUCT_ID;
SELECT * FROM PRODUCTS;
create sequence productsseq start with 3000 increment by 1;
alter table products add product_id int default productsseq.nextval;
alter table products add primary key(product_id);
ALTER TABLE PRODUCTS
ADD CONSTRAINT FK_CATID
FOREIGN KEY (CATEGORY_ID) REFERENCES PRODUCT_CATEGORIES(CATEGORY_ID);

select * from products;
DESCRIBE PRODUCTS;

CREATE TABLE EMPLOYEES
(
FIRST_NAME VARCHAR2(20),
LAST_NAME VARCHAR2(20),
EMAIL VARCHAR2(50),
PHONE NUMBER(20),
HIRE_DATE DATE,
MANAGER_ID INT,
JOB_TITLE VARCHAR(50)
);
DESCRIBE EMPLOYEES;
create sequence empseq start with 1001 increment by 1;
alter table employees add employee_id int default empseq.nextval;
alter table employees add primary key(employee_id);


CREATE TABLE CUSTOMER
(
NAME VARCHAR2(30),
ADDRESS VARCHAR(50),
WEBSITE VARCHAR2(50),
CREDIT_LIMIT INT
);
create sequence custseq start with 1401 increment by 1;
alter table customer add customer_id int default custseq.nextval;
alter table customer add primary key(customer_id);
DESCRIBE CUSTOMER;
select * from customer;

CREATE TABLE ORDERS
(
CUSTOMER_ID INT,
STATUS VARCHAR(20),
SALESMAN_ID INT, 
ORDER_DATE DATE
);
DESCRIBE ORDERS;
ALTER TABLE ORDERS
ADD CONSTRAINT FK_CUSTID
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID);
ALTER TABLE ORDERS
ADD CONSTRAINT FK_EMPID
FOREIGN KEY (SALESMAN_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID);
-- FOREIGN KEY (CUSTOMER_ID)REFERENCES CUSTOMER(CUSTOMER_ID),FOREIGN KEY (SALESMAN_ID)REFERENCES EMPLOYEES(EMPLOYEE_ID)
create sequence orderseq start with 501 increment by 1;
alter table orders add order_id int default orderseq.nextval;
alter table orders add primary key(order_id);


CREATE TABLE ORDER_ITEMS
(
ORDER_ID INT,
PRODUCT_ID INT,
QUANTITY INT,
UNIT_PRICE INT
);
DROP TABLE ORDER_ITEMS;
desc order_items;
create sequence orderitemseq start with 8001 increment by 1;
alter table order_items add item_id int default orderitemseq.nextval;
alter table order_items add primary key(item_id);
ALTER TABLE ORDER_ITEMS
ADD CONSTRAINT FK_ORDID
FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID);
ALTER TABLE ORDER_ITEMS
ADD CONSTRAINT FK_PROID
FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID);
select * from order_items;
--FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
drop table order_items;
drop table orders;
drop table employees;
drop table customer;
drop table products;
DESCRIBE ORDER_ITEMS;
CREATE TABLE PRODUCT_CATEGORIES
(
CATEGORY_NAME VARCHAR(50)
);
create sequence procatseq start with 201 increment by 1;
alter table product_categories add category_id int default procatseq.nextval;
alter table product_categories add primary key(category_id);
desc product_categories;

INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('MARGO','ADDITION OF NEEM AND ALOVERA MAKE YOU FEEL GOOD',30,21,201);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('HAMAM','HAMAM MAKES YOU FEEL GOOD AND FRESH',35,25,201);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('CINTHOL','REFRESHMENT OF CINTHOL MAKE YOU FEEL FRESH',25,15,201);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('MYSORE SANDLE','THE FLAVOR FROM MYSORE SANDLES',50,35,201);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('LUX','MAKES YOU FEEL YOUR ROOM AS PARIS',37,29,201);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('SUNSILK','ADDITION OF NEEM AND ALOVERA MAKE YOU FEEL GOOD',80,60,202);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('PARK AVENUE','PA MAKES YOU FEEL GOOD AND FRESH',90,76,202);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('DOVE','DOVE SILKY SHINEY',87,70,202);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('CLINIC+','CLINIC PLUS IMPROVE YOUR HAIR LENGTH',78,60,202);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('MEERA','MEERA OLD IS GOLD',60,35,202);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('FOGG','FOGG HAPPENING',140,80,203);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('BRUTE','THE WAY YOU TO CONVERT INTO MAGNET',150,100,203);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('KS','KILOSPEED',135,98,203);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('AXE','DARK CHOCULATE MAN',160,100,203);
INSERT INTO PRODUCTS(product_name,description,standard_cost,list_price,category_id) VALUES('NIVIA','LONG LASTING',145,105,203);

insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('siraj','m','siraj@gmail.com',9890909089,'20-11-2017',103,'customer support');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('mohan','v','mohan@gmail.com',9098979762,'02-01-2018',102,'delivery boy');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('hari','s','hari@gmail.com',9092919394,'20-01-2018',101,'IT Technician');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('vel','a','vel@gmail.com',9292929292,'29-01-2018',105,'warhouse personnel');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('balu','m','balu@gmail.com',9090989796,'31-01-2018',104,'Developer');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('selvi','s','selvi@gmail.com',9797909096,'02-02-2018',103,'customer support');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('sasi','b','sasi@gmail.com',9890990980,'20-02-2018',102,'delivery boy');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('durai','l','durai@gmail.com',8789898786,'20-02-2018',101,'IT Technician');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('mani','p','mani@gmail.com',7878787898,'28-02-2018',105,'warhouse personnel');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('ajith','t','ajith@gmail.com',9090908998,'03-03-2018',104,'Developer');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('kumar','k','kumar@gmail.com',7899877899,'20-03-2018',103,'customer support');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('raja','a','raja@gmail.com',8989898989,'29-03-2018',101,'IT Technician');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('abdul','p','abdul@gmail.com',9999999911,'02-04-2018',102,'delivery boy');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('prabu','b','prabu@gmail.com',9098898789,'20-04-2018',104,'Developer');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('kannan','m','kannan@gmail.com',8182828282,'30-04-2018',105,'warhouse personnel');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('anand','r','anand@gmail.com',8098909090,'20-05-2018',101,'IT Technician');

INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('VINITHKUMAR','SHEVAPET','WWW.VINITH.COM',40000);
INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('SURYAKUMAR','MADURAI','WWW.SURYA.COM',30000);
INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('MANIKANDAN','CHENNAI','WWW.MANI.COM',45000);
INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('ABDHUL','MAMADURAI','WWW.ABDHUL.COM',50000);
INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('SASIKUMAR','GUNTUR','WWW.SASI.COM',20000);
INSERT INTO CUSTOMER(name,address,website,credit_limit) VALUES('MARIRAJA','THENI','WWW.MARI.COM',33000);
select * from customer;

insert into orders(customer_id,status,salesman_id,order_date) values(1401,'shipped',1002,'25-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1401,'packed',1002,'29-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1403,'shipped',1007,'25-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1404,'delivered',1002,'20-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1403,'packed',1013,'27-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1406,'delivered',1002,'21-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1405,'shipped',1007,'25-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1404,'packed',1007,'28-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1402,'delivered',1013,'22-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1402,'packed',1013,'28-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1405,'shipped',1002,'29-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1406,'delivered',1007,'20-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1404,'shipped',1007,'25-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1401,'packed',1002,'21-11-2021');
insert into orders(customer_id,status,salesman_id,order_date) values(1403,'delivered',1002,'22-11-2021');

INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(535,3000,50,90);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(536,3001,30,80);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(537,3002,60,70);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(538,3003,55,70);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(539,3004,67,70);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(540,3009,34,70);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(541,3010,67,90);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(542,3011,88,50);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(543,3012,34,40);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(544,3013,56,30);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(545,3014,11,30);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(546,3015,33,20);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(547,3016,89,50);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(548,3015,23,70);
INSERT INTO ORDER_ITEMS(order_id,product_id,quantity,unit_price) VALUES(549,3014,55,80);

INSERT INTO PRODUCT_CATEGORIES(CATEGORY_NAME) VALUES('SOAPS');
INSERT INTO PRODUCT_CATEGORIES(CATEGORY_NAME) VALUES('SHAMPOOS');
INSERT INTO PRODUCT_CATEGORIES(CATEGORY_NAME) VALUES('PERFUMES');

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;
SELECT * FROM PRODUCTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM ORDER_ITEMS;
SELECT * FROM PRODUCT_CATEGORIES;
--PACKAGE FOR PRODUCTS TABLE
/
--TABLE
select * from PRODUCTS;
--PACKAGE DECLERATION
/
CREATE OR REPLACE PACKAGE SALES AS
 PROCEDURE PRODUCT_INSERT
(
PRO_NAME  IN   PRODUCTS.PRODUCT_NAME%TYPE,
DES       IN   PRODUCTS.DESCRIPTION%TYPE,
STD_COST  IN   PRODUCTS.STANDARD_COST%TYPE,
LIST_PRC  IN   PRODUCTS.LIST_PRICE%TYPE,
CAT_ID    IN   PRODUCTS.CATEGORY_ID%TYPE,
PRO_STATUS OUT VARCHAR2,
PRO_ERROR OUT VARCHAR2
);

PROCEDURE PRODUCT_DELETE(
PROID IN PRODUCTS.PRODUCT_ID%TYPE,
PRO_STATUS OUT VARCHAR2,
PRO_ERROR OUT VARCHAR2
);

PROCEDURE EMPLOYEE_INSERT(
FIR_NAME IN EMPLOYEES.FIRST_NAME%TYPE,
LAS_NAME IN EMPLOYEES.LAST_NAME%TYPE,
EMAI IN EMPLOYEES.EMAIL%TYPE,
PHON IN EMPLOYEES.PHONE%TYPE,
HIR_DATE IN EMPLOYEES.HIRE_DATE%TYPE,
MANAG_ID IN EMPLOYEES.MANAGER_ID%TYPE,
JOB_TIT IN EMPLOYEES.JOB_TITLE%TYPE,
EMP_STATUS OUT VARCHAR2,
EMP_ERROR OUT VARCHAR2);

PROCEDURE EMPLOYEE_DELETE(
EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,
EMP_STATUS OUT VARCHAR2,
EMP_ERROR OUT VARCHAR2
);
--ADD CUSTOMER
PROCEDURE ADD_CUSTOMERS(
CUS_NAME customer.name%type,
CUS_ADDRESS customer.address%type,
CUS_WEBSITE customer.website%type,
CUS_CREDIT customer.credit_limit%type,C_STATUS out varchar2,C_ERROR out varchar2);
--remove customer
PROCEDURE REMOVE_CUSTOMERS(
CUS_ID in customer.customer_id%type,
C_STATUS out varchar2,
C_ERROR out varchar2);
--ADD ORDERS
PROCEDURE ADD_ORDERS(
ORD_CUS_ID in orders.customer_id%type,
ORD_STATUS in orders.status%TYPE,
ORD_SALES_ID in orders.salesman_id%TYPE,
ORD_DATE in orders.order_date%TYPE,
O_STATUS OUT VARCHAR2,
O_ERROR OUT VARCHAR2);
 --REMOVE ORDERS
PROCEDURE CANCEL_ORDERS(
ORD_ID in orders.order_id%TYPE,
O_STATUS OUT VARCHAR2,
O_ERROR OUT VARCHAR2);
--ADD ORDER ITEMS
PROCEDURE ADD_ORDER_ITEMS(
ORDITM_ORD_ID in order_items.order_id%type,
ORDITM_PROD_ID in order_items.product_id%type,
ORDITM_QNTY in order_items.quantity%type,
ORDITM_UNITPRICE in order_items.unit_price%type,
OITM_STATUS OUT VARCHAR2,
OITM_ERROR OUT VARCHAR2);
--REMOVE ORDER_ITEMS
PROCEDURE REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID order_items.item_id%type,
OITM_STATUS OUT VARCHAR2,
OITM_ERROR OUT VARCHAR2);
--INSERT PRODUCT CATEGORIES
PROCEDURE ADD_PRODUCT_CATEGORY(
PROCAT_CAT_NAME IN PRODUCT_CATEGORIES.CATEGORY_NAME%type,
PROCAT_STATUS OUT VARCHAR2,
PROCAT_ERROR OUT VARCHAR2);
--REMOVE PRODUCT CATEGORIES
PROCEDURE REMOVE_PRODUCT_CATEGORY(
PROCAT_CAT_ID IN PRODUCT_CATEGORIES.CATEGORY_ID%type,
PROCAT_STATUS OUT VARCHAR2,
PROCAT_ERROR OUT VARCHAR2);
END SALES;
/

--PACKAGE DEFINITION
/
CREATE OR REPLACE PACKAGE BODY SALES AS
--insert product
PROCEDURE PRODUCT_INSERT
(
PRO_NAME IN PRODUCTS.PRODUCT_NAME%TYPE,
DES      IN PRODUCTS.DESCRIPTION%TYPE,
STD_COST IN PRODUCTS.STANDARD_COST%TYPE,
LIST_PRC IN PRODUCTS.LIST_PRICE%TYPE,
CAT_ID   IN PRODUCTS.CATEGORY_ID%TYPE,
PRO_STATUS OUT VARCHAR2,
PRO_ERROR OUT VARCHAR2) IS
BEGIN
INSERT INTO PRODUCTS(PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_ID)
VALUES(PRO_NAME,DES,STD_COST,LIST_PRC,CAT_ID);

IF SQL%ROWCOUNT>0 THEN 
PRO_STATUS:='PRODUCT INSERTED SUCCESSFULLY';
END IF;
COMMIT;

EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN
DBMS_OUTPUT.PUT_LINE('PRODUCT ID IS UNIQUE NO INSERT DUPLICATE VALUES');

WHEN OTHERS THEN 
PRO_STATUS:='PRODUCT NOT INSERTED';
PRO_ERROR:=SQLCODE||SQLERRM;

END PRODUCT_INSERT;

--delete product
PROCEDURE PRODUCT_DELETE(
PROID IN PRODUCTS.PRODUCT_ID%TYPE,
PRO_STATUS OUT VARCHAR2,
PRO_ERROR OUT VARCHAR2) IS
BEGIN
DELETE FROM PRODUCTS WHERE PRODUCT_ID=PROID;
IF SQL%rowcount>0
THEN PRO_STATUS:='PRODUCT IS SUCCESSFULLY DELETED';
END IF;
IF SQL%ROWCOUNT=0
THEN PRO_STATUS:='ENTERED ID IS NOT FOUND';
END IF;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
PRO_STATUS:='NO DATA FOUND';
PRO_ERROR:=SQLCODE||SQLERRM;
END PRODUCT_DELETE;

--insert employee
PROCEDURE EMPLOYEE_INSERT(
FIR_NAME IN EMPLOYEES.FIRST_NAME%TYPE,
LAS_NAME IN EMPLOYEES.LAST_NAME%TYPE,
EMAI IN EMPLOYEES.EMAIL%TYPE,
PHON IN EMPLOYEES.PHONE%TYPE,
HIR_DATE IN EMPLOYEES.HIRE_DATE%TYPE,
MANAG_ID IN EMPLOYEES.MANAGER_ID%TYPE,
JOB_TIT IN EMPLOYEES.JOB_TITLE%TYPE,
EMP_STATUS OUT VARCHAR2,
EMP_ERROR OUT VARCHAR2) IS
BEGIN
INSERT INTO EMPLOYEES(FIRST_NAME,LAST_NAME,EMAIL,PHONE,HIRE_DATE,MANAGER_ID,JOB_TITLE)
VALUES(FIR_NAME,LAS_NAME,EMAI,PHON,HIR_DATE,MANAG_ID,JOB_TIT);

IF SQL%ROWCOUNT>0 THEN 
EMP_STATUS:='EMPLOYEE INSERTED SUCCESSFULLY';
END IF;
COMMIT;

EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN
DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID IS UNIQUE NO INSERT DUPLICATE VALUES');

WHEN OTHERS THEN 
EMP_STATUS:='EMPLOYEE NOT INSERTED';
EMP_ERROR:=SQLCODE||SQLERRM;

END EMPLOYEE_INSERT;

--delete employee
PROCEDURE EMPLOYEE_DELETE(
EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,
EMP_STATUS OUT VARCHAR2,
EMP_ERROR OUT VARCHAR2) IS
BEGIN
DELETE FROM EMPLOYEES WHERE EMPLOYEE_ID=EMPID;
IF SQL%ROWCOUNT>0
THEN EMP_STATUS:='EMPLOYEE IS SUCCESSFULLY DELETED';
END IF;
IF SQL%ROWCOUNT=0
THEN EMP_STATUS:='ENTERED DATA IS NOT FOUND IN TABLE';
END IF;
COMMIT;
 EXCEPTION
  WHEN OTHERS THEN
  EMP_STATUS:='NO DATA FOUND';
  EMP_ERROR:=SQLCODE||SQLERRM;
END EMPLOYEE_DELETE;

--add customers
 PROCEDURE ADD_CUSTOMERS(
   CUS_NAME customer.name%type,
   CUS_ADDRESS customer.address%type,
   CUS_WEBSITE customer.website%type,
   CUS_CREDIT customer.credit_limit%type,
   C_STATUS out varchar2,
   C_ERROR out varchar2)IS
   BEGIN
   INSERT INTO customer(name,address,website,credit_limit)
   VALUES(CUS_NAME,CUS_ADDRESS,CUS_WEBSITE,CUS_CREDIT);
   if sql%rowcount>0
         then C_STATUS:='CUSTOMER DATA INSERTED SUCCESSFULLY';
         end if;
         commit;
         EXCEPTION
         when others then
         C_STATUS:='data not inserted';
         C_ERROR:=sqlcode||sqlerrm;
   END ADD_CUSTOMERS;

--remove customers
  PROCEDURE REMOVE_CUSTOMERS(CUS_ID customer.customer_id%type,C_STATUS out varchar2,C_ERROR out varchar2)IS
   BEGIN
   DELETE FROM customer WHERE customer_id=CUS_ID;
   if sql%rowcount>0
         then C_STATUS:='CUSTOMER IS DELETED SUCCESSFULLY';
         end if;
   IF SQL%ROWCOUNT=0
   THEN C_STATUS:='ENTERED ID IS NOT FOUND';
   END IF;
         commit;
         EXCEPTION
         when no_data_found then
         DBMS_OUTPUT.PUT_LINE('customer id does not found');
         when others then
         C_STATUS:='not found';
         C_ERROR:=sqlcode||sqlerrm;
   END REMOVE_CUSTOMERS;
   
--add orders
PROCEDURE ADD_ORDERS(
 ORD_CUS_ID orders.customer_id%type,
 ORD_STATUS orders.status%TYPE,
 ORD_SALES_ID orders.salesman_id%TYPE,
 ORD_DATE orders.order_date%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2)IS
  BEGIN
 INSERT INTO orders(customer_id ,status ,salesman_id ,order_date)
 VALUES(ORD_CUS_ID,ORD_STATUS,ORD_SALES_ID,ORD_DATE);
 if sql%rowcount>0
         then O_STATUS:='ORDER IS INSERTED SUCCESSFULLY';
         end if;
         commit;
         EXCEPTION
         when others then
         O_STATUS:='not inserted';
         O_ERROR:=sqlcode||sqlerrm;
 END ADD_ORDERS;
 
 --cancel orders
PROCEDURE CANCEL_ORDERS(ORD_ID orders.order_id%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2)IS
 BEGIN
 UPDATE orders SET status='cancelled' where order_id=ORD_ID;
 if sql%rowcount>0
         then O_STATUS:='ORDER CANCELLED SUCCESSFULLY';
         end if;
IF SQL%ROWCOUNT=0
THEN O_STATUS:='ENTERED ID IS NOT FOUND';
END IF;
         commit;
         EXCEPTION
         when others then
         O_STATUS:='not CANCELED';
         O_ERROR:=sqlcode||sqlerrm;
 END CANCEL_ORDERS;

--add order_items
PROCEDURE ADD_ORDER_ITEMS(
ORDITM_ORD_ID order_items.order_id%type,
ORDITM_PROD_ID order_items.product_id%type,
ORDITM_QNTY order_items.quantity%type,
ORDITM_UNITPRICE order_items.unit_price%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2)IS
BEGIN
 INSERT INTO order_items(order_id,product_id ,quantity ,unit_price)
 values(ORDITM_ORD_ID,ORDITM_PROD_ID,ORDITM_QNTY,ORDITM_UNITPRICE);
 if sql%rowcount>0
         then OITM_STATUS:='ORDER_ITEMS INSERTED SUCCESSFULLY';
         end if;
         commit;
         EXCEPTION
         when others then
        OITM_STATUS:='not inserted';
        OITM_ERROR:=sqlcode||sqlerrm;
 END ADD_ORDER_ITEMS;

--remove order_items
PROCEDURE REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID order_items.item_id%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2)IS
BEGIN
   DELETE FROM order_items WHERE item_id=ORDITM_ORDER_ID;
   if sql%rowcount>0
         then OITM_STATUS:='ORDER ITEMS SUCCESSFULLY REMOVED';
         end if;
  IF SQL%ROWCOUNT=0
THEN OITM_STATUS:='ENTERED ID IS NOT FOUND';
END IF;
         commit;
         EXCEPTION
         when others then
        OITM_STATUS:='not removed';
        OITM_ERROR:=sqlcode||sqlerrm;
   END REMOVE_ORDER_ITEMS;
   
--INSERT PRODUCT CATEGORIES
PROCEDURE ADD_PRODUCT_CATEGORY(
PROCAT_CAT_NAME IN PRODUCT_CATEGORIES.CATEGORY_NAME%type,
PROCAT_STATUS OUT VARCHAR2,
PROCAT_ERROR OUT VARCHAR2) IS
BEGIN
 INSERT INTO PRODUCT_CATEGORIES(CATEGORY_NAME)
 values(PROCAT_CAT_NAME);
 if sql%rowcount>0
         then PROCAT_STATUS:='CATEGORY NAME INSERTED SUCCESSFULLY';
         end if;
         commit;
         EXCEPTION
         when others then
        PROCAT_STATUS:='not inserted';
        PROCAT_ERROR:=sqlcode||sqlerrm;
 END ADD_PRODUCT_CATEGORY;

--REMOVE PRODUCT CATEGORIES
PROCEDURE REMOVE_PRODUCT_CATEGORY(
PROCAT_CAT_ID IN PRODUCT_CATEGORIES.CATEGORY_ID%type,
PROCAT_STATUS OUT VARCHAR2,
PROCAT_ERROR OUT VARCHAR2)IS
BEGIN
   DELETE FROM PRODUCT_CATEGORIES WHERE CATEGORY_ID=PROCAT_CAT_ID;
   if sql%rowcount>0
         then PROCAT_STATUS:='PRODUCT CATEGORY IS SUCCESSFULLY REMOVED';
         end if;
    IF SQL%ROWCOUNT=0
THEN PROCAT_STATUS:='ENTERED ID IS NOT FOUND';
END IF;
         commit;
         EXCEPTION
         when others then
        PROCAT_STATUS:='not removed';
        PROCAT_ERROR:=sqlcode||sqlerrm;
   END REMOVE_PRODUCT_CATEGORY;
END SALES;
/

SELECT * FROM PRODUCT_CATEGORIES;

--PACKAGE PROCEDURE CALL
--INSERT PRODUCT
/
DECLARE 
  PRO_NAME  PRODUCTS.PRODUCT_NAME%TYPE:=('&P_NA');
  DES       PRODUCTS.DESCRIPTION%TYPE:=('&DES');
  STD_COST  PRODUCTS.STANDARD_COST%TYPE:=&ST_CS;
  LIST_PRC  PRODUCTS.LIST_PRICE%TYPE:=&LI_PR;
  CAT_ID    PRODUCTS.CATEGORY_ID%TYPE:=&CA_ID;
  PRO_STATUS VARCHAR2(100);
  PRO_ERROR VARCHAR2(100);
BEGIN
  SALES.PRODUCT_INSERT(PRO_NAME,DES,STD_COST,LIST_PRC,CAT_ID,PRO_STATUS,PRO_ERROR);
  DBMS_OUTPUT.PUT_LINE(PRO_STATUS||' '||PRO_ERROR);
END;
/
SELECT* FROM PRODUCTS;
select * from customer;
SELECT * FROM ORDER_ITEMS;
SELECT * FROM ORDERS;
SET SERVEROUTPUT ON;
--DELETE PRODUCT
/
DECLARE
ORDITM_ORDER_ID ORDER_ITEMS.ITEM_ID%TYPE:=&ORDERITEM_ID;
OITM_STATUS VARCHAR2(100);
OITM_ERROR VARCHAR2(100);
BEGIN
SALES.REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID,OITM_STATUS,OITM_ERROR);
DBMS_OUTPUT.PUT_LINE(OITM_STATUS||' '||OITM_ERROR);
END;

DECLARE
PROID PRODUCTS.PRODUCT_ID%TYPE:=&PRODUCT_ID;
PRO_STATUS VARCHAR2(100);
PRO_ERROR VARCHAR2(100);
BEGIN
SALES.PRODUCT_DELETE(PROID,PRO_STATUS,PRO_ERROR);
DBMS_OUTPUT.PUT_LINE(PRO_STATUS||' '||PRO_ERROR);
END;
/
select * from products;
--INSERT EMPLOYEE

DECLARE 
  FIR_NAME EMPLOYEES.FIRST_NAME%TYPE:=('&FIRST_NAME');
  LAS_NAME EMPLOYEES.LAST_NAME%TYPE:=('&LAST_NAME');
  EMAI     EMPLOYEES.EMAIL%TYPE:=('&EMAIL');
  PHON     EMPLOYEES.PHONE%TYPE:=&PHONE;
  HIR_DATE EMPLOYEES.HIRE_DATE%TYPE:=('&HIRE_DATE');
  MANAG_ID EMPLOYEES.MANAGER_ID%TYPE:=&MANAGER_ID;
  JOB_TIT  EMPLOYEES.JOB_TITLE%TYPE:=('&JOB_TITLE');
  EMP_STATUS VARCHAR2(100);
  EMP_ERROR VARCHAR2(100);
BEGIN
  SALES.EMPLOYEE_INSERT(FIR_NAME,LAS_NAME,EMAI,PHON,HIR_DATE,MANAG_ID,JOB_TIT,EMP_STATUS,EMP_ERROR);
  DBMS_OUTPUT.PUT_LINE(EMP_STATUS||' '||EMP_ERROR);
END;
/
SELECT * FROM EMPLOYEES;
--DELETE EMPLOYEE
/
DECLARE
EMPID EMPLOYEES.EMPLOYEE_ID%TYPE:=&EMPLOYEE_ID;
EMP_STATUS VARCHAR2(100);
EMP_ERROR VARCHAR2(100);
BEGIN
SALES.EMPLOYEE_DELETE(EMPID,EMP_STATUS,EMP_ERROR);
DBMS_OUTPUT.PUT_LINE(EMP_STATUS||' '||EMP_ERROR);
END;
/
--INSERT CUSTOMER
/
DECLARE
  CUS_NAME    CUSTOMER.NAME%TYPE:=('&NAME');
  CUS_ADDRESS customer.address%type:=('&ADDRESS');
  CUS_WEBSITE customer.website%type:=('&WEBSITE');
  CUS_CREDIT customer.credit_limit%type:=&CREDIT_LIMIT;
  C_STATUS VARCHAR2(100);
  C_ERROR VARCHAR2(100);
BEGIN
  SALES.ADD_CUSTOMERS(CUS_NAME,CUS_ADDRESS,CUS_WEBSITE,CUS_CREDIT,C_STATUS,C_ERROR);
  DBMS_OUTPUT.PUT_LINE(C_STATUS||' '||C_ERROR);
END;
/
SELECT * FROM CUSTOMER;
--DELETE CUSTOMER
/
DECLARE
CUSTID CUSTOMER.CUSTOMER_ID%TYPE:=&CUSTOMER_ID;
C_STATUS VARCHAR2(100);
C_ERROR VARCHAR2(100);
BEGIN
SALES.REMOVE_CUSTOMERS(CUSTID,C_STATUS,C_ERROR);
DBMS_OUTPUT.PUT_LINE(C_STATUS||' '||C_ERROR);
END;
/

--ADD ORDER
/
DECLARE
 ORD_CUS_ID orders.customer_id%type:=&CUSTOMER_ID;
 ORD_STATUS orders.status%TYPE:=('&ORDERSTATUS');
 ORD_SALES_ID orders.salesman_id%TYPE:=&SALESMAN_ID;
 ORD_DATE orders.order_date%TYPE:=('&ORDER_DATE');
 O_STATUS VARCHAR2(100);
 O_ERROR VARCHAR2(100);
BEGIN
  SALES.ADD_ORDERS(ORD_CUS_ID,ORD_STATUS,ORD_SALES_ID,ORD_DATE,O_STATUS,O_ERROR);
  DBMS_OUTPUT.PUT_LINE(O_STATUS||' '||O_ERROR);
END;
/
SELECT * FROM ORDERS;
--CANCEL ORDER
/
DECLARE
ORD_ID ORDERS.ORDER_ID%TYPE:=&ORDER_ID;
O_STATUS VARCHAR2(100);
O_ERROR VARCHAR2(100);
BEGIN
SALES.CANCEL_ORDERS(ORD_ID,O_STATUS,O_ERROR);
DBMS_OUTPUT.PUT_LINE(O_STATUS||' '||O_ERROR);
END;
/
--ADD ORDER ITEMS
/
DECLARE
ORDITM_ORD_ID order_items.order_id%type:=&order_id;
ORDITM_PROD_ID order_items.product_id%type:=&product_id;
ORDITM_QNTY order_items.quantity%type:=&quantity;
ORDITM_UNITPRICE order_items.unit_price%type:=&unitprice;
OITM_STATUS VARCHAR2(100);
OITM_ERROR VARCHAR2(100);
BEGIN
  SALES.ADD_ORDER_ITEMS(ORDITM_ORD_ID,ORDITM_PROD_ID,ORDITM_QNTY,ORDITM_UNITPRICE,OITM_STATUS,OITM_ERROR);
  DBMS_OUTPUT.PUT_LINE(OITM_STATUS||' '||OITM_ERROR);
END;
/
SELECT * FROM ORDER_ITEMS;
--REMOVE ORDER ITEMS
/
DECLARE
ORDITM_ORDER_ID ORDER_ITEMS.ITEM_ID%TYPE:=&ORDERITEM_ID;
OITM_STATUS VARCHAR2(100);
OITM_ERROR VARCHAR2(100);
BEGIN
SALES.REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID,OITM_STATUS,OITM_ERROR);
DBMS_OUTPUT.PUT_LINE(OITM_STATUS||' '||OITM_ERROR);
END;
/

--ADD PRODUCT_CATEGORY
/
DECLARE
PROCAT_CAT_NAME PRODUCT_CATEGORIES.CATEGORY_NAME%type:=('&CATEGORYNAME');
PROCAT_STATUS VARCHAR2(100);
PROCAT_ERROR VARCHAR2(100);
BEGIN
  SALES.ADD_PRODUCT_CATEGORY(PROCAT_CAT_NAME,PROCAT_STATUS,PROCAT_ERROR);
  DBMS_OUTPUT.PUT_LINE(PROCAT_STATUS||' '||PROCAT_ERROR);
END;
/
SELECT * FROM PRODUCT_CATEGORIES;
--REMOVE PRODUCT CATEGORY
/
DECLARE
PROCAT_CAT_ID PRODUCT_CATEGORIES.CATEGORY_ID%type:=&CATEGORYID;
PROCAT_STATUS VARCHAR2(100);
PROCAT_ERROR VARCHAR2(100);
BEGIN
SALES.REMOVE_PRODUCT_CATEGORY(PROCAT_CAT_ID,PROCAT_STATUS,PROCAT_ERROR);
DBMS_OUTPUT.PUT_LINE(PROCAT_STATUS||' '||PROCAT_ERROR);
END;
/







