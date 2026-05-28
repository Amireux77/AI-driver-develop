!4 XG-TYPE-INTERVAL-FUNC-006 INTERVAL 插入表中
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

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_a(
f_id_a IN INT , 
f_interval_a IN INTERVAL YEAR
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006a VALUES (f_id_a , f_interval_a);
COMMIT;
RETURN 'INTERVAL YEAR - INSERT 成功 : id = ' || f_id_a || ' , INTERVAL YEAR = ' || TO_CHAR(f_interval_a);
END;
/

//执行函数
SELECT func_interval_insert_a(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_b(
f_id_b IN INT , 
f_interval_b IN INTERVAL MONTH
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006b VALUES (f_id_b , f_interval_b);
COMMIT;
RETURN 'INTERVAL MONTH - INSERT 成功 : id = ' || f_id_b || ' , INTERVAL MONTH = ' || TO_CHAR(f_interval_b);
END;
/

//执行函数
SELECT func_interval_insert_b(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_c(
f_id_c IN INT , 
f_interval_c IN INTERVAL DAY
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006c VALUES (f_id_c , f_interval_c);
COMMIT;
RETURN 'INTERVAL DAY - INSERT 成功 : id = ' || f_id_c || ' , INTERVAL DAY = ' || TO_CHAR(f_interval_c);
END;
/

//执行函数
SELECT func_interval_insert_c(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_d(
f_id_d IN INT , 
f_interval_d IN INTERVAL HOUR
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006d VALUES (f_id_d , f_interval_d);
COMMIT;
RETURN 'INTERVAL HOUR - INSERT 成功 : id = ' || f_id_d || ' , INTERVAL HOUR = ' || TO_CHAR(f_interval_d);
END;
/

//执行函数
SELECT func_interval_insert_d(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_e(
f_id_e IN INT , 
f_interval_e IN INTERVAL MINUTE
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006e VALUES (f_id_e , f_interval_e);
COMMIT;
RETURN 'INTERVAL MINUTE - INSERT 成功 : id = ' || f_id_e || ' , INTERVAL MINUTE = ' || TO_CHAR(f_interval_e);
END;
/

//执行函数
SELECT func_interval_insert_e(1 , '9') AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_f(
f_id_f IN INT , 
f_interval_f IN INTERVAL SECOND
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006f VALUES (f_id_f , f_interval_f);
COMMIT;
RETURN 'INTERVAL SECOND - INSERT 成功 : id = ' || f_id_f || ' , INTERVAL SECOND = ' || TO_CHAR(f_interval_f);
END;
/

//执行函数
SELECT func_interval_insert_f(1 , '9') AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_g(
f_id_g IN INT , 
f_interval_g IN INTERVAL YEAR TO MONTH
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006g VALUES (f_id_g , f_interval_g);
COMMIT;
RETURN 'INTERVAL YEAR TO MONTH - INSERT 成功 : id = ' || f_id_g || ' , INTERVAL YEAR TO MONTH = ' || TO_CHAR(f_interval_g);
END;
/

//执行函数
SELECT func_interval_insert_g(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_h(
f_id_h IN INT , 
f_interval_h IN INTERVAL DAY TO HOUR
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006h VALUES (f_id_h , f_interval_h);
COMMIT;
RETURN 'INTERVAL DAY TO HOUR - INSERT 成功 : id = ' || f_id_h || ' , INTERVAL DAY TO HOUR = ' || TO_CHAR(f_interval_h);
END;
/

//执行函数
SELECT func_interval_insert_h(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_i(
f_id_i IN INT , 
f_interval_i IN INTERVAL DAY TO MINUTE
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006i VALUES (f_id_i , f_interval_i);
COMMIT;
RETURN 'INTERVAL DAY TO MINUTE - INSERT 成功 : id = ' || f_id_i || ' , INTERVAL DAY TO MINUTE = ' || TO_CHAR(f_interval_i);
END;
/

//执行函数
SELECT func_interval_insert_i(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_j(
f_id_j IN INT , 
f_interval_j IN INTERVAL DAY TO SECOND
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006j VALUES (f_id_j , f_interval_j);
COMMIT;
RETURN 'INTERVAL DAY TO SECOND - INSERT 成功 : id = ' || f_id_j || ' , INTERVAL DAY TO SECOND = ' || TO_CHAR(f_interval_j);
END;
/

//执行函数
SELECT func_interval_insert_j(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_k(
f_id_k IN INT , 
f_interval_k IN INTERVAL HOUR TO MINUTE
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006k VALUES (f_id_k , f_interval_k);
COMMIT;
RETURN 'INTERVAL HOUR TO MINUTE - INSERT 成功 : id = ' || f_id_k || ' , INTERVAL HOUR TO MINUTE = ' || TO_CHAR(f_interval_k);
END;
/

//执行函数
SELECT func_interval_insert_k(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_l(
f_id_l IN INT , 
f_interval_l IN INTERVAL HOUR TO SECOND
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006l VALUES (f_id_l , f_interval_l);
COMMIT;
RETURN 'INTERVAL HOUR TO SECOND - INSERT 成功 : id = ' || f_id_l || ' , INTERVAL HOUR TO SECOND = ' || TO_CHAR(f_interval_l);
END;
/

//执行函数
SELECT func_interval_insert_l(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_insert_m(
f_id_m IN INT , 
f_interval_m IN INTERVAL MINUTE TO SECOND
) RETURN VARCHAR
AS
BEGIN
INSERT INTO t_table_006m VALUES (f_id_m , f_interval_m);
COMMIT;
RETURN 'INTERVAL MINUTE TO SECOND - INSERT 成功 : id = ' || f_id_m || ' , INTERVAL MINUTE TO SECOND = ' || TO_CHAR(f_interval_m);
END;
/

//执行函数
SELECT func_interval_insert_m(1 , '9') AS res FROM DUAL;

//查询结果
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_006a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_006b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_006c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_006d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_006e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_006f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_006g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_006h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_006i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_006j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_006k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_006l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_006m;

//删除存储函数
DROP FUNCTION func_interval_insert_a;
DROP FUNCTION func_interval_insert_b;
DROP FUNCTION func_interval_insert_c;
DROP FUNCTION func_interval_insert_d;
DROP FUNCTION func_interval_insert_e;
DROP FUNCTION func_interval_insert_f;
DROP FUNCTION func_interval_insert_g;
DROP FUNCTION func_interval_insert_h;
DROP FUNCTION func_interval_insert_i;
DROP FUNCTION func_interval_insert_j;
DROP FUNCTION func_interval_insert_k;
DROP FUNCTION func_interval_insert_l;
DROP FUNCTION func_interval_insert_m;

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