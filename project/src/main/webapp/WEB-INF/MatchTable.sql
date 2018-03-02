CREATE TABLE matching (
num NUMBER PRIMARY KEY,
hometeam VARCHAR2(200),
homepoint NUMBER,
awayteam VARCHAR2(200),
awaypoint number,
matchdate VARCHAR2(200),
ground varchar2(200),
successmatching VARCHAR2(100)
saveFileName_H VARCHAR2(200),
saveFileName_A VARCHAR2(200)
)

CREATE SEQUENCE match_seq;
