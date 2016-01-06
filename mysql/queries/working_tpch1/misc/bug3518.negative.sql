drop table if exists qa_dict_join_1;
drop table if exists qa_dict_join_2;

Create table qa_dict_join_1 (
CIDX 		INTEGER,
CBIGINT 	BIGINT,
CDECIMAL1 	DECIMAL(1),
CDECIMAL4 	DECIMAL(4),
CDECIMAL4_2 	DECIMAL(4,2),
CDECIMAL5 	DECIMAL(5),
CDECIMAL9 	DECIMAL(9),
CDECIMAL9_2 	DECIMAL(9,2),
CDECIMAL10 	DECIMAL(10),
CDECIMAL18 	DECIMAL(18),
CDECIMAL18_2 	DECIMAL(18,2),
CINTEGER 	INTEGER,
CSMALLINT 	SMALLINT,
CTINYINT 	TINYINT,
CDATE 		DATE,
CDATETIME 	DATETIME,
CCHAR1 	CHAR(1),
CCHAR2 	CHAR(2),
CCHAR3 	CHAR(3),
CCHAR4 	CHAR(4),
CCHAR5 	CHAR(5),
CCHAR6 	CHAR(6),
CCHAR7 	CHAR(7),
CCHAR8 	CHAR(8),
CCHAR9 	CHAR(9),
CCHAR255 	CHAR(255),
CVCHAR1 	VARCHAR(1),
CVCHAR2 	VARCHAR(2),
CVCHAR3 	VARCHAR(3),
CVCHAR4 	VARCHAR(4),
CVCHAR5 	VARCHAR(5),
CVCHAR6 	VARCHAR(6),
CVCHAR7 	VARCHAR(7),
CVCHAR8 	VARCHAR(8),
CVCHAR255 	VARCHAR(255)
) ENGINE=infinidb;

insert into qa_dict_join_1 values (1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into qa_dict_join_1 values (2,0,0,0,0,0,0,0,0,0,0,0,0,0,'1400-01-01','1400-01-01 00:00:00',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into qa_dict_join_1 values (3,0,-9,-9999,-99.99,-99999,-999999999,-9999999.99,-9999999999,-999999999999999999,-9999999999999999.99,-2147483646,-32766,-126,'1400-01-01','1400-01-01 00:00:00','a','aa','aaa','aaaa','aaaaa','aaaaaa','aaaaaaa','aaaaaaaa','aaaaaaaa','aaaaaaaaaa','a','aa','aaa','aaaa','aaaaa','aaaaaa','aaaaaaa','aaaaaaaa','aaaaaaaaaa');

Create table qa_dict_join_2 (
CIDX 		INTEGER,
CBIGINT 	BIGINT,
CDECIMAL1 	DECIMAL(1),
CDECIMAL4 	DECIMAL(4),
CDECIMAL4_2 	DECIMAL(4,2),
CDECIMAL5 	DECIMAL(5),
CDECIMAL9 	DECIMAL(9),
CDECIMAL9_2 	DECIMAL(9,2),
CDECIMAL10 	DECIMAL(10),
CDECIMAL18 	DECIMAL(18),
CDECIMAL18_2 	DECIMAL(18,2),
CINTEGER 	INTEGER,
CSMALLINT 	SMALLINT,
CTINYINT 	TINYINT,
CDATE 		DATE,
CDATETIME 	DATETIME,
CCHAR1 	CHAR(1),
CCHAR2 	CHAR(2),
CCHAR3 	CHAR(3),
CCHAR4 	CHAR(4),
CCHAR5 	CHAR(5),
CCHAR6 	CHAR(6),
CCHAR7 	CHAR(7),
CCHAR8 	CHAR(8),
CCHAR9 	CHAR(9),
CCHAR255 	CHAR(255),
CVCHAR1 	VARCHAR(1),
CVCHAR2 	VARCHAR(2),
CVCHAR3 	VARCHAR(3),
CVCHAR4 	VARCHAR(4),
CVCHAR5 	VARCHAR(5),
CVCHAR6 	VARCHAR(6),
CVCHAR7 	VARCHAR(7),
CVCHAR8 	VARCHAR(8),
CVCHAR255 	VARCHAR(255)
) ENGINE=infinidb;

insert into qa_dict_join_2 values (1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into qa_dict_join_2 values (2,0,0,0,0,0,0,0,0,0,0,0,0,0,'1400-01-01','1400-01-01 00:00:00',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into qa_dict_join_2 values (3,0,-9,-9999,-99.99,-99999,-999999999,-9999999.99,-9999999999,-999999999999999999,-9999999999999999.99,-2147483646,-32766,-126,'1400-01-01','1400-01-01 00:00:00','a','aa','aaa','aaaa','aaaaa','aaaaaa','aaaaaaa','aaaaaaaa','aaaaaaaa','aaaaaaaaaa','a','aa','aaa','aaaa','aaaaa','aaaaaa','aaaaaaa','aaaaaaaa','aaaaaaaaaa');

select a.cidx, b.cidx from qa_dict_join_1 a, qa_dict_join_2 b where a.CBIGINT = b.CBIGINT order by a.cidx;
select b.cidx from qa_dict_join_1 a, qa_dict_join_2 b where   a.CBIGINT = b.CBIGINT order by a.cidx;
select a.cidx, b.cidx from qa_dict_join_1 a, qa_dict_join_2 b where   a.CBIGINT = b.CBIGINT order by abs(a.cidx);
select abs(a.cidx), b.cidx from qa_dict_join_1 a, qa_dict_join_2 b where   a.CBIGINT = b.CBIGINT order by a.cidx;

