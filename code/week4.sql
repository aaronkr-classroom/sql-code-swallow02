-- 문자의 릴레이션

CREATE TABLE char_data_types (
char_column char(10),
varchar_column varchar(10),
text_column text
);
INSERT INTO char_data_types
VALUES
('abc','abc','abc'),
('defghij','defghij','defghij');


SELECT * FROM char_data_types;


-- 숫자  릴레이션 만들기


CREATE TABLE num_data_types(
numeric_column numeric(20,5),
real_colunm real, --소수점이하 6자리
double_doulunm double precision --소수점이하 15자리
);

INSERT INTO num_data_types
VALUES
(.7,.7,.7),
(2.13579,2.13579,2.13579),
(2.1357987654321,2.1357987654321,2.1357987654321);

SELECT * FROM num_data_types;



--날짜/시간 릴레이션 만들기

CREATE TABLE date_time_types(
timestamp_col timestamp with time zone, --PostgreSQL에서 timestampz 사용 가능
interval_col interval
);


INSERT INTO date_time_types
VALUES
('2024-09-24 12:10 kst','2 days'),
('2024-10-01 08:00 +9','1 month'),
('2024-10-31 00:00 Australia/Melbourne','1 century'),
(now(),'1 week');


SELECT  
timestamp_col, 
interval_col,
timestamp_col - interval_col AS new_date
FROM date_time_types;


--CASTS 함수() 

 SELECT timestamp_col, CAST(timestamp_col AS varchar(10))
 FROM date_time_types

 SELECT numeric_column, 
 CAST(numeric_column AS integer),
 CAST(numeric_column AS text)
 FROM num_data_types;


 SELECT CAST(char_column AS integer) FROM char_data_types;




