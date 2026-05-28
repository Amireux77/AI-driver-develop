!4 XG-TYPE-INTERVAL-PKG-005 INTERVAL 插入表中
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


//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_a AS 
PROCEDURE p_insert_interval_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
);
END pkg_interval_insert_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_a AS
PROCEDURE p_insert_interval_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005a VALUES(p_id_a , p_interval_a);
COMMIT;
p_log_a := p_log_a || ' INTERVAL YEAR 插入成功';
SEND_MSG(p_log_a);
END p_insert_interval_a;
END pkg_interval_insert_a;
/

//测试 INTERVAL YEAR 插入表中
DECLARE
v_msg_a VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_a.p_insert_interval_a(1 , '9' , v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_b AS 
PROCEDURE p_insert_interval_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
);
END pkg_interval_insert_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_b AS
PROCEDURE p_insert_interval_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005b VALUES(p_id_b , p_interval_b);
COMMIT;
p_log_b := p_log_b || ' INTERVAL MONTH 插入成功';
SEND_MSG(p_log_b);
END p_insert_interval_b;
END pkg_interval_insert_b;
/

//测试 INTERVAL MONTH 插入表中
DECLARE
v_msg_b VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_b.p_insert_interval_b(1 , '9' , v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_c AS 
PROCEDURE p_insert_interval_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_c IN OUT VARCHAR
);
END pkg_interval_insert_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_c AS
PROCEDURE p_insert_interval_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_c IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005c VALUES(p_id_c , p_interval_c);
COMMIT;
p_log_c := p_log_c || ' INTERVAL DAY 插入成功';
SEND_MSG(p_log_c);
END p_insert_interval_c;
END pkg_interval_insert_c;
/

//测试 INTERVAL DAY 插入表中
DECLARE
v_msg_c VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_c.p_insert_interval_c(1 , '9' , v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_d AS 
PROCEDURE p_insert_interval_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
);
END pkg_interval_insert_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_d AS
PROCEDURE p_insert_interval_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005d VALUES(p_id_d , p_interval_d);
COMMIT;
p_log_d := p_log_d || ' INTERVAL HOUR 插入成功';
SEND_MSG(p_log_d);
END p_insert_interval_d;
END pkg_interval_insert_d;
/

//测试 INTERVAL HOUR 插入表中
DECLARE
v_msg_d VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_d.p_insert_interval_d(1 , '9' , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_e AS 
PROCEDURE p_insert_interval_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
);
END pkg_interval_insert_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_e AS
PROCEDURE p_insert_interval_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005e VALUES(p_id_e , p_interval_e);
COMMIT;
p_log_e := p_log_e || ' INTERVAL MINUTE 插入成功';
SEND_MSG(p_log_e);
END p_insert_interval_e;
END pkg_interval_insert_e;
/

//测试 INTERVAL MINUTE 插入表中
DECLARE
v_msg_e VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_e.p_insert_interval_e(1 , '9' , v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_f AS 
PROCEDURE p_insert_interval_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
);
END pkg_interval_insert_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_f AS
PROCEDURE p_insert_interval_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005f VALUES(p_id_f , p_interval_f);
COMMIT;
p_log_f := p_log_f || ' INTERVAL SECOND 插入成功';
SEND_MSG(p_log_f);
END p_insert_interval_f;
END pkg_interval_insert_f;
/

//测试 INTERVAL SECOND 插入表中
DECLARE
v_msg_f VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_f.p_insert_interval_f(1 , '9' , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_g AS 
PROCEDURE p_insert_interval_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
);
END pkg_interval_insert_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_g AS
PROCEDURE p_insert_interval_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005g VALUES(p_id_g , p_interval_g);
COMMIT;
p_log_g := p_log_g || ' INTERVAL YEAR TO MONTH 插入成功';
SEND_MSG(p_log_g);
END p_insert_interval_g;
END pkg_interval_insert_g;
/

//测试 INTERVAL YEAR TO MONTH 插入表中
DECLARE
v_msg_g VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_g.p_insert_interval_g(1 , '9' , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_h AS 
PROCEDURE p_insert_interval_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
);
END pkg_interval_insert_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_h AS
PROCEDURE p_insert_interval_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005h VALUES(p_id_h , p_interval_h);
COMMIT;
p_log_h := p_log_h || ' INTERVAL DAY TO HOUR 插入成功';
SEND_MSG(p_log_h);
END p_insert_interval_h;
END pkg_interval_insert_h;
/

