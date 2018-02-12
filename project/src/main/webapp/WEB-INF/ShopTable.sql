
CREATE TABLE SHOP4(
num NUMBER,
writer VARCHAR2(100),
title VARCHAR2(100),
client_ID VARCHAR2(100),
price NUMBER, 
content CLOB,
remainCount NUMBER,
orgfilename VARCHAR2(100),
savefilename VARCHAR2(100),
filesize NUMBER,
product_size VARCHAR2(100),
regdate DATE,
category VARCHAR2(100)
)

CREATE SEQUENCE SHOP4_seq;


CREATE TABLE product_order(
title VARCHAR2(100),
addr01 VARCHAR2(100),
addr02 CLOB,
addr03 VARCHAR2(100),
id VARCHAR2(50),
product_count NUMBER,
price NUMBER,
saveFileName VARCHAR2(200),
delivery_location VARCHAR2(50)
)

CREATE TABLE CART(
num NUMBER,
product_name VARCHAR2(100),
id VARCHAR2(50),
product_count NUMBER,
price NUMBER,
total_price NUMBER,
saveFileName clob
regdate DATE
);

CREATE SEQUENCE cart_seq;
