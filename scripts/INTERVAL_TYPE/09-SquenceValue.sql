!4 XG-TYPE-INTERVAL-SEQ-001 序列值作为偏移量
//创建序列值
CREATE SEQUENCE seq_interval_offset_a START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_b START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_c START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_d START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_e START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_f START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_g START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_h START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_i START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_j START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_k START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_l START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_m START WITH 1 INCREMENT BY 1;

//创建表
CREATE TABLE t_table_001a (id INT PRIMARY KEY , base INTERVAL YEAR , calc INTERVAL YEAR);
CREATE TABLE t_table_001b (id INT PRIMARY KEY , base INTERVAL MONTH , calc INTERVAL MONTH);
CREATE TABLE t_table_001c (id INT PRIMARY KEY , base INTERVAL DAY , calc INTERVAL DAY);
CREATE TABLE t_table_001d (id INT PRIMARY KEY , base INTERVAL HOUR , calc INTERVAL HOUR);
CREATE TABLE t_table_001e (id INT PRIMARY KEY , base INTERVAL MINUTE , calc INTERVAL MINUTE);
CREATE TABLE t_table_001f (id INT PRIMARY KEY , base INTERVAL SECOND , calc INTERVAL SECOND);
CREATE TABLE t_table_001g (id INT PRIMARY KEY , base INTERVAL YEAR TO MONTH , calc INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_001h (id INT PRIMARY KEY , base INTERVAL DAY TO HOUR , calc INTERVAL DAY TO HOUR);
CREATE TABLE t_table_001i (id INT PRIMARY KEY , base INTERVAL DAY TO MINUTE , calc INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_001j (id INT PRIMARY KEY , base INTERVAL DAY TO SECOND , calc INTERVAL DAY TO SECOND);
CREATE TABLE t_table_001k (id INT PRIMARY KEY , base INTERVAL HOUR TO MINUTE , calc INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_001l (id INT PRIMARY KEY , base INTERVAL HOUR TO SECOND , calc INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_001m (id INT PRIMARY KEY , base INTERVAL MINUTE TO SECOND , calc INTERVAL MINUTE TO SECOND);

//插入数据
INSERT INTO t_table_001a SELECT 1 , '8' , '8'::INTERVAL YEAR + seq_val_a FROM (SELECT seq_interval_offset_a.NEXTVAL AS seq_val_a FROM DUAL);
INSERT INTO t_table_001b SELECT 1 , '8' , '8'::INTERVAL MONTH + seq_val_b FROM (SELECT seq_interval_offset_b.NEXTVAL AS seq_val_b FROM DUAL);
INSERT INTO t_table_001c SELECT 1 , '8' , '8'::INTERVAL DAY + seq_val_c FROM (SELECT seq_interval_offset_c.NEXTVAL AS seq_val_c FROM DUAL);
INSERT INTO t_table_001d SELECT 1 , '8' , '8'::INTERVAL HOUR + seq_val_d FROM (SELECT seq_interval_offset_d.NEXTVAL AS seq_val_d FROM DUAL);
INSERT INTO t_table_001e SELECT 1 , '8' , '8'::INTERVAL MINUTE + seq_val_e FROM (SELECT seq_interval_offset_e.NEXTVAL AS seq_val_e FROM DUAL);
INSERT INTO t_table_001f SELECT 1 , '8' , '8'::INTERVAL SECOND + seq_val_f FROM (SELECT seq_interval_offset_f.NEXTVAL AS seq_val_f FROM DUAL);
INSERT INTO t_table_001g SELECT 1 , '8' , '8'::INTERVAL YEAR TO MONTH + seq_val_g FROM (SELECT seq_interval_offset_g.NEXTVAL AS seq_val_g FROM DUAL);
INSERT INTO t_table_001h SELECT 1 , '8' , '8'::INTERVAL DAY TO HOUR + seq_val_h FROM (SELECT seq_interval_offset_h.NEXTVAL AS seq_val_h FROM DUAL);
INSERT INTO t_table_001i SELECT 1 , '8' , '8'::INTERVAL DAY TO MINUTE + seq_val_i FROM (SELECT seq_interval_offset_i.NEXTVAL AS seq_val_i FROM DUAL);
INSERT INTO t_table_001j SELECT 1 , '8' , '8'::INTERVAL DAY TO SECOND + seq_val_j FROM (SELECT seq_interval_offset_j.NEXTVAL AS seq_val_j FROM DUAL);
INSERT INTO t_table_001k SELECT 1 , '8' , '8'::INTERVAL HOUR TO MINUTE + seq_val_k FROM (SELECT seq_interval_offset_k.NEXTVAL AS seq_val_k FROM DUAL);
INSERT INTO t_table_001l SELECT 1 , '8' , '8'::INTERVAL HOUR TO SECOND + seq_val_l FROM (SELECT seq_interval_offset_l.NEXTVAL AS seq_val_l FROM DUAL);
INSERT INTO t_table_001m SELECT 1 , '8' , '8'::INTERVAL MINUTE TO SECOND + seq_val_m FROM (SELECT seq_interval_offset_m.NEXTVAL AS seq_val_m FROM DUAL);

//查询结果
<预期结果 : >
SELECT * FROM t_table_001a;
<预期结果 : >
SELECT * FROM t_table_001b;
<预期结果 : >
SELECT * FROM t_table_001c;
<预期结果 : >
SELECT * FROM t_table_001d;
<预期结果 : >
SELECT * FROM t_table_001e;
<预期结果 : >
SELECT * FROM t_table_001f;
<预期结果 : >
SELECT * FROM t_table_001g;
<预期结果 : >
SELECT * FROM t_table_001h;
<预期结果 : >
SELECT * FROM t_table_001i;
<预期结果 : >
SELECT * FROM t_table_001j;
<预期结果 : >
SELECT * FROM t_table_001k;
<预期结果 : >
SELECT * FROM t_table_001l;
<预期结果 : >
SELECT * FROM t_table_001m;

//插入数据
INSERT INTO t_table_001a SELECT 2 , '8' , '8'::INTERVAL YEAR + seq_val_a FROM (SELECT seq_interval_offset_a.NEXTVAL AS seq_val_a FROM DUAL);
INSERT INTO t_table_001b SELECT 2 , '8' , '8'::INTERVAL MONTH + seq_val_b FROM (SELECT seq_interval_offset_b.NEXTVAL AS seq_val_b FROM DUAL);
INSERT INTO t_table_001c SELECT 2 , '8' , '8'::INTERVAL DAY + seq_val_c FROM (SELECT seq_interval_offset_c.NEXTVAL AS seq_val_c FROM DUAL);
INSERT INTO t_table_001d SELECT 2 , '8' , '8'::INTERVAL HOUR + seq_val_d FROM (SELECT seq_interval_offset_d.NEXTVAL AS seq_val_d FROM DUAL);
INSERT INTO t_table_001e SELECT 2 , '8' , '8'::INTERVAL MINUTE + seq_val_e FROM (SELECT seq_interval_offset_e.NEXTVAL AS seq_val_e FROM DUAL);
INSERT INTO t_table_001f SELECT 2 , '8' , '8'::INTERVAL SECOND + seq_val_f FROM (SELECT seq_interval_offset_f.NEXTVAL AS seq_val_f FROM DUAL);
INSERT INTO t_table_001g SELECT 2 , '8' , '8'::INTERVAL YEAR TO MONTH + seq_val_g FROM (SELECT seq_interval_offset_g.NEXTVAL AS seq_val_g FROM DUAL);
INSERT INTO t_table_001h SELECT 2 , '8' , '8'::INTERVAL DAY TO HOUR + seq_val_h FROM (SELECT seq_interval_offset_h.NEXTVAL AS seq_val_h FROM DUAL);
INSERT INTO t_table_001i SELECT 2 , '8' , '8'::INTERVAL DAY TO MINUTE + seq_val_i FROM (SELECT seq_interval_offset_i.NEXTVAL AS seq_val_i FROM DUAL);
INSERT INTO t_table_001j SELECT 2 , '8' , '8'::INTERVAL DAY TO SECOND + seq_val_j FROM (SELECT seq_interval_offset_j.NEXTVAL AS seq_val_j FROM DUAL);
INSERT INTO t_table_001k SELECT 2 , '8' , '8'::INTERVAL HOUR TO MINUTE + seq_val_k FROM (SELECT seq_interval_offset_k.NEXTVAL AS seq_val_k FROM DUAL);
INSERT INTO t_table_001l SELECT 2 , '8' , '8'::INTERVAL HOUR TO SECOND + seq_val_l FROM (SELECT seq_interval_offset_l.NEXTVAL AS seq_val_l FROM DUAL);
INSERT INTO t_table_001m SELECT 2 , '8' , '8'::INTERVAL MINUTE TO SECOND + seq_val_m FROM (SELECT seq_interval_offset_m.NEXTVAL AS seq_val_m FROM DUAL);

//查询结果
<预期结果 : >
SELECT * FROM t_table_001a WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001b WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001c WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001d WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001e WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001f WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001g WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001h WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001i WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001j WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001k WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001l WHERE id = 2;
<预期结果 : >
SELECT * FROM t_table_001m WHERE id = 2;

//删除表
DROP TABLE t_table_001a;
DROP TABLE t_table_001b;
DROP TABLE t_table_001c;
DROP TABLE t_table_001d;
DROP TABLE t_table_001e;
DROP TABLE t_table_001f;
DROP TABLE t_table_001g;
DROP TABLE t_table_001h;
DROP TABLE t_table_001i;
DROP TABLE t_table_001j;
DROP TABLE t_table_001k;
DROP TABLE t_table_001l;
DROP TABLE t_table_001m;

//删除序列值
DROP SEQUENCE seq_interval_offset_a;
DROP SEQUENCE seq_interval_offset_b;
DROP SEQUENCE seq_interval_offset_c;
DROP SEQUENCE seq_interval_offset_d;
DROP SEQUENCE seq_interval_offset_e;
DROP SEQUENCE seq_interval_offset_f;
DROP SEQUENCE seq_interval_offset_g;
DROP SEQUENCE seq_interval_offset_h;
DROP SEQUENCE seq_interval_offset_i;
DROP SEQUENCE seq_interval_offset_j;
DROP SEQUENCE seq_interval_offset_k;
DROP SEQUENCE seq_interval_offset_l;
DROP SEQUENCE seq_interval_offset_m;

!4 XG-TYPE-INTERVAL-SEQ-002 序列配合函数作为默认值
//创建序列值
CREATE SEQUENCE seq_min_increment_a START WITH 2;
CREATE SEQUENCE seq_min_increment_b START WITH 2;
CREATE SEQUENCE seq_min_increment_c START WITH 2;
CREATE SEQUENCE seq_min_increment_d START WITH 2;
CREATE SEQUENCE seq_min_increment_e START WITH 2;
CREATE SEQUENCE seq_min_increment_f START WITH 2;
CREATE SEQUENCE seq_min_increment_g START WITH 2;
CREATE SEQUENCE seq_min_increment_h START WITH 2;
CREATE SEQUENCE seq_min_increment_i START WITH 2;
CREATE SEQUENCE seq_min_increment_j START WITH 2;
CREATE SEQUENCE seq_min_increment_k START WITH 2;
CREATE SEQUENCE seq_min_increment_l START WITH 2;
CREATE SEQUENCE seq_min_increment_m START WITH 2;

//创建表
CREATE TABLE t_table_002a (id INT PRIMARY KEY , start1 INTERVAL YEAR DEFAULT ('2'::INTERVAL YEAR + TO_CHAR(seq_min_increment_a.NEXTVAL)));
CREATE TABLE t_table_002b (id INT PRIMARY KEY , start1 INTERVAL MONTH DEFAULT ('2'::INTERVAL MONTH + TO_CHAR(seq_min_increment_b.NEXTVAL)));
CREATE TABLE t_table_002c (id INT PRIMARY KEY , start1 INTERVAL DAY DEFAULT ('2'::INTERVAL DAY + TO_CHAR(seq_min_increment_c.NEXTVAL)));
CREATE TABLE t_table_002d (id INT PRIMARY KEY , start1 INTERVAL HOUR DEFAULT ('2'::INTERVAL HOUR + TO_CHAR(seq_min_increment_d.NEXTVAL)));
CREATE TABLE t_table_002e (id INT PRIMARY KEY , start1 INTERVAL MINUTE DEFAULT ('2'::INTERVAL MINUTE + TO_CHAR(seq_min_increment_e.NEXTVAL)));
CREATE TABLE t_table_002f (id INT PRIMARY KEY , start1 INTERVAL SECOND DEFAULT ('2'::INTERVAL SECOND + TO_CHAR(seq_min_increment_f.NEXTVAL)));
CREATE TABLE t_table_002g (id INT PRIMARY KEY , start1 INTERVAL YEAR TO MONTH DEFAULT ('2'::INTERVAL YEAR TO MONTH + TO_CHAR(seq_min_increment_g.NEXTVAL)));
CREATE TABLE t_table_002h (id INT PRIMARY KEY , start1 INTERVAL DAY TO HOUR DEFAULT ('2'::INTERVAL DAY TO HOUR + TO_CHAR(seq_min_increment_h.NEXTVAL)));
CREATE TABLE t_table_002i (id INT PRIMARY KEY , start1 INTERVAL DAY TO MINUTE DEFAULT ('2'::INTERVAL DAY TO MINUTE + TO_CHAR(seq_min_increment_i.NEXTVAL)));
CREATE TABLE t_table_002j (id INT PRIMARY KEY , start1 INTERVAL DAY TO SECOND DEFAULT ('2'::INTERVAL DAY TO SECOND + TO_CHAR(seq_min_increment_j.NEXTVAL)));
CREATE TABLE t_table_002k (id INT PRIMARY KEY , start1 INTERVAL HOUR TO MINUTE DEFAULT ('2'::INTERVAL HOUR TO MINUTE + TO_CHAR(seq_min_increment_k.NEXTVAL)));
CREATE TABLE t_table_002l (id INT PRIMARY KEY , start1 INTERVAL HOUR TO SECOND DEFAULT ('2'::INTERVAL HOUR TO SECOND + TO_CHAR(seq_min_increment_l.NEXTVAL)));
CREATE TABLE t_table_002m (id INT PRIMARY KEY , start1 INTERVAL MINUTE TO SECOND DEFAULT ('2'::INTERVAL MINUTE TO SECOND + TO_CHAR(seq_min_increment_m.NEXTVAL)));

//插入数据
INSERT INTO t_table_002a(id) VALUES (1);
INSERT INTO t_table_002b(id) VALUES (1);
INSERT INTO t_table_002c(id) VALUES (1);
INSERT INTO t_table_002d(id) VALUES (1);
INSERT INTO t_table_002e(id) VALUES (1);
INSERT INTO t_table_002f(id) VALUES (1);
INSERT INTO t_table_002g(id) VALUES (1);
INSERT INTO t_table_002h(id) VALUES (1);
INSERT INTO t_table_002i(id) VALUES (1);
INSERT INTO t_table_002j(id) VALUES (1);
INSERT INTO t_table_002k(id) VALUES (1);
INSERT INTO t_table_002l(id) VALUES (1);
INSERT INTO t_table_002m(id) VALUES (1);

//查询结果
<预期结果 : 1 | 4-0>
SELECT * FROM t_table_002a;
<预期结果 : 1 | 0-4>
SELECT * FROM t_table_002b;
<预期结果 : 1 | 4 0:00:00>
SELECT * FROM t_table_002c;
<预期结果 : 1 | 4:00:00>
SELECT * FROM t_table_002d;
<预期结果 : 1 | 0:04:00>
SELECT * FROM t_table_002e;
<预期结果 : 1 | 0:00:04>
SELECT * FROM t_table_002f;
<预期结果 : 1 | 0-4>
SELECT * FROM t_table_002g;
<预期结果 : 1 | 4:00:00>
SELECT * FROM t_table_002h;
<预期结果 : 1 | 0:04:00>
SELECT * FROM t_table_002i;
<预期结果 : 1 | 0:00:04>
SELECT * FROM t_table_002j;
<预期结果 : 1 | 0:04:00>
SELECT * FROM t_table_002k;
<预期结果 : 1 | 0:00:04>
SELECT * FROM t_table_002l;
<预期结果 : 1 | 0:00:04>
SELECT * FROM t_table_002m;

//插入数据
INSERT INTO t_table_002a(id) VALUES (2);
INSERT INTO t_table_002b(id) VALUES (2);
INSERT INTO t_table_002c(id) VALUES (2);
INSERT INTO t_table_002d(id) VALUES (2);
INSERT INTO t_table_002e(id) VALUES (2);
INSERT INTO t_table_002f(id) VALUES (2);
INSERT INTO t_table_002g(id) VALUES (2);
INSERT INTO t_table_002h(id) VALUES (2);
INSERT INTO t_table_002i(id) VALUES (2);
INSERT INTO t_table_002j(id) VALUES (2);
INSERT INTO t_table_002k(id) VALUES (2);
INSERT INTO t_table_002l(id) VALUES (2);
INSERT INTO t_table_002m(id) VALUES (2);

//查询结果
<预期结果 : 2 | 5-0>
SELECT * FROM t_table_002a WHERE id = 2;
<预期结果 : 2 | 0-5>
SELECT * FROM t_table_002b WHERE id = 2;
<预期结果 : 2 | 5 0:00:00>
SELECT * FROM t_table_002c WHERE id = 2;
<预期结果 : 2 | 5:00:00>
SELECT * FROM t_table_002d WHERE id = 2;
<预期结果 : 2 | 0:05:00>
SELECT * FROM t_table_002e WHERE id = 2;
<预期结果 : 2 | 0:00:05>
SELECT * FROM t_table_002f WHERE id = 2;
<预期结果 : 2 | 0-5>
SELECT * FROM t_table_002g WHERE id = 2;
<预期结果 : 2 | 5:00:00>
SELECT * FROM t_table_002h WHERE id = 2;
<预期结果 : 2 | 0:05:00>
SELECT * FROM t_table_002i WHERE id = 2;
<预期结果 : 2 | 0:00:05>
SELECT * FROM t_table_002j WHERE id = 2;
<预期结果 : 2 | 0:05:00>
SELECT * FROM t_table_002k WHERE id = 2;
<预期结果 : 2 | 0:00:05>
SELECT * FROM t_table_002l WHERE id = 2;
<预期结果 : 2 | 0:00:05>
SELECT * FROM t_table_002m WHERE id = 2;

//删除表
DROP TABLE t_table_002a;
DROP TABLE t_table_002b;
DROP TABLE t_table_002c;
DROP TABLE t_table_002d;
DROP TABLE t_table_002e;
DROP TABLE t_table_002f;
DROP TABLE t_table_002g;
DROP TABLE t_table_002h;
DROP TABLE t_table_002i;
DROP TABLE t_table_002j;
DROP TABLE t_table_002k;
DROP TABLE t_table_002l;
DROP TABLE t_table_002m;

//删除序列值
DROP SEQUENCE seq_min_increment_a;
DROP SEQUENCE seq_min_increment_b;
DROP SEQUENCE seq_min_increment_c;
DROP SEQUENCE seq_min_increment_d;
DROP SEQUENCE seq_min_increment_e;
DROP SEQUENCE seq_min_increment_f;
DROP SEQUENCE seq_min_increment_g;
DROP SEQUENCE seq_min_increment_h;
DROP SEQUENCE seq_min_increment_i;
DROP SEQUENCE seq_min_increment_j;
DROP SEQUENCE seq_min_increment_k;
DROP SEQUENCE seq_min_increment_l;
DROP SEQUENCE seq_min_increment_m;

!4 XG-TYPE-INTERVAL-SEQ-003 触发器转换序列
//创建序列值
CREATE SEQUENCE seq_to_interval_a START WITH 80 INCREMENT BY 10;
CREATE SEQUENCE seq_to_interval_b START WITH 08 INCREMENT BY 1;
CREATE SEQUENCE seq_to_interval_c START WITH 800000 INCREMENT BY 100000;
CREATE SEQUENCE seq_to_interval_d START WITH 80000 INCREMENT BY 10000;
CREATE SEQUENCE seq_to_interval_e START WITH 00800 INCREMENT BY 100;
CREATE SEQUENCE seq_to_interval_f START WITH 00008 INCREMENT BY 1;
CREATE SEQUENCE seq_to_interval_g START WITH 08 INCREMENT BY 1;
CREATE SEQUENCE seq_to_interval_h START WITH 80000 INCREMENT BY 10000;
CREATE SEQUENCE seq_to_interval_i START WITH 00800 INCREMENT BY 100;
CREATE SEQUENCE seq_to_interval_j START WITH 00008 INCREMENT BY 1;
CREATE SEQUENCE seq_to_interval_k START WITH 00800 INCREMENT BY 100;
CREATE SEQUENCE seq_to_interval_l START WITH 00008 INCREMENT BY 1;
CREATE SEQUENCE seq_to_interval_m START WITH 00008 INCREMENT BY 1;

//创建表
CREATE TABLE t_table_003a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_003b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_003c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_003d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_003e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_003f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_003g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_003h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_003i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_003j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_003k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_003l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_003m (id INT , c1 INTERVAL MINUTE TO SECOND);


//创建 INTERVAL YEAR 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_a
BEFORE INSERT ON t_table_003a
FOR EACH ROW
DECLARE
v_seq_val_a NUMBER;
v_interval_str_a VARCHAR2(10);
BEGIN
v_seq_val_a := seq_to_interval_a.NEXTVAL;
v_interval_str_a := SUBSTR(TO_CHAR(v_seq_val_a , 'FM00') , 1 , 1) || '-' || SUBSTR(TO_CHAR(v_seq_val_a , 'FM00') , 2 , 1);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_a) AS INTERVAL YEAR);
END;
/

//创建 INTERVAL MONTH 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_b
BEFORE INSERT ON t_table_003b
FOR EACH ROW
DECLARE
v_seq_val_b NUMBER;
v_interval_str_b VARCHAR2(10);
BEGIN
v_seq_val_b := seq_to_interval_b.NEXTVAL;
v_interval_str_b := SUBSTR(TO_CHAR(v_seq_val_b , 'FM00') , 1 , 1) || '-' || SUBSTR(TO_CHAR(v_seq_val_b , 'FM00') , 2 , 1);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_b) AS INTERVAL MONTH);
END;
/

