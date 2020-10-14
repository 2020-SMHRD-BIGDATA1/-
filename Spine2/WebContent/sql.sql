insert into Mem values ('a', 'a', '010-1111-2222', '³²')

create table Mem(
	ID VARCHAR2(100) PRIMARY KEY,
	PW VARCHAR2(100),
	TEL VARCHAR2(100),
	SEX VARCHAR2(30)
)
create table CS5(
	ID VARCHAR2(100),
	TM VARCHAR2(100) PRIMARY KEY,
	CSPINE NUMBER(15)
)
create table TS5(
	ID VARCHAR2(100),
	TM VARCHAR2(100) PRIMARY KEY,
	TSPINE NUMBER(15)
)
create table LUMBER5(
	ID VARCHAR2(100),
	TM VARCHAR2(100) PRIMARY KEY,
	LUMBER NUMBER(15)
)
create table RS5(
	ID VARCHAR2(100),
	TM VARCHAR2(100),
	RSHOULDER NUMBER(15)
)
create table LS5(
	ID VARCHAR2(100),
	TM VARCHAR2(100) PRIMARY KEY,
	LSHOULDER NUMBER(15)
)

create table LS53(
	ID VARCHAR2(100),
	TM date,
	LSHOULDER NUMBER(15)
)



drop table LS5
select * from Mem
select * from LS5
insert into LS53 values('a','2020-09-21','1')
insert into LS5 values('a','2020-09-22','2')
insert into LS5 values('a','2020-09-23','3')
insert into LS5 values('a','2020-09-24','4')
insert into LS5 values('a','2020-09-25','5')
insert into LS5 values('a','2020-09-26','6')
insert into LS5 values('a','2020-09-27','7')
SELECT * FROM CS5 WHERE ROWNUM<=5
select TM from CS5 where ID='a' and ROWNUM<=5 ORDER BY TM  DESC
SELECT * FROM CS5 WHERE ROWNUM<= 
select CSPINE from CS5 where ID='a' and ROWNUM<=5 ORDER BY TM DESC

select * from CS5 where ROW
(SELECT * FROM CS5 where ID='a' ORDER BY TM DESC)