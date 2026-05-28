!4 XG-TYPE-INTERVAL-PROC-007 INTERVAL 动态传参
//创建表
CREATE TABLE t_table_007a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_007b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_007c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_007d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_007e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_007f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_007g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_007h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_007i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_007j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_007k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_007l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_007m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建  INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
v_sql_a VARCHAR(200);
BEGIN
v_sql_a := 'INSERT INTO t_table_007a VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_a USING p_id_a , p_interval_a;
COMMIT;
p_log_msg_a := p_log_msg_a || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_a);
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_msg_a VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_a(1 , '9' , v_msg_a);
END;
/

//创建  INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
v_sql_b VARCHAR(200);
BEGIN
v_sql_b := 'INSERT INTO t_table_007b VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_b USING p_id_b , p_interval_b;
COMMIT;
p_log_msg_b := p_log_msg_b || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_b);
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_msg_b VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_b(1 , '9' , v_msg_b);
END;
/

//创建  INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
v_sql_c VARCHAR(200);
BEGIN
v_sql_c := 'INSERT INTO t_table_007c VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_c USING p_id_c , p_interval_c;
COMMIT;
p_log_msg_c := p_log_msg_c || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_c);
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_msg_c VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_c(1 , '9' , v_msg_c);
END;
/

//创建  INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
v_sql_d VARCHAR(200);
BEGIN
v_sql_d := 'INSERT INTO t_table_007d VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_d USING p_id_d , p_interval_d;
COMMIT;
p_log_msg_d := p_log_msg_d || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_d);
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_msg_d VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_d(1 , '9' , v_msg_d);
END;
/

//创建  INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
v_sql_e VARCHAR(200);
BEGIN
v_sql_e := 'INSERT INTO t_table_007e VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_e USING p_id_e , p_interval_e;
COMMIT;
p_log_msg_e := p_log_msg_e || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_e);
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_msg_e VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_e(1 , '9' , v_msg_e);
END;
/

//创建  INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
v_sql_f VARCHAR(200);
BEGIN
v_sql_f := 'INSERT INTO t_table_007f VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_f USING p_id_f , p_interval_f;
COMMIT;
p_log_msg_f := p_log_msg_f || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_f);
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_msg_f VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_f(1 , '9' , v_msg_f);
END;
/

//创建  INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
v_sql_g VARCHAR(200);
BEGIN
v_sql_g := 'INSERT INTO t_table_007g VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_g USING p_id_g , p_interval_g;
COMMIT;
p_log_msg_g := p_log_msg_g || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_g);
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_msg_g VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_g(1 , '9' , v_msg_g);
END;
/

//创建  INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
v_sql_h VARCHAR(200);
BEGIN
v_sql_h := 'INSERT INTO t_table_007h VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_h USING p_id_h , p_interval_h;
COMMIT;
p_log_msg_h := p_log_msg_h || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_h);
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_msg_h VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_h(1 , '9' , v_msg_h);
END;
/

//创建  INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
v_sql_i VARCHAR(200);
BEGIN
v_sql_i := 'INSERT INTO t_table_007i VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_i USING p_id_i , p_interval_i;
COMMIT;
p_log_msg_i := p_log_msg_i || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_i);
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_msg_i VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_i(1 , '9' , v_msg_i);
END;
/

//创建  INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
v_sql_j VARCHAR(200);
BEGIN
v_sql_j := 'INSERT INTO t_table_007j VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_j USING p_id_j , p_interval_j;
COMMIT;
p_log_msg_j := p_log_msg_j || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_j);
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_msg_j VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_j(1 , '9' , v_msg_j);
END;
/

//创建  INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
v_sql_k VARCHAR(200);
BEGIN
v_sql_k := 'INSERT INTO t_table_007k VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_k USING p_id_k , p_interval_k;
COMMIT;
p_log_msg_k := p_log_msg_k || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_k);
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_msg_k VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_k(1 , '9' , v_msg_k);
END;
/

//创建  INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
v_sql_l VARCHAR(200);
BEGIN
v_sql_l := 'INSERT INTO t_table_007l VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_l USING p_id_l , p_interval_l;
COMMIT;
p_log_msg_l := p_log_msg_l || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_l);
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_msg_l VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_l(1 , '9' , v_msg_l);
END;
/

