<<<<<<< HEAD:project/src/main/webapp/WEB-INF/table.sql
create table team(
   name VARCHAR2(100),
   member VARCHAR2(100),
   win number,
   lose number,
   total number,
   ground VARCHAR2(100),
   leader VARCHAR2(100)
   
)

create table joinlist(
   jointeam varchar2(100)
   joinid varchar2(100)
)

CREATE TABLE matching (
num number primary key,
hometeam varchar2(200),
homepoint number,
awayteam varchar2(200),
awaypoint number,
matchdate varchar2(200),
ground varchar2(200),
successmatching varchar2(100)
)

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
category VARCHAR2(100))

)

CREATE TABLE joinlist(
   jointeam VARCHAR2(100),
   joinid VARCHAR2(100),
)
CREATE TABLE matching (
hometeam VARCHAR2(200),
homepoint NUMBER,
awayteam VARCHAR2(200),
awaypoint number,
matchdate VARCHAR2(200),
ground varchar2(200),
successmatching VARCHAR2(100)
)

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

CREATE SEQUENCE users4_seq;


CREATE TABLE CART(
num NUMBER,
product_name VARCHAR2(100),
id VARCHAR2(50),
product_count NUMBER,
price NUMBER,
total_price NUMBER,
saveFileName clob,
regdate DATE
);
insert into matching(num,hometeam,awayteam,matchdate,ground,successmatching)
		values (1,'농구팀','농구팀2','1월2일','일산','false')

CREATE SEQUENCE cart_seq;

<<<<<<< HEAD:project/src/main/webapp/WEB-INF/table.sql
create table team(
   name VARCHAR2(100),
   member VARCHAR2(100),
   win number,
   lose number,
   total number,
   ground VARCHAR2(100),
   leader VARCHAR2(100)  
)

create table joinlist(
   jointeam varchar2(100)
   joinid varchar2(100)
)

CREATE TABLE matching (
hometeam varchar2(200),
homepoint number,
awayteam varchar2(200),
awaypoint number,
matchdate varchar2(200),
ground varchar2(200),
successmatching varchar2(100)
)

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
category VARCHAR2(100))

)

CREATE TABLE joinlist(
   jointeam VARCHAR2(100),
   joinid VARCHAR2(100),
)
CREATE TABLE matching (
hometeam VARCHAR2(200),
homepoint NUMBER,
awayteam VARCHAR2(200),
awaypoint number,
matchdate VARCHAR2(200),
ground varchar2(200),
successmatching VARCHAR2(100)
)

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

CREATE SEQUENCE users4_seq;


CREATE TABLE CART(
num NUMBER,
product_name VARCHAR2(100),
id VARCHAR2(50),
product_count NUMBER,
price NUMBER,
total_price NUMBER,
saveFileName clob,
regdate DATE
);

CREATE SEQUENCE cart_seq;

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

CREATE SEQUENCE users4_seq;
