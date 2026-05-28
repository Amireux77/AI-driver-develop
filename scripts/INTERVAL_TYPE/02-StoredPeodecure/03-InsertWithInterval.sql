!4 XG-TYPE-INTERVAL-PROC-005 INTERVAL 插入表中
//创建表
CREATE TABLE t_table_005a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_005b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_005c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_005d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_005e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_005f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_005g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_005h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_005i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_005j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_005k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_005l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_005m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_a(
p_id_a IN INT , 
p_interval_a INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005a VALUES (p_id_a , p_interval_a);
COMMIT;
p_log_msg_a := p_log_msg_a || '插入成功';
SEND_MSG(p_log_msg_a);
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_msg_a VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_a(1 , '9' , v_msg_a);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_b(
p_id_b IN INT , 
p_interval_b INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005b VALUES (p_id_b , p_interval_b);
COMMIT;
p_log_msg_b := p_log_msg_b || '插入成功';
SEND_MSG(p_log_msg_b);
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_msg_b VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_b(1 , '9' , v_msg_b);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_c(
p_id_c IN INT , 
p_interval_c INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005c VALUES (p_id_c , p_interval_c);
COMMIT;
p_log_msg_c := p_log_msg_c || '插入成功';
SEND_MSG(p_log_msg_c);
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_msg_c VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_c(1 , '9' , v_msg_c);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_d(
p_id_d IN INT , 
p_interval_d INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005d VALUES (p_id_d , p_interval_d);
COMMIT;
p_log_msg_d := p_log_msg_d || '插入成功';
SEND_MSG(p_log_msg_d);
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_msg_d VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_d(1 , '9' , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_e(
p_id_e IN INT , 
p_interval_e INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005e VALUES (p_id_e , p_interval_e);
COMMIT;
p_log_msg_e := p_log_msg_e || '插入成功';
SEND_MSG(p_log_msg_e);
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_msg_e VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_e(1 , '9' , v_msg_e);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_f(
p_id_f IN INT , 
p_interval_f INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005f VALUES (p_id_f , p_interval_f);
COMMIT;
p_log_msg_f := p_log_msg_f || '插入成功';
SEND_MSG(p_log_msg_f);
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_msg_f VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_f(1 , '9' , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_g(
p_id_g IN INT , 
p_interval_g INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005g VALUES (p_id_g , p_interval_g);
COMMIT;
p_log_msg_g := p_log_msg_g || '插入成功';
SEND_MSG(p_log_msg_g);
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_msg_g VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_g(1 , '9' , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_h(
p_id_h IN INT , 
p_interval_h INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005h VALUES (p_id_h , p_interval_h);
COMMIT;
p_log_msg_h := p_log_msg_h || '插入成功';
SEND_MSG(p_log_msg_h);
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_msg_h VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_h(1 , '9' , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_i(
p_id_i IN INT , 
p_interval_i INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005i VALUES (p_id_i , p_interval_i);
COMMIT;
p_log_msg_i := p_log_msg_i || '插入成功';
SEND_MSG(p_log_msg_i);
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_msg_i VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_i(1 , '9' , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_j(
p_id_j IN INT , 
p_interval_j INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005j VALUES (p_id_j , p_interval_j);
COMMIT;
p_log_msg_j := p_log_msg_j || '插入成功';
SEND_MSG(p_log_msg_j);
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_msg_j VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_j(1 , '9' , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_k(
p_id_k IN INT , 
p_interval_k INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005k VALUES (p_id_k , p_interval_k);
COMMIT;
p_log_msg_k := p_log_msg_k || '插入成功';
SEND_MSG(p_log_msg_k);
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_msg_k VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_k(1 , '9' , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_l(
p_id_l IN INT , 
p_interval_l INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005l VALUES (p_id_l , p_interval_l);
COMMIT;
p_log_msg_l := p_log_msg_l || '插入成功';
SEND_MSG(p_log_msg_l);
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_msg_l VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_l(1 , '9' , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_insert_m(
p_id_m IN INT , 
p_interval_m INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005m VALUES (p_id_m , p_interval_m);
COMMIT;
p_log_msg_m := p_log_msg_m || '插入成功';
SEND_MSG(p_log_msg_m);
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_msg_m VARCHAR(100) := 'INTERVAL_INSERT_TEST';
BEGIN
p_interval_insert_m(1 , '9' , v_msg_m);
END;
/

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_005a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_005c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005m;

//删除存储过程
DROP PROCEDURE p_interval_insert_a;
DROP PROCEDURE p_interval_insert_b;
DROP PROCEDURE p_interval_insert_c;
DROP PROCEDURE p_interval_insert_d;
DROP PROCEDURE p_interval_insert_e;
DROP PROCEDURE p_interval_insert_f;
DROP PROCEDURE p_interval_insert_g;
DROP PROCEDURE p_interval_insert_h;
DROP PROCEDURE p_interval_insert_i;
DROP PROCEDURE p_interval_insert_j;
DROP PROCEDURE p_interval_insert_k;
DROP PROCEDURE p_interval_insert_l;
DROP PROCEDURE p_interval_insert_m;

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