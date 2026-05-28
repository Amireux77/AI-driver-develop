!4 XG-TYPE-INTERVAL-FUNC-009 INTERVAL 动态传参
//创建表
CREATE TABLE t_table_009a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_009b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_009c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_009d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_009e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_009f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_009g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_009h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_009i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_009j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_009k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_009l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_009m (id INT , c1 INTERVAL MINUTE TO SECOND);


//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_a(
f_id_a IN INT , 
f_interval_a IN INTERVAL YEAR
) RETURN VARCHAR
AS
v_sql_a VARCHAR(200);
BEGIN
v_sql_a := 'INSERT INTO t_table_009a VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_a USING f_id_a , f_interval_a;
COMMIT;
RETURN 'INTERVAL YEAR - 动态 SQL 插入成功 : id = ' || f_id_a || ' , INTERVAL YEAR = ' || TO_CHAR(f_interval_a);
END;
/

//执行函数
SELECT func_interval_dynamic_a(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_b(
f_id_b IN INT , 
f_interval_b IN INTERVAL MONTH
) RETURN VARCHAR
AS
v_sql_b VARCHAR(200);
BEGIN
v_sql_b := 'INSERT INTO t_table_009b VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_b USING f_id_b , f_interval_b;
COMMIT;
RETURN 'INTERVAL MONTH - 动态 SQL 插入成功 : id = ' || f_id_b || ' , INTERVAL MONTH = ' || TO_CHAR(f_interval_b);
END;
/

//执行函数
SELECT func_interval_dynamic_b(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_c(
f_id_c IN INT , 
f_interval_c IN INTERVAL DAY
) RETURN VARCHAR
AS
v_sql_c VARCHAR(200);
BEGIN
v_sql_c := 'INSERT INTO t_table_009c VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_c USING f_id_c , f_interval_c;
COMMIT;
RETURN 'INTERVAL DAY - 动态 SQL 插入成功 : id = ' || f_id_c || ' , INTERVAL DAY = ' || TO_CHAR(f_interval_c);
END;
/

//执行函数
SELECT func_interval_dynamic_c(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_d(
f_id_d IN INT , 
f_interval_d IN INTERVAL HOUR
) RETURN VARCHAR
AS
v_sql_d VARCHAR(200);
BEGIN
v_sql_d := 'INSERT INTO t_table_009d VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_d USING f_id_d , f_interval_d;
COMMIT;
RETURN 'INTERVAL HOUR - 动态 SQL 插入成功 : id = ' || f_id_d || ' , INTERVAL HOUR = ' || TO_CHAR(f_interval_d);
END;
/

//执行函数
SELECT func_interval_dynamic_d(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_e(
f_id_e IN INT , 
f_interval_e IN INTERVAL MINUTE
) RETURN VARCHAR
AS
v_sql_e VARCHAR(200);
BEGIN
v_sql_e := 'INSERT INTO t_table_009e VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_e USING f_id_e , f_interval_e;
COMMIT;
RETURN 'INTERVAL MINUTE - 动态 SQL 插入成功 : id = ' || f_id_e || ' , INTERVAL MINUTE = ' || TO_CHAR(f_interval_e);
END;
/

//执行函数
SELECT func_interval_dynamic_e(1 , '9') AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_f(
f_id_f IN INT , 
f_interval_f IN INTERVAL SECOND
) RETURN VARCHAR
AS
v_sql_f VARCHAR(200);
BEGIN
v_sql_f := 'INSERT INTO t_table_009f VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_f USING f_id_f , f_interval_f;
COMMIT;
RETURN 'INTERVAL SECOND - 动态 SQL 插入成功 : id = ' || f_id_f || ' , INTERVAL SECOND = ' || TO_CHAR(f_interval_f);
END;
/

//执行函数
SELECT func_interval_dynamic_f(1 , '9') AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_g(
f_id_g IN INT , 
f_interval_g IN INTERVAL YEAR TO MONTH
) RETURN VARCHAR
AS
v_sql_g VARCHAR(200);
BEGIN
v_sql_g := 'INSERT INTO t_table_009g VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_g USING f_id_g , f_interval_g;
COMMIT;
RETURN 'INTERVAL YEAR TO MONTH - 动态 SQL 插入成功 : id = ' || f_id_g || ' , INTERVAL YEAR TO MONTH = ' || TO_CHAR(f_interval_g);
END;
/

//执行函数
SELECT func_interval_dynamic_g(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_h(
f_id_h IN INT , 
f_interval_h IN INTERVAL DAY TO HOUR
) RETURN VARCHAR
AS
v_sql_h VARCHAR(200);
BEGIN
v_sql_h := 'INSERT INTO t_table_009h VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_h USING f_id_h , f_interval_h;
COMMIT;
RETURN 'INTERVAL DAY TO HOUR - 动态 SQL 插入成功 : id = ' || f_id_h || ' , INTERVAL DAY TO HOUR = ' || TO_CHAR(f_interval_h);
END;
/

//执行函数
SELECT func_interval_dynamic_h(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_i(
f_id_i IN INT , 
f_interval_i IN INTERVAL DAY TO MINUTE
) RETURN VARCHAR
AS
v_sql_i VARCHAR(200);
BEGIN
v_sql_i := 'INSERT INTO t_table_009i VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_i USING f_id_i , f_interval_i;
COMMIT;
RETURN 'INTERVAL DAY TO MINUTE - 动态 SQL 插入成功 : id = ' || f_id_i || ' , INTERVAL DAY TO MINUTE = ' || TO_CHAR(f_interval_i);
END;
/

//执行函数
SELECT func_interval_dynamic_i(1 , '9') AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_j(
f_id_j IN INT , 
f_interval_j IN INTERVAL DAY TO SECOND
) RETURN VARCHAR
AS
v_sql_j VARCHAR(200);
BEGIN
v_sql_j := 'INSERT INTO t_table_009j VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_j USING f_id_j , f_interval_j;
COMMIT;
RETURN 'INTERVAL DAY TO SECOND - 动态 SQL 插入成功 : id = ' || f_id_j || ' , INTERVAL DAY TO SECOND = ' || TO_CHAR(f_interval_j);
END;
/

//执行函数
SELECT func_interval_dynamic_j(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_k(
f_id_k IN INT , 
f_interval_k IN INTERVAL HOUR TO MINUTE
) RETURN VARCHAR
AS
v_sql_k VARCHAR(200);
BEGIN
v_sql_k := 'INSERT INTO t_table_009k VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_k USING f_id_k , f_interval_k;
COMMIT;
RETURN 'INTERVAL HOUR TO MINUTE - 动态 SQL 插入成功 : id = ' || f_id_k || ' , INTERVAL HOUR TO MINUTE = ' || TO_CHAR(f_interval_k);
END;
/

//执行函数
SELECT func_interval_dynamic_k(1 , '9') AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_l(
f_id_l IN INT , 
f_interval_l IN INTERVAL HOUR TO SECOND
) RETURN VARCHAR
AS
v_sql_l VARCHAR(200);
BEGIN
v_sql_l := 'INSERT INTO t_table_009l VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_l USING f_id_l , f_interval_l;
COMMIT;
RETURN 'INTERVAL HOUR TO SECOND - 动态 SQL 插入成功 : id = ' || f_id_l || ' , INTERVAL HOUR TO SECOND = ' || TO_CHAR(f_interval_l);
END;
/

//执行函数
SELECT func_interval_dynamic_l(1 , '9') AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_dynamic_m(
f_id_m IN INT , 
f_interval_m IN INTERVAL MINUTE TO SECOND
) RETURN VARCHAR
AS
v_sql_m VARCHAR(200);
BEGIN
v_sql_m := 'INSERT INTO t_table_009m VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_m USING f_id_m , f_interval_m;
COMMIT;
RETURN 'INTERVAL MINUTE TO SECOND - 动态 SQL 插入成功 : id = ' || f_id_m || ' , INTERVAL MINUTE TO SECOND = ' || TO_CHAR(f_interval_m);
END;
/

//执行函数
SELECT func_interval_dynamic_m(1 , '9') AS res FROM DUAL;

//查询结果
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_009a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_009b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_009c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_009d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_009e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_009f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_009g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_009h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_009i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_009j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_009k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_009l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_009m;

//删除存储函数
DROP FUNCTION func_interval_dynamic_a;
DROP FUNCTION func_interval_dynamic_b;
DROP FUNCTION func_interval_dynamic_c;
DROP FUNCTION func_interval_dynamic_d;
DROP FUNCTION func_interval_dynamic_e;
DROP FUNCTION func_interval_dynamic_f;
DROP FUNCTION func_interval_dynamic_g;
DROP FUNCTION func_interval_dynamic_h;
DROP FUNCTION func_interval_dynamic_i;
DROP FUNCTION func_interval_dynamic_j;
DROP FUNCTION func_interval_dynamic_k;
DROP FUNCTION func_interval_dynamic_l;
DROP FUNCTION func_interval_dynamic_m;

//删除表
DROP TABLE t_table_009a;
DROP TABLE t_table_009b;
DROP TABLE t_table_009c;
DROP TABLE t_table_009d;
DROP TABLE t_table_009e;
DROP TABLE t_table_009f;
DROP TABLE t_table_009g;
DROP TABLE t_table_009h;
DROP TABLE t_table_009i;
DROP TABLE t_table_009j;
DROP TABLE t_table_009k;
DROP TABLE t_table_009l;
DROP TABLE t_table_009m;

!4 XG-TYPE-INTERVAL-FUNC-010 INTERVAL 未初始化使用

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_a(
) RETURN VARCHAR
AS
v_uninit_a INTERVAL YEAR;
BEGIN
IF v_uninit_a IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_a() AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_b(
) RETURN VARCHAR
AS
v_uninit_b INTERVAL MONTH;
BEGIN
IF v_uninit_b IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_b() AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_c(
) RETURN VARCHAR
AS
v_uninit_c INTERVAL DAY;
BEGIN
IF v_uninit_c IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_c() AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_d(
) RETURN VARCHAR
AS
v_uninit_d INTERVAL HOUR;
BEGIN
IF v_uninit_d IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_d() AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_e(
) RETURN VARCHAR
AS
v_uninit_e INTERVAL MINUTE;
BEGIN
IF v_uninit_e IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_e() AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_f(
) RETURN VARCHAR
AS
v_uninit_f INTERVAL SECOND;
BEGIN
IF v_uninit_f IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_f() AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_g(
) RETURN VARCHAR
AS
v_uninit_g INTERVAL YEAR TO MONTH;
BEGIN
IF v_uninit_g IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_g() AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_h(
) RETURN VARCHAR
AS
v_uninit_h INTERVAL DAY TO HOUR;
BEGIN
IF v_uninit_h IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_h() AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_i(
) RETURN VARCHAR
AS
v_uninit_i INTERVAL DAY TO MINUTE;
BEGIN
IF v_uninit_i IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_i() AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_j(
) RETURN VARCHAR
AS
v_uninit_j INTERVAL DAY TO SECOND;
BEGIN
IF v_uninit_j IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_j() AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_k(
) RETURN VARCHAR
AS
v_uninit_k INTERVAL HOUR TO MINUTE;
BEGIN
IF v_uninit_k IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_k() AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_l(
) RETURN VARCHAR
AS
v_uninit_l INTERVAL HOUR TO SECOND;
BEGIN
IF v_uninit_l IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_l() AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_uninit_m(
) RETURN VARCHAR
AS
v_uninit_m INTERVAL MINUTE TO SECOND;
BEGIN
IF v_uninit_m IS NULL THEN
RETURN '未初始化变量默认为 NULL';
ELSE
RETURN '异常 : 未初始化变量不为 NULL';
END IF;
END;
/

//执行函数
SELECT func_interval_uninit_m() AS res FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_uninit_a;
DROP FUNCTION func_interval_uninit_b;
DROP FUNCTION func_interval_uninit_c;
DROP FUNCTION func_interval_uninit_d;
DROP FUNCTION func_interval_uninit_e;
DROP FUNCTION func_interval_uninit_f;
DROP FUNCTION func_interval_uninit_g;
DROP FUNCTION func_interval_uninit_h;
DROP FUNCTION func_interval_uninit_i;
DROP FUNCTION func_interval_uninit_j;
DROP FUNCTION func_interval_uninit_k;
DROP FUNCTION func_interval_uninit_l;
DROP FUNCTION func_interval_uninit_m;