//测试 INTERVAL DAY TO HOUR 插入表中
DECLARE
v_msg_h VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_h.p_insert_interval_h(1 , '9' , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_i AS 
PROCEDURE p_insert_interval_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
);
END pkg_interval_insert_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_i AS
PROCEDURE p_insert_interval_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005i VALUES(p_id_i , p_interval_i);
COMMIT;
p_log_i := p_log_i || ' INTERVAL DAY TO MINUTE 插入成功';
SEND_MSG(p_log_i);
END p_insert_interval_i;
END pkg_interval_insert_i;
/

//测试 INTERVAL DAY TO MINUTE 插入表中
DECLARE
v_msg_i VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_i.p_insert_interval_i(1 , '9' , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_j AS 
PROCEDURE p_insert_interval_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
);
END pkg_interval_insert_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_j AS
PROCEDURE p_insert_interval_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005j VALUES(p_id_j , p_interval_j);
COMMIT;
p_log_j := p_log_j || ' INTERVAL DAY TO SECOND 插入成功';
SEND_MSG(p_log_j);
END p_insert_interval_j;
END pkg_interval_insert_j;
/

//测试 INTERVAL DAY TO SECOND 插入表中
DECLARE
v_msg_j VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_j.p_insert_interval_j(1 , '9' , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_k AS 
PROCEDURE p_insert_interval_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
);
END pkg_interval_insert_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_k AS
PROCEDURE p_insert_interval_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005k VALUES(p_id_k , p_interval_k);
COMMIT;
p_log_k := p_log_k || ' INTERVAL HOUR TO MINUTE 插入成功';
SEND_MSG(p_log_k);
END p_insert_interval_k;
END pkg_interval_insert_k;
/

//测试 INTERVAL HOUR TO MINUTE 插入表中
DECLARE
v_msg_k VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_k.p_insert_interval_k(1 , '9' , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_l AS 
PROCEDURE p_insert_interval_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
);
END pkg_interval_insert_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_l AS
PROCEDURE p_insert_interval_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005l VALUES(p_id_l , p_interval_l);
COMMIT;
p_log_l := p_log_l || ' INTERVAL HOUR TO SECOND 插入成功';
SEND_MSG(p_log_l);
END p_insert_interval_l;
END pkg_interval_insert_l;
/

//测试 INTERVAL HOUR TO SECOND 插入表中
DECLARE
v_msg_l VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_l.p_insert_interval_l(1 , '9' , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_insert_m AS 
PROCEDURE p_insert_interval_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
);
END pkg_interval_insert_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_insert_m AS
PROCEDURE p_insert_interval_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
) AS
BEGIN
INSERT INTO t_table_005m VALUES(p_id_m , p_interval_m);
COMMIT;
p_log_m := p_log_m || ' INTERVAL MINUTE TO SECOND 插入成功';
SEND_MSG(p_log_m);
END p_insert_interval_m;
END pkg_interval_insert_m;
/

//测试 INTERVAL MINUTE TO SECOND 插入表中
DECLARE
v_msg_m VARCHAR(100) := 'INSERT_INTERVAL - ';
BEGIN
pkg_interval_insert_m.p_insert_interval_m(1 , '9' , v_msg_m);
END;
/

//查询结果
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_005a ORDER BY id;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005b ORDER BY id;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_005c ORDER BY id;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005d ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005e ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005f ORDER BY id;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005g ORDER BY id;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005h ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005i ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005j ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005k ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005l ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005m ORDER BY id;

//删除包
DROP PACKAGE pkg_interval_insert_a;
DROP PACKAGE pkg_interval_insert_b;
DROP PACKAGE pkg_interval_insert_c;
DROP PACKAGE pkg_interval_insert_d;
DROP PACKAGE pkg_interval_insert_e;
DROP PACKAGE pkg_interval_insert_f;
DROP PACKAGE pkg_interval_insert_g;
DROP PACKAGE pkg_interval_insert_h;
DROP PACKAGE pkg_interval_insert_i;
DROP PACKAGE pkg_interval_insert_j;
DROP PACKAGE pkg_interval_insert_k;
DROP PACKAGE pkg_interval_insert_l;
DROP PACKAGE pkg_interval_insert_m;

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