//创建 INTERVAL DAY 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_c
BEFORE INSERT ON t_table_003c
FOR EACH ROW
DECLARE
v_seq_val_c NUMBER;
v_interval_str_c VARCHAR2(10);
BEGIN
v_seq_val_c := seq_to_interval_c.NEXTVAL;
v_interval_str_c := SUBSTR(TO_CHAR(v_seq_val_c , 'FM000000') , 1 , 1) || ' ' || SUBSTR(TO_CHAR(v_seq_val_c , 'FM000000') , 2 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_c , 'FM000000') , 3 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_c , 'FM000000') , 5 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_c) AS INTERVAL DAY);
END;
/

//创建 INTERVAL HOUR 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_d
BEFORE INSERT ON t_table_003d
FOR EACH ROW
DECLARE
v_seq_val_d NUMBER;
v_interval_str_d VARCHAR2(10);
BEGIN
v_seq_val_d := seq_to_interval_d.NEXTVAL;
v_interval_str_d := SUBSTR(TO_CHAR(v_seq_val_d , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_d , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_d , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_d) AS INTERVAL HOUR);
END;
/

//创建 INTERVAL MINUTE 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_e
BEFORE INSERT ON t_table_003e
FOR EACH ROW
DECLARE
v_seq_val_e NUMBER;
v_interval_str_e VARCHAR2(10);
BEGIN
v_seq_val_e := seq_to_interval_e.NEXTVAL;
v_interval_str_e := SUBSTR(TO_CHAR(v_seq_val_e , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_e , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_e , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_e) AS INTERVAL MINUTE);
END;
/

