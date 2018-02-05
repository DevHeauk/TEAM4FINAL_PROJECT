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
money NUMBER CHECK(money >=0),
point NUMBER CHECK(point >=0),
b_position VARCHAR2(50),
responsibility VARCHAR2(50),
regdate DATE
);

CREATE SEQUENCE users4_seq;