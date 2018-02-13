CREATE TABLE users4(
num NUMBER PRIMARY KEY,
name VARCHAR2(100),
addr01 VARCHAR2(100),
addr02 VARCHAR2(100),
addr03 VARCHAR2(100),
team VARCHAR2(100),
id VARCHAR2(50),
pwd VARCHAR2(100),
email VARCHAR2(50),
career VARCHAR2(100),
money NUMBER CHECK(money >=0 and money <= 2100000000),
point NUMBER CHECK(point >=0),
b_position VARCHAR2(50),
responsibility VARCHAR2(50),
regdate DATE
);

create table product_order(
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

CREATE SEQUENCE users4_seq;



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


create table product_order(
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