//创建 INTERVAL SECOND 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_f
BEFORE INSERT ON t_table_003f
FOR EACH ROW
DECLARE
v_seq_val_f NUMBER;
v_interval_str_f VARCHAR2(10);
BEGIN
v_seq_val_f := seq_to_interval_f.NEXTVAL;
v_interval_str_f := SUBSTR(TO_CHAR(v_seq_val_f , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_f , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_f , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_f) AS INTERVAL SECOND);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_g
BEFORE INSERT ON t_table_003g
FOR EACH ROW
DECLARE
v_seq_val_g NUMBER;
v_interval_str_g VARCHAR2(10);
BEGIN
v_seq_val_g := seq_to_interval_g.NEXTVAL;
v_interval_str_g := SUBSTR(TO_CHAR(v_seq_val_g , 'FM00') , 1 , 1) || '-' || SUBSTR(TO_CHAR(v_seq_val_g , 'FM00') , 2 , 1);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_g) AS INTERVAL YEAR TO MONTH);
END;
/

//创建 INTERVAL DAY TO HOUR 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_h
BEFORE INSERT ON t_table_003h
FOR EACH ROW
DECLARE
v_seq_val_h NUMBER;
v_interval_str_h VARCHAR2(10);
BEGIN
v_seq_val_h := seq_to_interval_h.NEXTVAL;
v_interval_str_h := SUBSTR(TO_CHAR(v_seq_val_h , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_h , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_h , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_h) AS INTERVAL DAY TO HOUR);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_i
BEFORE INSERT ON t_table_003i
FOR EACH ROW
DECLARE
v_seq_val_i NUMBER;
v_interval_str_i VARCHAR2(10);
BEGIN
v_seq_val_i := seq_to_interval_i.NEXTVAL;
v_interval_str_i := SUBSTR(TO_CHAR(v_seq_val_i , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_i , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_i , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_i) AS INTERVAL DAY TO MINUTE);
END;
/

