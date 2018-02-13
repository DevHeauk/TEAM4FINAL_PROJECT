create table team(
   name VARCHAR2(100),
   member VARCHAR2(100),
   win number,
   lose number,
   total number,
   ground VARCHAR2(100),
   leader VARCHAR2(100),
   content CLOB,
   saveFileName VARCHAR2(200),
   orgFileName VARCHAR2(200)
)

CREATE TABLE joinlist(
   jointeam VARCHAR2(100),
   joinid VARCHAR2(100),
)