//创建  INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_dynamic_sql_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
v_sql_m VARCHAR(200);
BEGIN
v_sql_m := 'INSERT INTO t_table_007m VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_m USING p_id_m , p_interval_m;
COMMIT;
p_log_msg_m := p_log_msg_m || '动态 SQL 插入成功';
SEND_MSG(p_log_msg_m);
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_msg_m VARCHAR(100) := 'INTERVAL_DYNAMIC_TEST';
BEGIN
p_interval_dynamic_sql_m(1 , '9' , v_msg_m);
END;
/

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_007a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_007b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_007c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_007d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_007g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_007h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007m;

//删除存储过程
DROP PROCEDURE p_interval_dynamic_sql_a;
DROP PROCEDURE p_interval_dynamic_sql_b;
DROP PROCEDURE p_interval_dynamic_sql_c;
DROP PROCEDURE p_interval_dynamic_sql_d;
DROP PROCEDURE p_interval_dynamic_sql_e;
DROP PROCEDURE p_interval_dynamic_sql_f;
DROP PROCEDURE p_interval_dynamic_sql_g;
DROP PROCEDURE p_interval_dynamic_sql_h;
DROP PROCEDURE p_interval_dynamic_sql_i;
DROP PROCEDURE p_interval_dynamic_sql_j;
DROP PROCEDURE p_interval_dynamic_sql_k;
DROP PROCEDURE p_interval_dynamic_sql_l;
DROP PROCEDURE p_interval_dynamic_sql_m;

//删除表
DROP TABLE t_table_007a;
DROP TABLE t_table_007b;
DROP TABLE t_table_007c;
DROP TABLE t_table_007d;
DROP TABLE t_table_007e;
DROP TABLE t_table_007f;
DROP TABLE t_table_007g;
DROP TABLE t_table_007h;
DROP TABLE t_table_007i;
DROP TABLE t_table_007j;
DROP TABLE t_table_007k;
DROP TABLE t_table_007l;
DROP TABLE t_table_007m;