//创建 INTERVAL DAY TO SECOND 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_j
BEFORE INSERT ON t_table_003j
FOR EACH ROW
DECLARE
v_seq_val_j NUMBER;
v_interval_str_j VARCHAR2(10);
BEGIN
v_seq_val_j := seq_to_interval_j.NEXTVAL;
v_interval_str_j := SUBSTR(TO_CHAR(v_seq_val_j , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_j , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_j , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_j) AS INTERVAL DAY TO SECOND);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_k
BEFORE INSERT ON t_table_003k
FOR EACH ROW
DECLARE
v_seq_val_k NUMBER;
v_interval_str_k VARCHAR2(10);
BEGIN
v_seq_val_k := seq_to_interval_k.NEXTVAL;
v_interval_str_k := SUBSTR(TO_CHAR(v_seq_val_k , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_k , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_k , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_k) AS INTERVAL HOUR TO MINUTE);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_l
BEFORE INSERT ON t_table_003l
FOR EACH ROW
DECLARE
v_seq_val_l NUMBER;
v_interval_str_l VARCHAR2(10);
BEGIN
v_seq_val_l := seq_to_interval_l.NEXTVAL;
v_interval_str_l := SUBSTR(TO_CHAR(v_seq_val_l , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_l , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_l , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_l) AS INTERVAL HOUR TO SECOND);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型触发器
CREATE OR REPLACE TRIGGER trg_interval_assign_m
BEFORE INSERT ON t_table_003m
FOR EACH ROW
DECLARE
v_seq_val_m NUMBER;
v_interval_str_m VARCHAR2(10);
BEGIN
v_seq_val_m := seq_to_interval_m.NEXTVAL;
v_interval_str_m := SUBSTR(TO_CHAR(v_seq_val_m , 'FM00000') , 1 , 1) || ':' || SUBSTR(TO_CHAR(v_seq_val_m , 'FM00000') , 2 , 2) || ':' || SUBSTR(TO_CHAR(v_seq_val_m , 'FM00000') , 4 , 2);
:NEW.c1 := CAST(TO_CHAR(v_interval_str_m) AS INTERVAL MINUTE TO SECOND);
END;
/

//插入数据
INSERT INTO t_table_003a(id) VALUES (100);
INSERT INTO t_table_003b(id) VALUES (100);
INSERT INTO t_table_003c(id) VALUES (100);
INSERT INTO t_table_003d(id) VALUES (100);
INSERT INTO t_table_003e(id) VALUES (100);
INSERT INTO t_table_003f(id) VALUES (100);
INSERT INTO t_table_003g(id) VALUES (100);
INSERT INTO t_table_003h(id) VALUES (100);
INSERT INTO t_table_003i(id) VALUES (100);
INSERT INTO t_table_003j(id) VALUES (100);
INSERT INTO t_table_003k(id) VALUES (100);
INSERT INTO t_table_003l(id) VALUES (100);
INSERT INTO t_table_003m(id) VALUES (100);

//查询结果
<预期结果 : 100 | 8-0>
SELECT * FROM t_table_003a;
<预期结果 : 100 | 0-8>
SELECT * FROM t_table_003b;
<预期结果 : 100 | 8 0:00:00>
SELECT * FROM t_table_003c;
<预期结果 : 100 | 8:00:00>
SELECT * FROM t_table_003d;
<预期结果 : 100 | 0:08:00>
SELECT * FROM t_table_003e;
<预期结果 : 100 | 0:00:08>
SELECT * FROM t_table_003f;
<预期结果 : 100 | 0-8>
SELECT * FROM t_table_003g;
<预期结果 : 100 | 8:00:00>
SELECT * FROM t_table_003h;
<预期结果 : 100 | 0:08:00>
SELECT * FROM t_table_003i;
<预期结果 : 100 | 0:00:08>
SELECT * FROM t_table_003j;
<预期结果 : 100 | 0:08:00>
SELECT * FROM t_table_003k;
<预期结果 : 100 | 0:00:08>
SELECT * FROM t_table_003l;
<预期结果 : 100 | 0:00:08>
SELECT * FROM t_table_003m;

//插入数据
INSERT INTO t_table_003a(id) VALUES (101);
INSERT INTO t_table_003b(id) VALUES (101);
INSERT INTO t_table_003c(id) VALUES (101);
INSERT INTO t_table_003d(id) VALUES (101);
INSERT INTO t_table_003e(id) VALUES (101);
INSERT INTO t_table_003f(id) VALUES (101);
INSERT INTO t_table_003g(id) VALUES (101);
INSERT INTO t_table_003h(id) VALUES (101);
INSERT INTO t_table_003i(id) VALUES (101);
INSERT INTO t_table_003j(id) VALUES (101);
INSERT INTO t_table_003k(id) VALUES (101);
INSERT INTO t_table_003l(id) VALUES (101);
INSERT INTO t_table_003m(id) VALUES (101);

//查询结果
<预期结果 : 101 | 9-0>
SELECT * FROM t_table_003a WHERE id =101;
<预期结果 : 101 | 0-9>
SELECT * FROM t_table_003b WHERE id =101;
<预期结果 : 101 | 9 0:00:00>
SELECT * FROM t_table_003c WHERE id =101;
<预期结果 : 101 | 9:00:00>
SELECT * FROM t_table_003d WHERE id =101;
<预期结果 : 101 | 0:09:00>
SELECT * FROM t_table_003e WHERE id =101;
<预期结果 : 101 | 0:00:09>
SELECT * FROM t_table_003f WHERE id =101;
<预期结果 : 101 | 0-9>
SELECT * FROM t_table_003g WHERE id =101;
<预期结果 : 101 | 9:00:00>
SELECT * FROM t_table_003h WHERE id =101;
<预期结果 : 101 | 0:09:00>
SELECT * FROM t_table_003i WHERE id =101;
<预期结果 : 101 | 0:00:09>
SELECT * FROM t_table_003j WHERE id =101;
<预期结果 : 101 | 0:09:00>
SELECT * FROM t_table_003k WHERE id =101;
<预期结果 : 101 | 0:00:09>
SELECT * FROM t_table_003l WHERE id =101;
<预期结果 : 101 | 0:00:09>
SELECT * FROM t_table_003m WHERE id =101;

//删除触发器
DROP TRIGGER trg_interval_assign_a;
DROP TRIGGER trg_interval_assign_b;
DROP TRIGGER trg_interval_assign_c;
DROP TRIGGER trg_interval_assign_d;
DROP TRIGGER trg_interval_assign_e;
DROP TRIGGER trg_interval_assign_f;
DROP TRIGGER trg_interval_assign_g;
DROP TRIGGER trg_interval_assign_h;
DROP TRIGGER trg_interval_assign_i;
DROP TRIGGER trg_interval_assign_j;
DROP TRIGGER trg_interval_assign_k;
DROP TRIGGER trg_interval_assign_l;
DROP TRIGGER trg_interval_assign_m;

//删除表
DROP TABLE t_table_003a;
DROP TABLE t_table_003b;
DROP TABLE t_table_003c;
DROP TABLE t_table_003d;
DROP TABLE t_table_003e;
DROP TABLE t_table_003f;
DROP TABLE t_table_003g;
DROP TABLE t_table_003h;
DROP TABLE t_table_003i;
DROP TABLE t_table_003j;
DROP TABLE t_table_003k;
DROP TABLE t_table_003l;
DROP TABLE t_table_003m;

//删除序列值
DROP SEQUENCE seq_to_interval_a;
DROP SEQUENCE seq_to_interval_b;
DROP SEQUENCE seq_to_interval_c;
DROP SEQUENCE seq_to_interval_d;
DROP SEQUENCE seq_to_interval_e;
DROP SEQUENCE seq_to_interval_f;
DROP SEQUENCE seq_to_interval_g;
DROP SEQUENCE seq_to_interval_h;
DROP SEQUENCE seq_to_interval_i;
DROP SEQUENCE seq_to_interval_j;
DROP SEQUENCE seq_to_interval_k;
DROP SEQUENCE seq_to_interval_l;
DROP SEQUENCE seq_to_interval_m;

!4 XG-TYPE-INTERVAL-SEQ-004 序列转换边界测试
//创建序列值
CREATE SEQUENCE seq_intertval_boundary_a START WITH 999999999 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_b START WITH 2147483647 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_c START WITH 2147483647 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_d START WITH 999999999 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_e START WITH 999999999 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_f START WITH 9223372036854775804 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_g START WITH 2147483647 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_h START WITH 2147483647 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_i START WITH 2147483647 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_j START WITH 9223372036854775804 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_k START WITH 599999999 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_l START WITH 9223372036854775804 INCREMENT BY 1;
CREATE SEQUENCE seq_intertval_boundary_m START WITH 9223372036854775804 INCREMENT BY 1;