!4 XG-TYPE-INTERVAL-PROC-008 INTERVAL 未初始化使用
//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_a(
p_log_msg_a IN OUT VARCHAR
) AS
v_uninit_interval_a INTERVAL YEAR;
BEGIN
IF v_uninit_interval_a IS NULL THEN
p_log_msg_a := p_log_msg_a || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_a);
END IF;
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_msg_a VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_a(v_msg_a);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_b(
p_log_msg_b IN OUT VARCHAR
) AS
v_uninit_interval_b INTERVAL MONTH;
BEGIN
IF v_uninit_interval_b IS NULL THEN
p_log_msg_b := p_log_msg_b || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_b);
END IF;
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_msg_b VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_b(v_msg_b);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_c(
p_log_msg_c IN OUT VARCHAR
) AS
v_uninit_interval_c INTERVAL DAY;
BEGIN
IF v_uninit_interval_c IS NULL THEN
p_log_msg_c := p_log_msg_c || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_c);
END IF;
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_msg_c VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_c(v_msg_c);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_d(
p_log_msg_d IN OUT VARCHAR
) AS
v_uninit_interval_d INTERVAL HOUR;
BEGIN
IF v_uninit_interval_d IS NULL THEN
p_log_msg_d := p_log_msg_d || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_d);
END IF;
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_msg_d VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_d(v_msg_d);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_e(
p_log_msg_e IN OUT VARCHAR
) AS
v_uninit_interval_e INTERVAL MINUTE;
BEGIN
IF v_uninit_interval_e IS NULL THEN
p_log_msg_e := p_log_msg_e || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_e);
END IF;
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_msg_e VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_e(v_msg_e);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_f(
p_log_msg_f IN OUT VARCHAR
) AS
v_uninit_interval_f INTERVAL SECOND;
BEGIN
IF v_uninit_interval_f IS NULL THEN
p_log_msg_f := p_log_msg_f || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_f);
END IF;
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_msg_f VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_f(v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_g(
p_log_msg_g IN OUT VARCHAR
) AS
v_uninit_interval_g INTERVAL YEAR TO MONTH;
BEGIN
IF v_uninit_interval_g IS NULL THEN
p_log_msg_g := p_log_msg_g || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_g);
END IF;
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_msg_g VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_g(v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_h(
p_log_msg_h IN OUT VARCHAR
) AS
v_uninit_interval_h INTERVAL DAY TO HOUR;
BEGIN
IF v_uninit_interval_h IS NULL THEN
p_log_msg_h := p_log_msg_h || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_h);
END IF;
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_msg_h VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_h(v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_i(
p_log_msg_i IN OUT VARCHAR
) AS
v_uninit_interval_i INTERVAL DAY TO MINUTE;
BEGIN
IF v_uninit_interval_i IS NULL THEN
p_log_msg_i := p_log_msg_i || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_i);
END IF;
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_msg_i VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_i(v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_j(
p_log_msg_j IN OUT VARCHAR
) AS
v_uninit_interval_j INTERVAL DAY TO SECOND;
BEGIN
IF v_uninit_interval_j IS NULL THEN
p_log_msg_j := p_log_msg_j || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_j);
END IF;
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_msg_j VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_j(v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_k(
p_log_msg_k IN OUT VARCHAR
) AS
v_uninit_interval_k INTERVAL HOUR TO MINUTE;
BEGIN
IF v_uninit_interval_k IS NULL THEN
p_log_msg_k := p_log_msg_k || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_k);
END IF;
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_msg_k VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_k(v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_l(
p_log_msg_l IN OUT VARCHAR
) AS
v_uninit_interval_l INTERVAL HOUR TO SECOND;
BEGIN
IF v_uninit_interval_l IS NULL THEN
p_log_msg_l := p_log_msg_l || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_l);
END IF;
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_msg_l VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_l(v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_uninit_m(
p_log_msg_m IN OUT VARCHAR
) AS
v_uninit_interval_m INTERVAL MINUTE TO SECOND;
BEGIN
IF v_uninit_interval_m IS NULL THEN
p_log_msg_m := p_log_msg_m || '未初始化变量默认为 NULL';
SEND_MSG(p_log_msg_m);
END IF;
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_msg_m VARCHAR(100) := 'INTERVAL_UNINIT_TEST';
BEGIN
p_interval_uninit_m(v_msg_m);
END;
/

//删除存储过程
DROP PROCEDURE p_interval_uninit_a;
DROP PROCEDURE p_interval_uninit_b;
DROP PROCEDURE p_interval_uninit_c;
DROP PROCEDURE p_interval_uninit_d;
DROP PROCEDURE p_interval_uninit_e;
DROP PROCEDURE p_interval_uninit_f;
DROP PROCEDURE p_interval_uninit_g;
DROP PROCEDURE p_interval_uninit_h;
DROP PROCEDURE p_interval_uninit_i;
DROP PROCEDURE p_interval_uninit_j;
DROP PROCEDURE p_interval_uninit_k;
DROP PROCEDURE p_interval_uninit_l;
DROP PROCEDURE p_interval_uninit_m;

!4 XG-TYPE-INTERVAL-PROC-009 INTERVAL 传参方式
//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
BEGIN
p_log_msg_a := p_log_msg_a || 'p_id_a = ' || p_id_a || ' , p_interval_a = ' || TO_CHAR(p_interval_a);
SEND_MSG(p_log_msg_a);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_a VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_a(1 , '9' , v_msg_a);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_a VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_a(2 , '8' , v_msg_a);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_a|

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
BEGIN
p_log_msg_b := p_log_msg_b || 'p_id_b = ' || p_id_b || ' , p_interval_b = ' || TO_CHAR(p_interval_b);
SEND_MSG(p_log_msg_b);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_b VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_b(1 , '9' , v_msg_b);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_b VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_b(2 , '8' , v_msg_b);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_b|

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
BEGIN
p_log_msg_c := p_log_msg_c || 'p_id_c = ' || p_id_c || ' , p_interval_c = ' || TO_CHAR(p_interval_c);
SEND_MSG(p_log_msg_c);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_c VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_c(1 , '9' , v_msg_c);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_c VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_c(2 , '8' , v_msg_c);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_c|

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
BEGIN
p_log_msg_d := p_log_msg_d || 'p_id_d = ' || p_id_d || ' , p_interval_d = ' || TO_CHAR(p_interval_d);
SEND_MSG(p_log_msg_d);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_d VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_d(1 , '9' , v_msg_d);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_d VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_d(2 , '8' , v_msg_d);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_d|

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
BEGIN
p_log_msg_e := p_log_msg_e || 'p_id_e = ' || p_id_e || ' , p_interval_e = ' || TO_CHAR(p_interval_e);
SEND_MSG(p_log_msg_e);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_e VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_e(1 , '9' , v_msg_e);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_e VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_e(2 , '8' , v_msg_e);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_e|

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
BEGIN
p_log_msg_f := p_log_msg_f || 'p_id_f = ' || p_id_f || ' , p_interval_f = ' || TO_CHAR(p_interval_f);
SEND_MSG(p_log_msg_f);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_f VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_f(1 , '9' , v_msg_f);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_f VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_f(2 , '8' , v_msg_f);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_f|

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
BEGIN
p_log_msg_g := p_log_msg_g || 'p_id_g = ' || p_id_g || ' , p_interval_g = ' || TO_CHAR(p_interval_g);
SEND_MSG(p_log_msg_g);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_g VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_g(1 , '9' , v_msg_g);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_g VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_g(2 , '8' , v_msg_g);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_g|

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
BEGIN
p_log_msg_h := p_log_msg_h || 'p_id_h = ' || p_id_h || ' , p_interval_h = ' || TO_CHAR(p_interval_h);
SEND_MSG(p_log_msg_h);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_h VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_h(1 , '9' , v_msg_h);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_h VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_h(2 , '8' , v_msg_h);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_h|

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
BEGIN
p_log_msg_i := p_log_msg_i || 'p_id_i = ' || p_id_i || ' , p_interval_i = ' || TO_CHAR(p_interval_i);
SEND_MSG(p_log_msg_i);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_i VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_i(1 , '9' , v_msg_i);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_i VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_i(2 , '8' , v_msg_i);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_i|

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
BEGIN
p_log_msg_j := p_log_msg_j || 'p_id_j = ' || p_id_j || ' , p_interval_j = ' || TO_CHAR(p_interval_j);
SEND_MSG(p_log_msg_j);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_j VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_j(1 , '9' , v_msg_j);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_j VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_j(2 , '8' , v_msg_j);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_j|

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
BEGIN
p_log_msg_k := p_log_msg_k || 'p_id_k = ' || p_id_k || ' , p_interval_k = ' || TO_CHAR(p_interval_k);
SEND_MSG(p_log_msg_k);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_k VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_k(1 , '9' , v_msg_k);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_k VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_k(2 , '8' , v_msg_k);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_k|

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
BEGIN
p_log_msg_l := p_log_msg_l || 'p_id_l = ' || p_id_l || ' , p_interval_l = ' || TO_CHAR(p_interval_l);
SEND_MSG(p_log_msg_l);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_l VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_l(1 , '9' , v_msg_l);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_l VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_l(2 , '8' , v_msg_l);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_l|

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_call_method_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
BEGIN
p_log_msg_m := p_log_msg_m || 'p_id_m = ' || p_id_m || ' , p_interval_m = ' || TO_CHAR(p_interval_m);
SEND_MSG(p_log_msg_m);
END;
/

//方式一 : 普通传参 :  (PL/SQL 匿名块中直接调用)
DECLARE
v_msg_m VARCHAR(200) := '普通传参 : ';
BEGIN
p_interval_call_method_m(1 , '9' , v_msg_m);
END;
/

//方式二 : CALL 语法 : 
DECLARE
v_msg_m VARCHAR(200) := 'CALL 语法 : ';
BEGIN
CALL p_interval_call_method_m(2 , '8' , v_msg_m);
END;
/

//方式三 : EXECUTE PROCEDURE 语法

//|Execute Procedure|p_interval_call_method_m|

//删除存储过程
DROP PROCEDURE p_interval_call_method_a;
DROP PROCEDURE p_interval_call_method_b;
DROP PROCEDURE p_interval_call_method_c;
DROP PROCEDURE p_interval_call_method_d;
DROP PROCEDURE p_interval_call_method_e;
DROP PROCEDURE p_interval_call_method_f;
DROP PROCEDURE p_interval_call_method_g;
DROP PROCEDURE p_interval_call_method_h;
DROP PROCEDURE p_interval_call_method_i;
DROP PROCEDURE p_interval_call_method_j;
DROP PROCEDURE p_interval_call_method_k;
DROP PROCEDURE p_interval_call_method_l;
DROP PROCEDURE p_interval_call_method_m;