//创建表
CREATE TABLE t_table_004a (id INT , test_docs VARCHAR2(100) , c1 INTERVAL YEAR);
CREATE TABLE t_table_004b (id INT , test_docs VARCHAR2(100) , c1 INTERVAL MONTH);
CREATE TABLE t_table_004c (id INT , test_docs VARCHAR2(100) , c1 INTERVAL DAY);
CREATE TABLE t_table_004d (id INT , test_docs VARCHAR2(100) , c1 INTERVAL HOUR);
CREATE TABLE t_table_004e (id INT , test_docs VARCHAR2(100) , c1 INTERVAL MINUTE);
CREATE TABLE t_table_004f (id INT , test_docs VARCHAR2(100) , c1 INTERVAL SECOND);
CREATE TABLE t_table_004g (id INT , test_docs VARCHAR2(100) , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_004h (id INT , test_docs VARCHAR2(100) , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_004i (id INT , test_docs VARCHAR2(100) , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_004j (id INT , test_docs VARCHAR2(100) , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_004k (id INT , test_docs VARCHAR2(100) , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_004l (id INT , test_docs VARCHAR2(100) , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_004m (id INT , test_docs VARCHAR2(100) , c1 INTERVAL MINUTE TO SECOND);


//测试 INTERVAL YEAR
DECLARE
v_seq_a NUMBER;
v_max_interval_str_a VARCHAR2(50);
v_more_interval_str_a VARCHAR2(50);
BEGIN
v_seq_a := 9;
v_max_interval_str_a := SUBSTR(TO_CHAR(seq_intertval_boundary_a.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_a := SUBSTR(TO_CHAR(seq_intertval_boundary_a.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004a VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_a) AS INTERVAL YEAR));
INSERT INTO t_table_004a VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_a) AS INTERVAL YEAR));
BEGIN
INSERT INTO t_table_004a VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_a) AS INTERVAL YEAR));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004a VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL MONTH
DECLARE
v_seq_b NUMBER;
v_max_interval_str_b VARCHAR2(50);
v_more_interval_str_b VARCHAR2(50);
BEGIN
v_seq_b := 9;
v_max_interval_str_b := SUBSTR(TO_CHAR(seq_intertval_boundary_b.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_b := SUBSTR(TO_CHAR(seq_intertval_boundary_b.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004b VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_b) AS INTERVAL MONTH));
INSERT INTO t_table_004b VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_b) AS INTERVAL MONTH));
BEGIN
INSERT INTO t_table_004b VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_b) AS INTERVAL MONTH));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004b VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL DAY
DECLARE
v_seq_c NUMBER;
v_max_interval_str_c VARCHAR2(50);
v_more_interval_str_c VARCHAR2(50);
BEGIN
v_seq_c := 9;
v_max_interval_str_c := SUBSTR(TO_CHAR(seq_intertval_boundary_c.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_c := SUBSTR(TO_CHAR(seq_intertval_boundary_c.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004c VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_c) AS INTERVAL DAY));
INSERT INTO t_table_004c VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_c) AS INTERVAL DAY));
BEGIN
INSERT INTO t_table_004c VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_c) AS INTERVAL DAY));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004c VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL HOUR
DECLARE
v_seq_d NUMBER;
v_max_interval_str_d VARCHAR2(50);
v_more_interval_str_d VARCHAR2(50);
BEGIN
v_seq_d := 9;
v_max_interval_str_d := SUBSTR(TO_CHAR(seq_intertval_boundary_d.NEXTVAL , 'FM000000000') , 1 , 9);
v_more_interval_str_d := SUBSTR(TO_CHAR(seq_intertval_boundary_d.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004d VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_d) AS INTERVAL HOUR));
INSERT INTO t_table_004d VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_d) AS INTERVAL HOUR));
BEGIN
INSERT INTO t_table_004d VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_d) AS INTERVAL HOUR));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004d VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL MINUTE
DECLARE
v_seq_e NUMBER;
v_max_interval_str_e VARCHAR2(50);
v_more_interval_str_e VARCHAR2(50);
BEGIN
v_seq_e := 9;
v_max_interval_str_e := SUBSTR(TO_CHAR(seq_intertval_boundary_e.NEXTVAL , 'FM000000000') , 1 , 9);
v_more_interval_str_e := SUBSTR(TO_CHAR(seq_intertval_boundary_e.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004e VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_e) AS INTERVAL MINUTE));
INSERT INTO t_table_004e VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_e) AS INTERVAL MINUTE));
BEGIN
INSERT INTO t_table_004e VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_e) AS INTERVAL MINUTE));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004e VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL SECOND
DECLARE
v_seq_f NUMBER;
v_max_interval_str_f VARCHAR2(50);
v_more_interval_str_f VARCHAR2(50);
BEGIN
v_seq_f := 9;
v_max_interval_str_f := SUBSTR(TO_CHAR(seq_intertval_boundary_f.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_f.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '7';
v_more_interval_str_f := SUBSTR(TO_CHAR(seq_intertval_boundary_f.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_f.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '8';
INSERT INTO t_table_004f VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_f) AS INTERVAL SECOND));
INSERT INTO t_table_004f VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_f) AS INTERVAL SECOND));
BEGIN
INSERT INTO t_table_004f VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_f) AS INTERVAL SECOND));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004f VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL YEAR TO MONTH
DECLARE
v_seq_g NUMBER;
v_max_interval_str_g VARCHAR2(50);
v_more_interval_str_g VARCHAR2(50);
BEGIN
v_seq_g := 9;
v_max_interval_str_g := SUBSTR(TO_CHAR(seq_intertval_boundary_g.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_g := SUBSTR(TO_CHAR(seq_intertval_boundary_g.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004g VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_g) AS INTERVAL YEAR TO MONTH));
INSERT INTO t_table_004g VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_g) AS INTERVAL YEAR TO MONTH));
BEGIN
INSERT INTO t_table_004g VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_g) AS INTERVAL YEAR TO MONTH));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004g VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL DAY TO HOUR
DECLARE
v_seq_h NUMBER;
v_max_interval_str_h VARCHAR2(50);
v_more_interval_str_h VARCHAR2(50);
BEGIN
v_seq_h := 9;
v_max_interval_str_h := SUBSTR(TO_CHAR(seq_intertval_boundary_h.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_h := SUBSTR(TO_CHAR(seq_intertval_boundary_h.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004h VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_h) AS INTERVAL DAY TO HOUR));
INSERT INTO t_table_004h VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_h) AS INTERVAL DAY TO HOUR));
BEGIN
INSERT INTO t_table_004h VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_h) AS INTERVAL DAY TO HOUR));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004h VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL DAY TO MINUTE
DECLARE
v_seq_i NUMBER;
v_max_interval_str_i VARCHAR2(50);
v_more_interval_str_i VARCHAR2(50);
BEGIN
v_seq_i := 9;
v_max_interval_str_i := SUBSTR(TO_CHAR(seq_intertval_boundary_i.NEXTVAL , 'FM0000000000') , 1 , 10);
v_more_interval_str_i := SUBSTR(TO_CHAR(seq_intertval_boundary_i.NEXTVAL , 'FM0000000000') , 1 , 10);
INSERT INTO t_table_004i VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_i) AS INTERVAL DAY TO MINUTE));
INSERT INTO t_table_004i VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_i) AS INTERVAL DAY TO MINUTE));
BEGIN
INSERT INTO t_table_004i VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_i) AS INTERVAL DAY TO MINUTE));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004i VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL DAY TO SECOND
DECLARE
v_seq_j NUMBER;
v_max_interval_str_j VARCHAR2(50);
v_more_interval_str_j VARCHAR2(50);
BEGIN
v_seq_j := 9;
v_max_interval_str_j := SUBSTR(TO_CHAR(seq_intertval_boundary_j.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_j.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '7';
v_more_interval_str_j := SUBSTR(TO_CHAR(seq_intertval_boundary_j.NEXTVAL , 'FM0000000000000000000') , 1 , 19) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_j.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '8';
INSERT INTO t_table_004j VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_j) AS INTERVAL DAY TO SECOND));
INSERT INTO t_table_004j VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_j) AS INTERVAL DAY TO SECOND));
BEGIN
INSERT INTO t_table_004j VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_j) AS INTERVAL DAY TO SECOND));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004j VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL HOUR TO MINUTE
DECLARE
v_seq_k NUMBER;
v_max_interval_str_k VARCHAR2(50);
v_more_interval_str_k VARCHAR2(50);
BEGIN
v_seq_k := 9;
v_max_interval_str_k := SUBSTR(TO_CHAR(seq_intertval_boundary_k.NEXTVAL , 'FM000000000') , 1 , 9);
v_more_interval_str_k := SUBSTR(TO_CHAR(seq_intertval_boundary_k.NEXTVAL , 'FM000000000') , 1 , 9);
INSERT INTO t_table_004k VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_k) AS INTERVAL HOUR TO MINUTE));
INSERT INTO t_table_004k VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_k) AS INTERVAL HOUR TO MINUTE));
BEGIN
INSERT INTO t_table_004k VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_k) AS INTERVAL HOUR TO MINUTE));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004k VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL HOUR TO SECOND
DECLARE
v_seq_l NUMBER;
v_max_interval_str_l VARCHAR2(50);
v_more_interval_str_l VARCHAR2(50);
BEGIN
v_seq_l := 9;
v_max_interval_str_l := SUBSTR(TO_CHAR(seq_intertval_boundary_l.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_l.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '7';
v_more_interval_str_l := SUBSTR(TO_CHAR(seq_intertval_boundary_l.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_l.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '8';
INSERT INTO t_table_004l VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_l) AS INTERVAL HOUR TO SECOND));
INSERT INTO t_table_004l VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_l) AS INTERVAL HOUR TO SECOND));
BEGIN
INSERT INTO t_table_004l VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_l) AS INTERVAL HOUR TO SECOND));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004l VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//测试 INTERVAL MINUTE TO SECOND
DECLARE
v_seq_m NUMBER;
v_max_interval_str_m VARCHAR2(50);
v_more_interval_str_m VARCHAR2(50);
BEGIN
v_seq_m := 9;
v_max_interval_str_m := SUBSTR(TO_CHAR(seq_intertval_boundary_m.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_m.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '7';
v_more_interval_str_m := SUBSTR(TO_CHAR(seq_intertval_boundary_m.NEXTVAL , 'FM0000000000000000000') , 1 , 13) || '.' || SUBSTR(TO_CHAR(seq_intertval_boundary_m.NEXTVAL , 'FM0000000000000000000') , 14 , 5) || '8';
INSERT INTO t_table_004m VALUES (1 , '正常范围' , CAST(TO_CHAR(v_seq_m) AS INTERVAL MINUTE TO SECOND));
INSERT INTO t_table_004m VALUES (2 , '最大范围' , CAST(TO_CHAR(v_max_interval_str_m) AS INTERVAL MINUTE TO SECOND));
BEGIN
INSERT INTO t_table_004m VALUES (3 , '超出范围' , CAST(TO_CHAR(v_more_interval_str_m) AS INTERVAL MINUTE TO SECOND));
EXCEPTION
WHEN OTHERS THEN
INSERT INTO t_table_004m VALUES (3 , '超出范围 - ERROR : ' || SQLERRM , NULL);
END;
COMMIT;
END;
/

//查询结果
SELECT * FROM t_table_004a;
SELECT * FROM t_table_004b;
SELECT * FROM t_table_004c;
SELECT * FROM t_table_004d;
SELECT * FROM t_table_004e;
SELECT * FROM t_table_004f;
SELECT * FROM t_table_004g;
SELECT * FROM t_table_004h;
SELECT * FROM t_table_004i;
SELECT * FROM t_table_004j;
SELECT * FROM t_table_004k;
SELECT * FROM t_table_004l;
SELECT * FROM t_table_004m;

//删除表
DROP TABLE t_table_004a;
DROP TABLE t_table_004b;
DROP TABLE t_table_004c;
DROP TABLE t_table_004d;
DROP TABLE t_table_004e;
DROP TABLE t_table_004f;
DROP TABLE t_table_004g;
DROP TABLE t_table_004h;
DROP TABLE t_table_004i;
DROP TABLE t_table_004j;
DROP TABLE t_table_004k;
DROP TABLE t_table_004l;
DROP TABLE t_table_004m;

//删除序列值
DROP SEQUENCE seq_intertval_boundary_a;
DROP SEQUENCE seq_intertval_boundary_b;
DROP SEQUENCE seq_intertval_boundary_c;
DROP SEQUENCE seq_intertval_boundary_d;
DROP SEQUENCE seq_intertval_boundary_e;
DROP SEQUENCE seq_intertval_boundary_f;
DROP SEQUENCE seq_intertval_boundary_g;
DROP SEQUENCE seq_intertval_boundary_h;
DROP SEQUENCE seq_intertval_boundary_i;
DROP SEQUENCE seq_intertval_boundary_j;
DROP SEQUENCE seq_intertval_boundary_k;
DROP SEQUENCE seq_intertval_boundary_l;
DROP SEQUENCE seq_intertval_boundary_m;

!4 XG-TYPE-INTERVAL-SEQ-005 序列生成约束
//创建序列值
CREATE SEQUENCE seq_unique_interval_a START WITH 1;
CREATE SEQUENCE seq_unique_interval_b START WITH 1;
CREATE SEQUENCE seq_unique_interval_c START WITH 1;
CREATE SEQUENCE seq_unique_interval_d START WITH 1;
CREATE SEQUENCE seq_unique_interval_e START WITH 1;
CREATE SEQUENCE seq_unique_interval_f START WITH 1;
CREATE SEQUENCE seq_unique_interval_g START WITH 1;
CREATE SEQUENCE seq_unique_interval_h START WITH 1;
CREATE SEQUENCE seq_unique_interval_i START WITH 1;
CREATE SEQUENCE seq_unique_interval_j START WITH 1;
CREATE SEQUENCE seq_unique_interval_k START WITH 1;
CREATE SEQUENCE seq_unique_interval_l START WITH 1;
CREATE SEQUENCE seq_unique_interval_m START WITH 1;

//创建表
CREATE TABLE t_table_005a (c1 INTERVAL YEAR UNIQUE);
CREATE TABLE t_table_005b (c1 INTERVAL MONTH UNIQUE);
CREATE TABLE t_table_005c (c1 INTERVAL DAY UNIQUE);
CREATE TABLE t_table_005d (c1 INTERVAL HOUR UNIQUE);
CREATE TABLE t_table_005e (c1 INTERVAL MINUTE UNIQUE);
CREATE TABLE t_table_005f (c1 INTERVAL SECOND UNIQUE);
CREATE TABLE t_table_005g (c1 INTERVAL YEAR TO MONTH UNIQUE);
CREATE TABLE t_table_005h (c1 INTERVAL DAY TO HOUR UNIQUE);
CREATE TABLE t_table_005i (c1 INTERVAL DAY TO MINUTE UNIQUE);
CREATE TABLE t_table_005j (c1 INTERVAL DAY TO SECOND UNIQUE);
CREATE TABLE t_table_005k (c1 INTERVAL HOUR TO MINUTE UNIQUE);
CREATE TABLE t_table_005l (c1 INTERVAL HOUR TO SECOND UNIQUE);
CREATE TABLE t_table_005m (c1 INTERVAL MINUTE TO SECOND UNIQUE);

//插入数据
INSERT INTO t_table_005a VALUES (TO_CHAR( 7 + seq_unique_interval_a.NEXTVAL));
INSERT INTO t_table_005b VALUES (TO_CHAR( 7 + seq_unique_interval_b.NEXTVAL));
INSERT INTO t_table_005c VALUES (TO_CHAR( 7 + seq_unique_interval_c.NEXTVAL));
INSERT INTO t_table_005d VALUES (TO_CHAR( 7 + seq_unique_interval_d.NEXTVAL));
INSERT INTO t_table_005e VALUES (TO_CHAR( 7 + seq_unique_interval_e.NEXTVAL));
INSERT INTO t_table_005f VALUES (TO_CHAR( 7 + seq_unique_interval_f.NEXTVAL));
INSERT INTO t_table_005g VALUES (TO_CHAR( 7 + seq_unique_interval_g.NEXTVAL));
INSERT INTO t_table_005h VALUES (TO_CHAR( 7 + seq_unique_interval_h.NEXTVAL));
INSERT INTO t_table_005i VALUES (TO_CHAR( 7 + seq_unique_interval_i.NEXTVAL));
INSERT INTO t_table_005j VALUES (TO_CHAR( 7 + seq_unique_interval_j.NEXTVAL));
INSERT INTO t_table_005k VALUES (TO_CHAR( 7 + seq_unique_interval_k.NEXTVAL));
INSERT INTO t_table_005l VALUES (TO_CHAR( 7 + seq_unique_interval_l.NEXTVAL));
INSERT INTO t_table_005m VALUES (TO_CHAR( 7 + seq_unique_interval_m.NEXTVAL));

//再次插入数据
INSERT INTO t_table_005a VALUES (TO_CHAR( 7 + seq_unique_interval_a.NEXTVAL));
INSERT INTO t_table_005b VALUES (TO_CHAR( 7 + seq_unique_interval_b.NEXTVAL));
INSERT INTO t_table_005c VALUES (TO_CHAR( 7 + seq_unique_interval_c.NEXTVAL));
INSERT INTO t_table_005d VALUES (TO_CHAR( 7 + seq_unique_interval_d.NEXTVAL));
INSERT INTO t_table_005e VALUES (TO_CHAR( 7 + seq_unique_interval_e.NEXTVAL));
INSERT INTO t_table_005f VALUES (TO_CHAR( 7 + seq_unique_interval_f.NEXTVAL));
INSERT INTO t_table_005g VALUES (TO_CHAR( 7 + seq_unique_interval_g.NEXTVAL));
INSERT INTO t_table_005h VALUES (TO_CHAR( 7 + seq_unique_interval_h.NEXTVAL));
INSERT INTO t_table_005i VALUES (TO_CHAR( 7 + seq_unique_interval_i.NEXTVAL));
INSERT INTO t_table_005j VALUES (TO_CHAR( 7 + seq_unique_interval_j.NEXTVAL));
INSERT INTO t_table_005k VALUES (TO_CHAR( 7 + seq_unique_interval_k.NEXTVAL));
INSERT INTO t_table_005l VALUES (TO_CHAR( 7 + seq_unique_interval_l.NEXTVAL));
INSERT INTO t_table_005m VALUES (TO_CHAR( 7 + seq_unique_interval_m.NEXTVAL));

//查询结果
<预期结果 (插入成功 , 满足唯一约束) : 8-0 / 9-0>
SELECT * FROM t_table_005a;
<预期结果 (插入成功 , 满足唯一约束) : 0-8 / 0-9>
SELECT * FROM t_table_005b;
<预期结果 (插入成功 , 满足唯一约束) : 8 0:00:00 / 9 0:00:00>
SELECT * FROM t_table_005c;
<预期结果 (插入成功 , 满足唯一约束) : 8:00:00 / 9:00:00>
SELECT * FROM t_table_005d;
<预期结果 (插入成功 , 满足唯一约束) : 0:08:00 / 0:09:00>
SELECT * FROM t_table_005e;
<预期结果 (插入成功 , 满足唯一约束) : 0:00:08 / 0:00:09>
SELECT * FROM t_table_005f;
<预期结果 (插入成功 , 满足唯一约束) : 0-8 / 0-9>
SELECT * FROM t_table_005g;
<预期结果 (插入成功 , 满足唯一约束) : 8:00:00 / 9:00:00>
SELECT * FROM t_table_005h;
<预期结果 (插入成功 , 满足唯一约束) : 0:08:00 / 0:09:00>
SELECT * FROM t_table_005i;
<预期结果 (插入成功 , 满足唯一约束) : 0:00:08 / 0:00:09>
SELECT * FROM t_table_005j;
<预期结果 (插入成功 , 满足唯一约束) : 0:08:00 / 0:09:00>
SELECT * FROM t_table_005k;
<预期结果 (插入成功 , 满足唯一约束) : 0:00:08 / 0:00:09>
SELECT * FROM t_table_005l;
<预期结果 (插入成功 , 满足唯一约束) : 0:00:08 / 0:00:09>
SELECT * FROM t_table_005m;

//删除表
DROP TABLE t_table_005a;
DROP TABLE t_table_005b;
DROP TABLE t_table_005c;
DROP TABLE t_table_005d;
DROP TABLE t_table_005e;
DROP TABLE t_table_005f;
DROP TABLE t_table_005g;
DROP TABLE t_table_005h;
DROP TABLE t_table_005i;
DROP TABLE t_table_005j;
DROP TABLE t_table_005k;
DROP TABLE t_table_005l;
DROP TABLE t_table_005m;

//删除序列值
DROP SEQUENCE seq_unique_interval_a;
DROP SEQUENCE seq_unique_interval_b;
DROP SEQUENCE seq_unique_interval_c;
DROP SEQUENCE seq_unique_interval_d;
DROP SEQUENCE seq_unique_interval_e;
DROP SEQUENCE seq_unique_interval_f;
DROP SEQUENCE seq_unique_interval_g;
DROP SEQUENCE seq_unique_interval_h;
DROP SEQUENCE seq_unique_interval_i;
DROP SEQUENCE seq_unique_interval_j;
DROP SEQUENCE seq_unique_interval_k;
DROP SEQUENCE seq_unique_interval_l;
DROP SEQUENCE seq_unique_interval_m;

!4 XG-TYPE-INTERVAL-SEQ-006 序列值异常测试
//创建序列值
CREATE SEQUENCE seq_interval_offset_a START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_b START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_c START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_d START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_e START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_f START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_g START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_h START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_i START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_j START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_k START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_l START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_interval_offset_m START WITH 1 INCREMENT BY 1;

//创建表
CREATE TABLE t_table_006a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_006b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_006c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_006d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_006e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_006f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_006g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_006h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_006i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_006j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_006k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_006l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_006m (id INT , c1 INTERVAL MINUTE TO SECOND);

//序列值直接赋给interval类型的字段
INSERT INTO t_table_006a (id , c1) VALUES (1 , seq_interval_offset_a.NEXTVAL);
INSERT INTO t_table_006b (id , c1) VALUES (1 , seq_interval_offset_b.NEXTVAL);
INSERT INTO t_table_006c (id , c1) VALUES (1 , seq_interval_offset_c.NEXTVAL);
INSERT INTO t_table_006d (id , c1) VALUES (1 , seq_interval_offset_d.NEXTVAL);
INSERT INTO t_table_006e (id , c1) VALUES (1 , seq_interval_offset_e.NEXTVAL);
INSERT INTO t_table_006f (id , c1) VALUES (1 , seq_interval_offset_f.NEXTVAL);
INSERT INTO t_table_006g (id , c1) VALUES (1 , seq_interval_offset_g.NEXTVAL);
INSERT INTO t_table_006h (id , c1) VALUES (1 , seq_interval_offset_h.NEXTVAL);
INSERT INTO t_table_006i (id , c1) VALUES (1 , seq_interval_offset_i.NEXTVAL);
INSERT INTO t_table_006j (id , c1) VALUES (1 , seq_interval_offset_j.NEXTVAL);
INSERT INTO t_table_006k (id , c1) VALUES (1 , seq_interval_offset_k.NEXTVAL);
INSERT INTO t_table_006l (id , c1) VALUES (1 , seq_interval_offset_l.NEXTVAL);
INSERT INTO t_table_006m (id , c1) VALUES (1 , seq_interval_offset_m.NEXTVAL);

//序列值直接强转为interval类型
SELECT seq_interval_offset_a.NEXTVAL::INTERVAL YEAR AS res FROM DUAL;
SELECT seq_interval_offset_b.NEXTVAL::INTERVAL MONTH AS res FROM DUAL;
SELECT seq_interval_offset_c.NEXTVAL::INTERVAL DAY AS res FROM DUAL;
SELECT seq_interval_offset_d.NEXTVAL::INTERVAL HOUR AS res FROM DUAL;
SELECT seq_interval_offset_e.NEXTVAL::INTERVAL MINUTE AS res FROM DUAL;
SELECT seq_interval_offset_f.NEXTVAL::INTERVAL SECOND AS res FROM DUAL;
SELECT seq_interval_offset_g.NEXTVAL::INTERVAL YEAR TO MONTH AS res FROM DUAL;
SELECT seq_interval_offset_h.NEXTVAL::INTERVAL DAY TO HOUR AS res FROM DUAL;
SELECT seq_interval_offset_i.NEXTVAL::INTERVAL DAY TO MINUTE AS res FROM DUAL;
SELECT seq_interval_offset_j.NEXTVAL::INTERVAL DAY TO SECOND AS res FROM DUAL;
SELECT seq_interval_offset_k.NEXTVAL::INTERVAL HOUR TO MINUTE AS res FROM DUAL;
SELECT seq_interval_offset_l.NEXTVAL::INTERVAL HOUR TO SECOND AS res FROM DUAL;
SELECT seq_interval_offset_m.NEXTVAL::INTERVAL MINUTE TO SECOND AS res FROM DUAL;

//序列值直接作为表字段的默认值
CREATE TABLE t_table_006a_1 (id INT , c1 INTERVAL YEAR DEFAULT (seq_interval_offset_a.NEXTVAL));
CREATE TABLE t_table_006b_1 (id INT , c1 INTERVAL MONTH DEFAULT (seq_interval_offset_b.NEXTVAL));
CREATE TABLE t_table_006c_1 (id INT , c1 INTERVAL DAY DEFAULT (seq_interval_offset_c.NEXTVAL));
CREATE TABLE t_table_006d_1 (id INT , c1 INTERVAL HOUR DEFAULT (seq_interval_offset_d.NEXTVAL));
CREATE TABLE t_table_006e_1 (id INT , c1 INTERVAL MINUTE DEFAULT (seq_interval_offset_e.NEXTVAL));
CREATE TABLE t_table_006f_1 (id INT , c1 INTERVAL SECOND DEFAULT (seq_interval_offset_f.NEXTVAL));
CREATE TABLE t_table_006g_1 (id INT , c1 INTERVAL YEAR TO MONTH DEFAULT (seq_interval_offset_g.NEXTVAL));
CREATE TABLE t_table_006h_1 (id INT , c1 INTERVAL DAY TO HOUR DEFAULT (seq_interval_offset_h.NEXTVAL));
CREATE TABLE t_table_006i_1 (id INT , c1 INTERVAL DAY TO MINUTE DEFAULT (seq_interval_offset_i.NEXTVAL));
CREATE TABLE t_table_006j_1 (id INT , c1 INTERVAL DAY TO SECOND DEFAULT (seq_interval_offset_j.NEXTVAL));
CREATE TABLE t_table_006k_1 (id INT , c1 INTERVAL HOUR TO MINUTE DEFAULT (seq_interval_offset_k.NEXTVAL));
CREATE TABLE t_table_006l_1 (id INT , c1 INTERVAL HOUR TO SECOND DEFAULT (seq_interval_offset_l.NEXTVAL));
CREATE TABLE t_table_006m_1 (id INT , c1 INTERVAL MINUTE TO SECOND DEFAULT (seq_interval_offset_m.NEXTVAL));


//序列值直接与interval类型常量做运算
SELECT seq_interval_offset_a.NEXTVAL + '1'::INTERVAL YEAR FROM DUAL;
SELECT seq_interval_offset_b.NEXTVAL + '1'::INTERVAL MONTH FROM DUAL;
SELECT seq_interval_offset_c.NEXTVAL + '1'::INTERVAL DAY FROM DUAL;
SELECT seq_interval_offset_d.NEXTVAL + '1'::INTERVAL HOUR FROM DUAL;
SELECT seq_interval_offset_e.NEXTVAL + '1'::INTERVAL MINUTE FROM DUAL;
SELECT seq_interval_offset_f.NEXTVAL + '1'::INTERVAL SECOND AS res FROM DUAL;
SELECT seq_interval_offset_g.NEXTVAL + '1'::INTERVAL YEAR TO MONTH FROM DUAL;
SELECT seq_interval_offset_h.NEXTVAL + '1'::INTERVAL DAY TO HOUR FROM DUAL;
SELECT seq_interval_offset_i.NEXTVAL + '1'::INTERVAL DAY TO MINUTE FROM DUAL;
SELECT seq_interval_offset_j.NEXTVAL + '1'::INTERVAL DAY TO SECOND FROM DUAL;
SELECT seq_interval_offset_k.NEXTVAL + '1'::INTERVAL HOUR TO MINUTE FROM DUAL;
SELECT seq_interval_offset_l.NEXTVAL + '1'::INTERVAL HOUR TO SECOND FROM DUAL;
SELECT seq_interval_offset_m.NEXTVAL + '1'::INTERVAL MINUTE TO SECOND FROM DUAL;

//序列值直接与interval类型的字段做运算
SELECT seq_interval_offset_a.NEXTVAL + c1 FROM t_table_006a;
SELECT seq_interval_offset_b.NEXTVAL + c1 FROM t_table_006b;
SELECT seq_interval_offset_c.NEXTVAL + c1 FROM t_table_006c;
SELECT seq_interval_offset_d.NEXTVAL + c1 FROM t_table_006d;
SELECT seq_interval_offset_e.NEXTVAL + c1 FROM t_table_006e;
SELECT seq_interval_offset_f.NEXTVAL + c1 FROM t_table_006f;
SELECT seq_interval_offset_g.NEXTVAL + c1 FROM t_table_006g;
SELECT seq_interval_offset_h.NEXTVAL + c1 FROM t_table_006h;
SELECT seq_interval_offset_i.NEXTVAL + c1 FROM t_table_006i;
SELECT seq_interval_offset_j.NEXTVAL + c1 FROM t_table_006j;
SELECT seq_interval_offset_k.NEXTVAL + c1 FROM t_table_006k;
SELECT seq_interval_offset_l.NEXTVAL + c1 FROM t_table_006l;
SELECT seq_interval_offset_m.NEXTVAL + c1 FROM t_table_006m;

//删除表
DROP TABLE t_table_006a;
DROP TABLE t_table_006b;
DROP TABLE t_table_006c;
DROP TABLE t_table_006d;
DROP TABLE t_table_006e;
DROP TABLE t_table_006f;
DROP TABLE t_table_006g;
DROP TABLE t_table_006h;
DROP TABLE t_table_006i;
DROP TABLE t_table_006j;
DROP TABLE t_table_006k;
DROP TABLE t_table_006l;
DROP TABLE t_table_006m;
DROP TABLE t_table_006a_1;
DROP TABLE t_table_006b_1;
DROP TABLE t_table_006c_1;
DROP TABLE t_table_006d_1;
DROP TABLE t_table_006e_1;
DROP TABLE t_table_006f_1;
DROP TABLE t_table_006g_1;
DROP TABLE t_table_006h_1;
DROP TABLE t_table_006i_1;
DROP TABLE t_table_006j_1;
DROP TABLE t_table_006k_1;
DROP TABLE t_table_006l_1;
DROP TABLE t_table_006m_1;

//删除序列值
DROP SEQUENCE seq_interval_offset_a;
DROP SEQUENCE seq_interval_offset_b;
DROP SEQUENCE seq_interval_offset_c;
DROP SEQUENCE seq_interval_offset_d;
DROP SEQUENCE seq_interval_offset_e;
DROP SEQUENCE seq_interval_offset_f;
DROP SEQUENCE seq_interval_offset_g;
DROP SEQUENCE seq_interval_offset_h;
DROP SEQUENCE seq_interval_offset_i;
DROP SEQUENCE seq_interval_offset_j;
DROP SEQUENCE seq_interval_offset_k;
DROP SEQUENCE seq_interval_offset_l;
DROP SEQUENCE seq_interval_offset_m;