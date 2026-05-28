!4 XG-TYPE-INTERVAL-PKG-007 INTERVAL 动态传参
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


//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_a AS
PROCEDURE p_dymic_insert_interval_a(p_id_a IN INT , p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR);
PROCEDURE p_dymic_select_a(p_id_a IN INT , p_log_a IN OUT VARCHAR);
END pkg_interval_dymic_a;
/

//创建 INTERVAL YEAR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_a AS
PROCEDURE p_dymic_insert_interval_a(p_id_a IN INT , p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR) AS
v_sql_a VARCHAR(200);
BEGIN
v_sql_a := 'INSERT INTO t_table_007a VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_a USING p_id_a , p_interval_a;
COMMIT;
p_log_a := p_log_a || ' 动态 SQL 插入 INTERVAL YEAR 成功';
SEND_MSG(p_log_a);
END p_dymic_insert_interval_a;
PROCEDURE p_dymic_select_a(p_id_a IN INT , p_log_a IN OUT VARCHAR) AS
v_sql_a VARCHAR(200);
v_interval_a INTERVAL YEAR;
BEGIN
v_sql_a := 'SELECT c1 FROM t_table_007a WHERE id = :1';
EXECUTE IMMEDIATE v_sql_a INTO v_interval_a USING p_id_a;
p_log_a := p_log_a || ' 动态 SQL 查询 INTERVAL YEAR 成功';
SEND_MSG(p_log_a);
SEND_MSG('查询 INTERVAL YEAR 结果 : ' || TO_CHAR(v_interval_a));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_a;
END pkg_interval_dymic_a;
/

//测试 INTERVAL YEAR 动态传参 INSERT
DECLARE
v_msg_a VARCHAR(100) := 'DYMIC_INSERT :';
BEGIN
pkg_interval_dymic_a.p_dymic_insert_interval_a(1 , '9' , v_msg_a);
END;
/

//测试 INTERVAL YEAR 动态查询 SELECT
DECLARE
v_msg_a VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_a.p_dymic_select_a(1 , v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_b AS
PROCEDURE p_dymic_insert_interval_b(p_id_b IN INT , p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR);
PROCEDURE p_dymic_select_b(p_id_b IN INT , p_log_b IN OUT VARCHAR);
END pkg_interval_dymic_b;
/

//创建 INTERVAL MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_b AS
PROCEDURE p_dymic_insert_interval_b(p_id_b IN INT , p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR) AS
v_sql_b VARCHAR(200);
BEGIN
v_sql_b := 'INSERT INTO t_table_007b VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_b USING p_id_b , p_interval_b;
COMMIT;
p_log_b := p_log_b || ' 动态 SQL 插入 INTERVAL MONTH 成功';
SEND_MSG(p_log_b);
END p_dymic_insert_interval_b;
PROCEDURE p_dymic_select_b(p_id_b IN INT , p_log_b IN OUT VARCHAR) AS
v_sql_b VARCHAR(200);
v_interval_b INTERVAL MONTH;
BEGIN
v_sql_b := 'SELECT c1 FROM t_table_007b WHERE id = :1';
EXECUTE IMMEDIATE v_sql_b INTO v_interval_b USING p_id_b;
p_log_b := p_log_b || ' 动态 SQL 查询 INTERVAL MONTH 成功';
SEND_MSG(p_log_b);
SEND_MSG('查询 INTERVAL MONTH 结果 : ' || TO_CHAR(v_interval_b));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_b;
END pkg_interval_dymic_b;
/

//测试 INTERVAL MONTH 动态传参 INSERT
DECLARE
v_msg_b VARCHAR(100) := 'DYMIC_INTSERT :';
BEGIN
pkg_interval_dymic_b.p_dymic_insert_interval_b(1 , '9' , v_msg_b);
END;
/

//测试 INTERVAL MONTH 动态查询 SELECT
DECLARE
v_msg_b VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_b.p_dymic_select_b(1 , v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_c AS
PROCEDURE p_dymic_insert_interval_c(p_id_c IN INT , p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR);
PROCEDURE p_dymic_select_c(p_id_c IN INT , p_log_c IN OUT VARCHAR);
END pkg_interval_dymic_c;
/

//创建 INTERVAL DAY 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_c AS
PROCEDURE p_dymic_insert_interval_c(p_id_c IN INT , p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR) AS
v_sql_c VARCHAR(200);
BEGIN
v_sql_c := 'INSERT INTO t_table_007c VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_c USING p_id_c , p_interval_c;
COMMIT;
p_log_c := p_log_c || ' 动态 SQL 插入 INTERVAL DAY 成功';
SEND_MSG(p_log_c);
END p_dymic_insert_interval_c;
PROCEDURE p_dymic_select_c(p_id_c IN INT , p_log_c IN OUT VARCHAR) AS
v_sql_c VARCHAR(200);
v_interval_c INTERVAL DAY;
BEGIN
v_sql_c := 'SELECT c1 FROM t_table_007c WHERE id = :1';
EXECUTE IMMEDIATE v_sql_c INTO v_interval_c USING p_id_c;
p_log_c := p_log_c || ' 动态 SQL 查询 INTERVAL DAY 成功';
SEND_MSG(p_log_c);
SEND_MSG('查询 INTERVAL DAY 结果 : ' || TO_CHAR(v_interval_c));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_c;
END pkg_interval_dymic_c;
/

//测试 INTERVAL DAY 动态传参 INSERT
DECLARE
v_msg_c VARCHAR(100) := 'DYMIC_ISERT :';
BEGIN
pkg_interval_dymic_c.p_dymic_insert_interval_c(1 , '9' , v_msg_c);
END;
/

//测试 INTERVAL DAY 动态查询 SELECT
DECLARE
v_msg_c VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_c.p_dymic_select_c(1 , v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_d AS
PROCEDURE p_dymic_insert_interval_d(p_id_d IN INT , p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR);
PROCEDURE p_dymic_select_d(p_id_d IN INT , p_log_d IN OUT VARCHAR);
END pkg_interval_dymic_d;
/

//创建 INTERVAL HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_d AS
PROCEDURE p_dymic_insert_interval_d(p_id_d IN INT , p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR) AS
v_sql_d VARCHAR(200);
BEGIN
v_sql_d := 'INSERT INTO t_table_007d VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_d USING p_id_d , p_interval_d;
COMMIT;
p_log_d := p_log_d || ' 动态 SQL 插入 INTERVAL HOUR 成功';
SEND_MSG(p_log_d);
END p_dymic_insert_interval_d;
PROCEDURE p_dymic_select_d(p_id_d IN INT , p_log_d IN OUT VARCHAR) AS
v_sql_d VARCHAR(200);
v_interval_d INTERVAL HOUR;
BEGIN
v_sql_d := 'SELECT c1 FROM t_table_007d WHERE id = :1';
EXECUTE IMMEDIATE v_sql_d INTO v_interval_d USING p_id_d;
p_log_d := p_log_d || ' 动态 SQL 查询 INTERVAL HOUR 成功';
SEND_MSG(p_log_d);
SEND_MSG('查询 INTERVAL HOUR 结果 : ' || TO_CHAR(v_interval_d));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_d;
END pkg_interval_dymic_d;
/

//测试 INTERVAL HOUR 动态传参 INSERT
DECLARE
v_msg_d VARCHAR(100) := 'DYMIC_INSERT :';
BEGIN
pkg_interval_dymic_d.p_dymic_insert_interval_d(1 , '9' , v_msg_d);
END;
/

//测试 INTERVAL HOUR 动态查询 SELECT
DECLARE
v_msg_d VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_d.p_dymic_select_d(1 , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_e AS
PROCEDURE p_dymic_insert_interval_e(p_id_e IN INT , p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR);
PROCEDURE p_dymic_select_e(p_id_e IN INT , p_log_e IN OUT VARCHAR);
END pkg_interval_dymic_e;
/

//创建 INTERVAL MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_e AS
PROCEDURE p_dymic_insert_interval_e(p_id_e IN INT , p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR) AS
v_sql_e VARCHAR(200);
BEGIN
v_sql_e := 'INSERT INTO t_table_007e VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_e USING p_id_e , p_interval_e;
COMMIT;
p_log_e := p_log_e || ' 动态 SQL 插入 INTERVAL MINUTE 成功';
SEND_MSG(p_log_e);
END p_dymic_insert_interval_e;
PROCEDURE p_dymic_select_e(p_id_e IN INT , p_log_e IN OUT VARCHAR) AS
v_sql_e VARCHAR(200);
v_interval_e INTERVAL MINUTE;
BEGIN
v_sql_e := 'SELECT c1 FROM t_table_007e WHERE id = :1';
EXECUTE IMMEDIATE v_sql_e INTO v_interval_e USING p_id_e;
p_log_e := p_log_e || ' 动态 SQL 查询 INTERVAL MINUTE 成功';
SEND_MSG(p_log_e);
SEND_MSG('查询 INTERVAL MINUTE 结果 : ' || TO_CHAR(v_interval_e));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_e;
END pkg_interval_dymic_e;
/

//测试 INTERVAL MINUTE 动态传参 INSERT
DECLARE
v_msg_e VARCHAR(100) := 'DYMIC_INTESERT :';
BEGIN
pkg_interval_dymic_e.p_dymic_insert_interval_e(1 , '9' , v_msg_e);
END;
/

//测试 INTERVAL MINUTE 动态查询 SELECT
DECLARE
v_msg_e VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_e.p_dymic_select_e(1 , v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_f AS
PROCEDURE p_dymic_insert_interval_f(p_id_f IN INT , p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR);
PROCEDURE p_dymic_select_f(p_id_f IN INT , p_log_f IN OUT VARCHAR);
END pkg_interval_dymic_f;
/

//创建 INTERVAL SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_f AS
PROCEDURE p_dymic_insert_interval_f(p_id_f IN INT , p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR) AS
v_sql_f VARCHAR(200);
BEGIN
v_sql_f := 'INSERT INTO t_table_007f VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_f USING p_id_f , p_interval_f;
COMMIT;
p_log_f := p_log_f || ' 动态 SQL 插入 INTERVAL SECOND 成功';
SEND_MSG(p_log_f);
END p_dymic_insert_interval_f;
PROCEDURE p_dymic_select_f(p_id_f IN INT , p_log_f IN OUT VARCHAR) AS
v_sql_f VARCHAR(200);
v_interval_f INTERVAL SECOND;
BEGIN
v_sql_f := 'SELECT c1 FROM t_table_007f WHERE id = :1';
EXECUTE IMMEDIATE v_sql_f INTO v_interval_f USING p_id_f;
p_log_f := p_log_f || ' 动态 SQL 查询 INTERVAL SECOND 成功';
SEND_MSG(p_log_f);
SEND_MSG('查询 INTERVAL SECOND 结果 : ' || TO_CHAR(v_interval_f));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_f;
END pkg_interval_dymic_f;
/

//测试 INTERVAL SECOND 动态传参 INSERT
DECLARE
v_msg_f VARCHAR(100) := 'DYMIC_INTESERT :';
BEGIN
pkg_interval_dymic_f.p_dymic_insert_interval_f(1 , '9' , v_msg_f);
END;
/

//测试 INTERVAL SECOND 动态查询 SELECT
DECLARE
v_msg_f VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_f.p_dymic_select_f(1 , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_g AS
PROCEDURE p_dymic_insert_interval_g(p_id_g IN INT , p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR);
PROCEDURE p_dymic_select_g(p_id_g IN INT , p_log_g IN OUT VARCHAR);
END pkg_interval_dymic_g;
/

//创建 INTERVAL YEAR TO MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_g AS
PROCEDURE p_dymic_insert_interval_g(p_id_g IN INT , p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR) AS
v_sql_g VARCHAR(200);
BEGIN
v_sql_g := 'INSERT INTO t_table_007g VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_g USING p_id_g , p_interval_g;
COMMIT;
p_log_g := p_log_g || ' 动态 SQL 插入 INTERVAL YEAR TO MONTH 成功';
SEND_MSG(p_log_g);
END p_dymic_insert_interval_g;
PROCEDURE p_dymic_select_g(p_id_g IN INT , p_log_g IN OUT VARCHAR) AS
v_sql_g VARCHAR(200);
v_interval_g INTERVAL YEAR TO MONTH;
BEGIN
v_sql_g := 'SELECT c1 FROM t_table_007g WHERE id = :1';
EXECUTE IMMEDIATE v_sql_g INTO v_interval_g USING p_id_g;
p_log_g := p_log_g || ' 动态 SQL 查询 INTERVAL YEAR TO MONTH 成功';
SEND_MSG(p_log_g);
SEND_MSG('查询 INTERVAL YEAR TO MONTH 结果 : ' || TO_CHAR(v_interval_g));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_g;
END pkg_interval_dymic_g;
/

//测试 INTERVAL YEAR TO MONTH 动态传参 INSERT
DECLARE
v_msg_g VARCHAR(100) := 'DYMIC_INTERVAL YESERT :';
BEGIN
pkg_interval_dymic_g.p_dymic_insert_interval_g(1 , '9' , v_msg_g);
END;
/

//测试 INTERVAL YEAR TO MONTH 动态查询 SELECT
DECLARE
v_msg_g VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_g.p_dymic_select_g(1 , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_h AS
PROCEDURE p_dymic_insert_interval_h(p_id_h IN INT , p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR);
PROCEDURE p_dymic_select_h(p_id_h IN INT , p_log_h IN OUT VARCHAR);
END pkg_interval_dymic_h;
/

//创建 INTERVAL DAY TO HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_h AS
PROCEDURE p_dymic_insert_interval_h(p_id_h IN INT , p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR) AS
v_sql_h VARCHAR(200);
BEGIN
v_sql_h := 'INSERT INTO t_table_007h VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_h USING p_id_h , p_interval_h;
COMMIT;
p_log_h := p_log_h || ' 动态 SQL 插入 INTERVAL DAY TO HOUR 成功';
SEND_MSG(p_log_h);
END p_dymic_insert_interval_h;
PROCEDURE p_dymic_select_h(p_id_h IN INT , p_log_h IN OUT VARCHAR) AS
v_sql_h VARCHAR(200);
v_interval_h INTERVAL DAY TO HOUR;
BEGIN
v_sql_h := 'SELECT c1 FROM t_table_007h WHERE id = :1';
EXECUTE IMMEDIATE v_sql_h INTO v_interval_h USING p_id_h;
p_log_h := p_log_h || ' 动态 SQL 查询 INTERVAL DAY TO HOUR 成功';
SEND_MSG(p_log_h);
SEND_MSG('查询 INTERVAL DAY TO HOUR 结果 : ' || TO_CHAR(v_interval_h));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_h;
END pkg_interval_dymic_h;
/

//测试 INTERVAL DAY TO HOUR 动态传参 INSERT
DECLARE
v_msg_h VARCHAR(100) := 'DYMIC_INTERVAL SERT :';
BEGIN
pkg_interval_dymic_h.p_dymic_insert_interval_h(1 , '9' , v_msg_h);
END;
/

//测试 INTERVAL DAY TO HOUR 动态查询 SELECT
DECLARE
v_msg_h VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_h.p_dymic_select_h(1 , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_i AS
PROCEDURE p_dymic_insert_interval_i(p_id_i IN INT , p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR);
PROCEDURE p_dymic_select_i(p_id_i IN INT , p_log_i IN OUT VARCHAR);
END pkg_interval_dymic_i;
/

//创建 INTERVAL DAY TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_i AS
PROCEDURE p_dymic_insert_interval_i(p_id_i IN INT , p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR) AS
v_sql_i VARCHAR(200);
BEGIN
v_sql_i := 'INSERT INTO t_table_007i VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_i USING p_id_i , p_interval_i;
COMMIT;
p_log_i := p_log_i || ' 动态 SQL 插入 INTERVAL DAY TO MINUTE 成功';
SEND_MSG(p_log_i);
END p_dymic_insert_interval_i;
PROCEDURE p_dymic_select_i(p_id_i IN INT , p_log_i IN OUT VARCHAR) AS
v_sql_i VARCHAR(200);
v_interval_i INTERVAL DAY TO MINUTE;
BEGIN
v_sql_i := 'SELECT c1 FROM t_table_007i WHERE id = :1';
EXECUTE IMMEDIATE v_sql_i INTO v_interval_i USING p_id_i;
p_log_i := p_log_i || ' 动态 SQL 查询 INTERVAL DAY TO MINUTE 成功';
SEND_MSG(p_log_i);
SEND_MSG('查询 INTERVAL DAY TO MINUTE 结果 : ' || TO_CHAR(v_interval_i));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_i;
END pkg_interval_dymic_i;
/

//测试 INTERVAL DAY TO MINUTE 动态传参 INSERT
DECLARE
v_msg_i VARCHAR(100) := 'DYMIC_INTERVAL DASERT :';
BEGIN
pkg_interval_dymic_i.p_dymic_insert_interval_i(1 , '9' , v_msg_i);
END;
/

//测试 INTERVAL DAY TO MINUTE 动态查询 SELECT
DECLARE
v_msg_i VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_i.p_dymic_select_i(1 , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_j AS
PROCEDURE p_dymic_insert_interval_j(p_id_j IN INT , p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR);
PROCEDURE p_dymic_select_j(p_id_j IN INT , p_log_j IN OUT VARCHAR);
END pkg_interval_dymic_j;
/

//创建 INTERVAL DAY TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_j AS
PROCEDURE p_dymic_insert_interval_j(p_id_j IN INT , p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR) AS
v_sql_j VARCHAR(200);
BEGIN
v_sql_j := 'INSERT INTO t_table_007j VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_j USING p_id_j , p_interval_j;
COMMIT;
p_log_j := p_log_j || ' 动态 SQL 插入 INTERVAL DAY TO SECOND 成功';
SEND_MSG(p_log_j);
END p_dymic_insert_interval_j;
PROCEDURE p_dymic_select_j(p_id_j IN INT , p_log_j IN OUT VARCHAR) AS
v_sql_j VARCHAR(200);
v_interval_j INTERVAL DAY TO SECOND;
BEGIN
v_sql_j := 'SELECT c1 FROM t_table_007j WHERE id = :1';
EXECUTE IMMEDIATE v_sql_j INTO v_interval_j USING p_id_j;
p_log_j := p_log_j || ' 动态 SQL 查询 INTERVAL DAY TO SECOND 成功';
SEND_MSG(p_log_j);
SEND_MSG('查询 INTERVAL DAY TO SECOND 结果 : ' || TO_CHAR(v_interval_j));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_j;
END pkg_interval_dymic_j;
/

//测试 INTERVAL DAY TO SECOND 动态传参 INSERT
DECLARE
v_msg_j VARCHAR(100) := 'DYMIC_INTERVAL DASERT :';
BEGIN
pkg_interval_dymic_j.p_dymic_insert_interval_j(1 , '9' , v_msg_j);
END;
/

//测试 INTERVAL DAY TO SECOND 动态查询 SELECT
DECLARE
v_msg_j VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_j.p_dymic_select_j(1 , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_k AS
PROCEDURE p_dymic_insert_interval_k(p_id_k IN INT , p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR);
PROCEDURE p_dymic_select_k(p_id_k IN INT , p_log_k IN OUT VARCHAR);
END pkg_interval_dymic_k;
/

//创建 INTERVAL HOUR TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_k AS
PROCEDURE p_dymic_insert_interval_k(p_id_k IN INT , p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR) AS
v_sql_k VARCHAR(200);
BEGIN
v_sql_k := 'INSERT INTO t_table_007k VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_k USING p_id_k , p_interval_k;
COMMIT;
p_log_k := p_log_k || ' 动态 SQL 插入 INTERVAL HOUR TO MINUTE 成功';
SEND_MSG(p_log_k);
END p_dymic_insert_interval_k;
PROCEDURE p_dymic_select_k(p_id_k IN INT , p_log_k IN OUT VARCHAR) AS
v_sql_k VARCHAR(200);
v_interval_k INTERVAL HOUR TO MINUTE;
BEGIN
v_sql_k := 'SELECT c1 FROM t_table_007k WHERE id = :1';
EXECUTE IMMEDIATE v_sql_k INTO v_interval_k USING p_id_k;
p_log_k := p_log_k || ' 动态 SQL 查询 INTERVAL HOUR TO MINUTE 成功';
SEND_MSG(p_log_k);
SEND_MSG('查询 INTERVAL HOUR TO MINUTE 结果 : ' || TO_CHAR(v_interval_k));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_k;
END pkg_interval_dymic_k;
/

//测试 INTERVAL HOUR TO MINUTE 动态传参 INSERT
DECLARE
v_msg_k VARCHAR(100) := 'DYMIC_INTERVAL HOUSERT :';
BEGIN
pkg_interval_dymic_k.p_dymic_insert_interval_k(1 , '9' , v_msg_k);
END;
/

//测试 INTERVAL HOUR TO MINUTE 动态查询 SELECT
DECLARE
v_msg_k VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_k.p_dymic_select_k(1 , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_l AS
PROCEDURE p_dymic_insert_interval_l(p_id_l IN INT , p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR);
PROCEDURE p_dymic_select_l(p_id_l IN INT , p_log_l IN OUT VARCHAR);
END pkg_interval_dymic_l;
/

//创建 INTERVAL HOUR TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_l AS
PROCEDURE p_dymic_insert_interval_l(p_id_l IN INT , p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR) AS
v_sql_l VARCHAR(200);
BEGIN
v_sql_l := 'INSERT INTO t_table_007l VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_l USING p_id_l , p_interval_l;
COMMIT;
p_log_l := p_log_l || ' 动态 SQL 插入 INTERVAL HOUR TO SECOND 成功';
SEND_MSG(p_log_l);
END p_dymic_insert_interval_l;
PROCEDURE p_dymic_select_l(p_id_l IN INT , p_log_l IN OUT VARCHAR) AS
v_sql_l VARCHAR(200);
v_interval_l INTERVAL HOUR TO SECOND;
BEGIN
v_sql_l := 'SELECT c1 FROM t_table_007l WHERE id = :1';
EXECUTE IMMEDIATE v_sql_l INTO v_interval_l USING p_id_l;
p_log_l := p_log_l || ' 动态 SQL 查询 INTERVAL HOUR TO SECOND 成功';
SEND_MSG(p_log_l);
SEND_MSG('查询 INTERVAL HOUR TO SECOND 结果 : ' || TO_CHAR(v_interval_l));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_l;
END pkg_interval_dymic_l;
/

//测试 INTERVAL HOUR TO SECOND 动态传参 INSERT
DECLARE
v_msg_l VARCHAR(100) := 'DYMIC_INTERVAL HOUSERT :';
BEGIN
pkg_interval_dymic_l.p_dymic_insert_interval_l(1 , '9' , v_msg_l);
END;
/

//测试 INTERVAL HOUR TO SECOND 动态查询 SELECT
DECLARE
v_msg_l VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_l.p_dymic_select_l(1 , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_dymic_m AS
PROCEDURE p_dymic_insert_interval_m(p_id_m IN INT , p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR);
PROCEDURE p_dymic_select_m(p_id_m IN INT , p_log_m IN OUT VARCHAR);
END pkg_interval_dymic_m;
/

//创建 INTERVAL MINUTE TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_dymic_m AS
PROCEDURE p_dymic_insert_interval_m(p_id_m IN INT , p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR) AS
v_sql_m VARCHAR(200);
BEGIN
v_sql_m := 'INSERT INTO t_table_007m VALUES (:1 , :2)';
EXECUTE IMMEDIATE v_sql_m USING p_id_m , p_interval_m;
COMMIT;
p_log_m := p_log_m || ' 动态 SQL 插入 INTERVAL MINUTE TO SECOND 成功';
SEND_MSG(p_log_m);
END p_dymic_insert_interval_m;
PROCEDURE p_dymic_select_m(p_id_m IN INT , p_log_m IN OUT VARCHAR) AS
v_sql_m VARCHAR(200);
v_interval_m INTERVAL MINUTE TO SECOND;
BEGIN
v_sql_m := 'SELECT c1 FROM t_table_007m WHERE id = :1';
EXECUTE IMMEDIATE v_sql_m INTO v_interval_m USING p_id_m;
p_log_m := p_log_m || ' 动态 SQL 查询 INTERVAL MINUTE TO SECOND 成功';
SEND_MSG(p_log_m);
SEND_MSG('查询 INTERVAL MINUTE TO SECOND 结果 : ' || TO_CHAR(v_interval_m));
EXCEPTION
WHEN OTHERS THEN
SEND_MSG('查询异常 : ' || SQLERRM);
END p_dymic_select_m;
END pkg_interval_dymic_m;
/

//测试 INTERVAL MINUTE TO SECOND 动态传参 INSERT
DECLARE
v_msg_m VARCHAR(100) := 'DYMIC_INTERVAL MINUTSERT :';
BEGIN
pkg_interval_dymic_m.p_dymic_insert_interval_m(1 , '9' , v_msg_m);
END;
/

//测试 INTERVAL MINUTE TO SECOND 动态查询 SELECT
DECLARE
v_msg_m VARCHAR(100) := 'DYMIC_SELECT :';
BEGIN
pkg_interval_dymic_m.p_dymic_select_m(1 , v_msg_m);
END;
/

//查询结果
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_007a ORDER BY id;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_007b ORDER BY id;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_007c ORDER BY id;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_007d ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007e ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007f ORDER BY id;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_007g ORDER BY id;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_007h ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007i ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007j ORDER BY id;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_007k ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007l ORDER BY id;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_007m ORDER BY id;

//删除包
DROP PACKAGE pkg_interval_dymic_a;
DROP PACKAGE pkg_interval_dymic_b;
DROP PACKAGE pkg_interval_dymic_c;
DROP PACKAGE pkg_interval_dymic_d;
DROP PACKAGE pkg_interval_dymic_e;
DROP PACKAGE pkg_interval_dymic_f;
DROP PACKAGE pkg_interval_dymic_g;
DROP PACKAGE pkg_interval_dymic_h;
DROP PACKAGE pkg_interval_dymic_i;
DROP PACKAGE pkg_interval_dymic_j;
DROP PACKAGE pkg_interval_dymic_k;
DROP PACKAGE pkg_interval_dymic_l;
DROP PACKAGE pkg_interval_dymic_m;

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

!4 XG-TYPE-INTERVAL-PKG-008 INTERVAL 未初始化使用

//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_a AS
PROCEDURE p_interval_uninit_a(p_log_a IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_a(p_interval_a IN INTERVAL YEAR ,  p_log_a IN OUT VARCHAR);
END pkg_interval_uninit_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_a AS
PROCEDURE p_interval_uninit_a(p_log_a IN OUT VARCHAR) AS
v_uninit_time_a INTERVAL YEAR;
BEGIN
IF v_uninit_time_a IS NULL THEN
p_log_a := p_log_a || ' INTERVAL YEAR 未初始化默认为 NULL';
SEND_MSG(p_log_a);
END IF;
END p_interval_uninit_a;
PROCEDURE p_interval_uninit_calc_a(p_interval_a IN INTERVAL YEAR ,  p_log_a IN OUT VARCHAR) AS
v_calc_result_a INTERVAL YEAR;
BEGIN
IF p_interval_a IS NULL THEN
p_log_a := p_log_a || ' INTERVAL YEAR 参数为 NULL';
SEND_MSG(p_log_a);
ELSE
v_calc_result_a := p_interval_a + '1';
p_log_a := p_log_a || ' INTERVAL YEAR : ' || v_calc_result_a;
SEND_MSG(p_log_a);
END IF;
END p_interval_uninit_calc_a;
END pkg_interval_uninit_a;
/

//测试 INTERVAL YEAR 未初始化变量默认为 NULL
DECLARE
v_msg_a VARCHAR(100) := 'UNINIT_INTERVAL YEAR :';
BEGIN
pkg_interval_uninit_a.p_interval_uninit_a(v_msg_a);
END;
/

//测试 INTERVAL YEAR 参数未传值 (NULL) 时的处理
DECLARE
v_msg_a VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_a INTERVAL YEAR;
BEGIN
pkg_interval_uninit_a.p_interval_uninit_calc_a(v_null_interval_a , v_msg_a);
END;
/

//测试 INTERVAL YEAR 参数有值时的计算
DECLARE
v_msg_a VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_a.p_interval_uninit_calc_a('9' ,  v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_b AS
PROCEDURE p_interval_uninit_b(p_log_b IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_b(p_interval_b IN INTERVAL MONTH ,  p_log_b IN OUT VARCHAR);
END pkg_interval_uninit_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_b AS
PROCEDURE p_interval_uninit_b(p_log_b IN OUT VARCHAR) AS
v_uninit_time_b INTERVAL MONTH;
BEGIN
IF v_uninit_time_b IS NULL THEN
p_log_b := p_log_b || ' INTERVAL MONTH 未初始化默认为 NULL';
SEND_MSG(p_log_b);
END IF;
END p_interval_uninit_b;
PROCEDURE p_interval_uninit_calc_b(p_interval_b IN INTERVAL MONTH ,  p_log_b IN OUT VARCHAR) AS
v_calc_result_b INTERVAL MONTH;
BEGIN
IF p_interval_b IS NULL THEN
p_log_b := p_log_b || ' INTERVAL MONTH 参数为 NULL';
SEND_MSG(p_log_b);
ELSE
v_calc_result_b := p_interval_b + '1';
p_log_b := p_log_b || ' INTERVAL MONTH : ' || v_calc_result_b;
SEND_MSG(p_log_b);
END IF;
END p_interval_uninit_calc_b;
END pkg_interval_uninit_b;
/

//测试 INTERVAL MONTH 未初始化变量默认为 NULL
DECLARE
v_msg_b VARCHAR(100) := 'UNINIT_INTERVAL MONTH :';
BEGIN
pkg_interval_uninit_b.p_interval_uninit_b(v_msg_b);
END;
/

//测试 INTERVAL MONTH 参数未传值 (NULL) 时的处理
DECLARE
v_msg_b VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_b INTERVAL MONTH;
BEGIN
pkg_interval_uninit_b.p_interval_uninit_calc_b(v_null_interval_b , v_msg_b);
END;
/

//测试 INTERVAL MONTH 参数有值时的计算
DECLARE
v_msg_b VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_b.p_interval_uninit_calc_b('9' ,  v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_c AS
PROCEDURE p_interval_uninit_c(p_log_c IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_c(p_interval_c IN INTERVAL DAY ,  p_log_c IN OUT VARCHAR);
END pkg_interval_uninit_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_c AS
PROCEDURE p_interval_uninit_c(p_log_c IN OUT VARCHAR) AS
v_uninit_time_c INTERVAL DAY;
BEGIN
IF v_uninit_time_c IS NULL THEN
p_log_c := p_log_c || ' INTERVAL DAY 未初始化默认为 NULL';
SEND_MSG(p_log_c);
END IF;
END p_interval_uninit_c;
PROCEDURE p_interval_uninit_calc_c(p_interval_c IN INTERVAL DAY ,  p_log_c IN OUT VARCHAR) AS
v_calc_result_c INTERVAL DAY;
BEGIN
IF p_interval_c IS NULL THEN
p_log_c := p_log_c || ' INTERVAL DAY 参数为 NULL';
SEND_MSG(p_log_c);
ELSE
v_calc_result_c := p_interval_c + '1';
p_log_c := p_log_c || ' INTERVAL DAY : ' || v_calc_result_c;
SEND_MSG(p_log_c);
END IF;
END p_interval_uninit_calc_c;
END pkg_interval_uninit_c;
/

//测试 INTERVAL DAY 未初始化变量默认为 NULL
DECLARE
v_msg_c VARCHAR(100) := 'UNINIT_INTERVAL DAY :';
BEGIN
pkg_interval_uninit_c.p_interval_uninit_c(v_msg_c);
END;
/

//测试 INTERVAL DAY 参数未传值 (NULL) 时的处理
DECLARE
v_msg_c VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_c INTERVAL DAY;
BEGIN
pkg_interval_uninit_c.p_interval_uninit_calc_c(v_null_interval_c , v_msg_c);
END;
/

//测试 INTERVAL DAY 参数有值时的计算
DECLARE
v_msg_c VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_c.p_interval_uninit_calc_c('9' ,  v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_d AS
PROCEDURE p_interval_uninit_d(p_log_d IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_d(p_interval_d IN INTERVAL HOUR ,  p_log_d IN OUT VARCHAR);
END pkg_interval_uninit_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_d AS
PROCEDURE p_interval_uninit_d(p_log_d IN OUT VARCHAR) AS
v_uninit_time_d INTERVAL HOUR;
BEGIN
IF v_uninit_time_d IS NULL THEN
p_log_d := p_log_d || ' INTERVAL HOUR 未初始化默认为 NULL';
SEND_MSG(p_log_d);
END IF;
END p_interval_uninit_d;
PROCEDURE p_interval_uninit_calc_d(p_interval_d IN INTERVAL HOUR ,  p_log_d IN OUT VARCHAR) AS
v_calc_result_d INTERVAL HOUR;
BEGIN
IF p_interval_d IS NULL THEN
p_log_d := p_log_d || ' INTERVAL HOUR 参数为 NULL';
SEND_MSG(p_log_d);
ELSE
v_calc_result_d := p_interval_d + '1';
p_log_d := p_log_d || ' INTERVAL HOUR : ' || v_calc_result_d;
SEND_MSG(p_log_d);
END IF;
END p_interval_uninit_calc_d;
END pkg_interval_uninit_d;
/

//测试 INTERVAL HOUR 未初始化变量默认为 NULL
DECLARE
v_msg_d VARCHAR(100) := 'UNINIT_INTERVAL HOUR :';
BEGIN
pkg_interval_uninit_d.p_interval_uninit_d(v_msg_d);
END;
/

//测试 INTERVAL HOUR 参数未传值 (NULL) 时的处理
DECLARE
v_msg_d VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_d INTERVAL HOUR;
BEGIN
pkg_interval_uninit_d.p_interval_uninit_calc_d(v_null_interval_d , v_msg_d);
END;
/

//测试 INTERVAL HOUR 参数有值时的计算
DECLARE
v_msg_d VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_d.p_interval_uninit_calc_d('9' ,  v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_e AS
PROCEDURE p_interval_uninit_e(p_log_e IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_e(p_interval_e IN INTERVAL MINUTE ,  p_log_e IN OUT VARCHAR);
END pkg_interval_uninit_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_e AS
PROCEDURE p_interval_uninit_e(p_log_e IN OUT VARCHAR) AS
v_uninit_time_e INTERVAL MINUTE;
BEGIN
IF v_uninit_time_e IS NULL THEN
p_log_e := p_log_e || ' INTERVAL MINUTE 未初始化默认为 NULL';
SEND_MSG(p_log_e);
END IF;
END p_interval_uninit_e;
PROCEDURE p_interval_uninit_calc_e(p_interval_e IN INTERVAL MINUTE ,  p_log_e IN OUT VARCHAR) AS
v_calc_result_e INTERVAL MINUTE;
BEGIN
IF p_interval_e IS NULL THEN
p_log_e := p_log_e || ' INTERVAL MINUTE 参数为 NULL';
SEND_MSG(p_log_e);
ELSE
v_calc_result_e := p_interval_e + '1';
p_log_e := p_log_e || ' INTERVAL MINUTE : ' || v_calc_result_e;
SEND_MSG(p_log_e);
END IF;
END p_interval_uninit_calc_e;
END pkg_interval_uninit_e;
/

//测试 INTERVAL MINUTE 未初始化变量默认为 NULL
DECLARE
v_msg_e VARCHAR(100) := 'UNINIT_INTERVAL MINUTE :';
BEGIN
pkg_interval_uninit_e.p_interval_uninit_e(v_msg_e);
END;
/

//测试 INTERVAL MINUTE 参数未传值 (NULL) 时的处理
DECLARE
v_msg_e VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_e INTERVAL MINUTE;
BEGIN
pkg_interval_uninit_e.p_interval_uninit_calc_e(v_null_interval_e , v_msg_e);
END;
/

//测试 INTERVAL MINUTE 参数有值时的计算
DECLARE
v_msg_e VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_e.p_interval_uninit_calc_e('9' ,  v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_f AS
PROCEDURE p_interval_uninit_f(p_log_f IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_f(p_interval_f IN INTERVAL SECOND ,  p_log_f IN OUT VARCHAR);
END pkg_interval_uninit_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_f AS
PROCEDURE p_interval_uninit_f(p_log_f IN OUT VARCHAR) AS
v_uninit_time_f INTERVAL SECOND;
BEGIN
IF v_uninit_time_f IS NULL THEN
p_log_f := p_log_f || ' INTERVAL SECOND 未初始化默认为 NULL';
SEND_MSG(p_log_f);
END IF;
END p_interval_uninit_f;
PROCEDURE p_interval_uninit_calc_f(p_interval_f IN INTERVAL SECOND ,  p_log_f IN OUT VARCHAR) AS
v_calc_result_f INTERVAL SECOND;
BEGIN
IF p_interval_f IS NULL THEN
p_log_f := p_log_f || ' INTERVAL SECOND 参数为 NULL';
SEND_MSG(p_log_f);
ELSE
v_calc_result_f := p_interval_f + '1';
p_log_f := p_log_f || ' INTERVAL SECOND : ' || v_calc_result_f;
SEND_MSG(p_log_f);
END IF;
END p_interval_uninit_calc_f;
END pkg_interval_uninit_f;
/

//测试 INTERVAL SECOND 未初始化变量默认为 NULL
DECLARE
v_msg_f VARCHAR(100) := 'UNINIT_INTERVAL SECOND :';
BEGIN
pkg_interval_uninit_f.p_interval_uninit_f(v_msg_f);
END;
/

//测试 INTERVAL SECOND 参数未传值 (NULL) 时的处理
DECLARE
v_msg_f VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_f INTERVAL SECOND;
BEGIN
pkg_interval_uninit_f.p_interval_uninit_calc_f(v_null_interval_f , v_msg_f);
END;
/

//测试 INTERVAL SECOND 参数有值时的计算
DECLARE
v_msg_f VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_f.p_interval_uninit_calc_f('9' ,  v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_g AS
PROCEDURE p_interval_uninit_g(p_log_g IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_g(p_interval_g IN INTERVAL YEAR TO MONTH ,  p_log_g IN OUT VARCHAR);
END pkg_interval_uninit_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_g AS
PROCEDURE p_interval_uninit_g(p_log_g IN OUT VARCHAR) AS
v_uninit_time_g INTERVAL YEAR TO MONTH;
BEGIN
IF v_uninit_time_g IS NULL THEN
p_log_g := p_log_g || ' INTERVAL YEAR TO MONTH 未初始化默认为 NULL';
SEND_MSG(p_log_g);
END IF;
END p_interval_uninit_g;
PROCEDURE p_interval_uninit_calc_g(p_interval_g IN INTERVAL YEAR TO MONTH ,  p_log_g IN OUT VARCHAR) AS
v_calc_result_g INTERVAL YEAR TO MONTH;
BEGIN
IF p_interval_g IS NULL THEN
p_log_g := p_log_g || ' INTERVAL YEAR TO MONTH 参数为 NULL';
SEND_MSG(p_log_g);
ELSE
v_calc_result_g := p_interval_g + '1';
p_log_g := p_log_g || ' INTERVAL YEAR TO MONTH : ' || v_calc_result_g;
SEND_MSG(p_log_g);
END IF;
END p_interval_uninit_calc_g;
END pkg_interval_uninit_g;
/

//测试 INTERVAL YEAR TO MONTH 未初始化变量默认为 NULL
DECLARE
v_msg_g VARCHAR(100) := 'UNINIT_INTERVAL YEAR TO MONTH :';
BEGIN
pkg_interval_uninit_g.p_interval_uninit_g(v_msg_g);
END;
/

//测试 INTERVAL YEAR TO MONTH 参数未传值 (NULL) 时的处理
DECLARE
v_msg_g VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_g INTERVAL YEAR TO MONTH;
BEGIN
pkg_interval_uninit_g.p_interval_uninit_calc_g(v_null_interval_g , v_msg_g);
END;
/

//测试 INTERVAL YEAR TO MONTH 参数有值时的计算
DECLARE
v_msg_g VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_g.p_interval_uninit_calc_g('9' ,  v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_h AS
PROCEDURE p_interval_uninit_h(p_log_h IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_h(p_interval_h IN INTERVAL DAY TO HOUR ,  p_log_h IN OUT VARCHAR);
END pkg_interval_uninit_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_h AS
PROCEDURE p_interval_uninit_h(p_log_h IN OUT VARCHAR) AS
v_uninit_time_h INTERVAL DAY TO HOUR;
BEGIN
IF v_uninit_time_h IS NULL THEN
p_log_h := p_log_h || ' INTERVAL DAY TO HOUR 未初始化默认为 NULL';
SEND_MSG(p_log_h);
END IF;
END p_interval_uninit_h;
PROCEDURE p_interval_uninit_calc_h(p_interval_h IN INTERVAL DAY TO HOUR ,  p_log_h IN OUT VARCHAR) AS
v_calc_result_h INTERVAL DAY TO HOUR;
BEGIN
IF p_interval_h IS NULL THEN
p_log_h := p_log_h || ' INTERVAL DAY TO HOUR 参数为 NULL';
SEND_MSG(p_log_h);
ELSE
v_calc_result_h := p_interval_h + '1';
p_log_h := p_log_h || ' INTERVAL DAY TO HOUR : ' || v_calc_result_h;
SEND_MSG(p_log_h);
END IF;
END p_interval_uninit_calc_h;
END pkg_interval_uninit_h;
/

//测试 INTERVAL DAY TO HOUR 未初始化变量默认为 NULL
DECLARE
v_msg_h VARCHAR(100) := 'UNINIT_INTERVAL DAY TO HOUR :';
BEGIN
pkg_interval_uninit_h.p_interval_uninit_h(v_msg_h);
END;
/

//测试 INTERVAL DAY TO HOUR 参数未传值 (NULL) 时的处理
DECLARE
v_msg_h VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_h INTERVAL DAY TO HOUR;
BEGIN
pkg_interval_uninit_h.p_interval_uninit_calc_h(v_null_interval_h , v_msg_h);
END;
/

//测试 INTERVAL DAY TO HOUR 参数有值时的计算
DECLARE
v_msg_h VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_h.p_interval_uninit_calc_h('9' ,  v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_i AS
PROCEDURE p_interval_uninit_i(p_log_i IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_i(p_interval_i IN INTERVAL DAY TO MINUTE ,  p_log_i IN OUT VARCHAR);
END pkg_interval_uninit_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_i AS
PROCEDURE p_interval_uninit_i(p_log_i IN OUT VARCHAR) AS
v_uninit_time_i INTERVAL DAY TO MINUTE;
BEGIN
IF v_uninit_time_i IS NULL THEN
p_log_i := p_log_i || ' INTERVAL DAY TO MINUTE 未初始化默认为 NULL';
SEND_MSG(p_log_i);
END IF;
END p_interval_uninit_i;
PROCEDURE p_interval_uninit_calc_i(p_interval_i IN INTERVAL DAY TO MINUTE ,  p_log_i IN OUT VARCHAR) AS
v_calc_result_i INTERVAL DAY TO MINUTE;
BEGIN
IF p_interval_i IS NULL THEN
p_log_i := p_log_i || ' INTERVAL DAY TO MINUTE 参数为 NULL';
SEND_MSG(p_log_i);
ELSE
v_calc_result_i := p_interval_i + '1';
p_log_i := p_log_i || ' INTERVAL DAY TO MINUTE : ' || v_calc_result_i;
SEND_MSG(p_log_i);
END IF;
END p_interval_uninit_calc_i;
END pkg_interval_uninit_i;
/

//测试 INTERVAL DAY TO MINUTE 未初始化变量默认为 NULL
DECLARE
v_msg_i VARCHAR(100) := 'UNINIT_INTERVAL DAY TO MINUTE :';
BEGIN
pkg_interval_uninit_i.p_interval_uninit_i(v_msg_i);
END;
/

//测试 INTERVAL DAY TO MINUTE 参数未传值 (NULL) 时的处理
DECLARE
v_msg_i VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_i INTERVAL DAY TO MINUTE;
BEGIN
pkg_interval_uninit_i.p_interval_uninit_calc_i(v_null_interval_i , v_msg_i);
END;
/

//测试 INTERVAL DAY TO MINUTE 参数有值时的计算
DECLARE
v_msg_i VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_i.p_interval_uninit_calc_i('9' ,  v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_j AS
PROCEDURE p_interval_uninit_j(p_log_j IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_j(p_interval_j IN INTERVAL DAY TO SECOND ,  p_log_j IN OUT VARCHAR);
END pkg_interval_uninit_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_j AS
PROCEDURE p_interval_uninit_j(p_log_j IN OUT VARCHAR) AS
v_uninit_time_j INTERVAL DAY TO SECOND;
BEGIN
IF v_uninit_time_j IS NULL THEN
p_log_j := p_log_j || ' INTERVAL DAY TO SECOND 未初始化默认为 NULL';
SEND_MSG(p_log_j);
END IF;
END p_interval_uninit_j;
PROCEDURE p_interval_uninit_calc_j(p_interval_j IN INTERVAL DAY TO SECOND ,  p_log_j IN OUT VARCHAR) AS
v_calc_result_j INTERVAL DAY TO SECOND;
BEGIN
IF p_interval_j IS NULL THEN
p_log_j := p_log_j || ' INTERVAL DAY TO SECOND 参数为 NULL';
SEND_MSG(p_log_j);
ELSE
v_calc_result_j := p_interval_j + '1';
p_log_j := p_log_j || ' INTERVAL DAY TO SECOND : ' || v_calc_result_j;
SEND_MSG(p_log_j);
END IF;
END p_interval_uninit_calc_j;
END pkg_interval_uninit_j;
/

//测试 INTERVAL DAY TO SECOND 未初始化变量默认为 NULL
DECLARE
v_msg_j VARCHAR(100) := 'UNINIT_INTERVAL DAY TO SECOND :';
BEGIN
pkg_interval_uninit_j.p_interval_uninit_j(v_msg_j);
END;
/

//测试 INTERVAL DAY TO SECOND 参数未传值 (NULL) 时的处理
DECLARE
v_msg_j VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_j INTERVAL DAY TO SECOND;
BEGIN
pkg_interval_uninit_j.p_interval_uninit_calc_j(v_null_interval_j , v_msg_j);
END;
/

//测试 INTERVAL DAY TO SECOND 参数有值时的计算
DECLARE
v_msg_j VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_j.p_interval_uninit_calc_j('9' ,  v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_k AS
PROCEDURE p_interval_uninit_k(p_log_k IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_k(p_interval_k IN INTERVAL HOUR TO MINUTE ,  p_log_k IN OUT VARCHAR);
END pkg_interval_uninit_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_k AS
PROCEDURE p_interval_uninit_k(p_log_k IN OUT VARCHAR) AS
v_uninit_time_k INTERVAL HOUR TO MINUTE;
BEGIN
IF v_uninit_time_k IS NULL THEN
p_log_k := p_log_k || ' INTERVAL HOUR TO MINUTE 未初始化默认为 NULL';
SEND_MSG(p_log_k);
END IF;
END p_interval_uninit_k;
PROCEDURE p_interval_uninit_calc_k(p_interval_k IN INTERVAL HOUR TO MINUTE ,  p_log_k IN OUT VARCHAR) AS
v_calc_result_k INTERVAL HOUR TO MINUTE;
BEGIN
IF p_interval_k IS NULL THEN
p_log_k := p_log_k || ' INTERVAL HOUR TO MINUTE 参数为 NULL';
SEND_MSG(p_log_k);
ELSE
v_calc_result_k := p_interval_k + '1';
p_log_k := p_log_k || ' INTERVAL HOUR TO MINUTE : ' || v_calc_result_k;
SEND_MSG(p_log_k);
END IF;
END p_interval_uninit_calc_k;
END pkg_interval_uninit_k;
/

//测试 INTERVAL HOUR TO MINUTE 未初始化变量默认为 NULL
DECLARE
v_msg_k VARCHAR(100) := 'UNINIT_INTERVAL HOUR TO MINUTE :';
BEGIN
pkg_interval_uninit_k.p_interval_uninit_k(v_msg_k);
END;
/

//测试 INTERVAL HOUR TO MINUTE 参数未传值 (NULL) 时的处理
DECLARE
v_msg_k VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_k INTERVAL HOUR TO MINUTE;
BEGIN
pkg_interval_uninit_k.p_interval_uninit_calc_k(v_null_interval_k , v_msg_k);
END;
/

//测试 INTERVAL HOUR TO MINUTE 参数有值时的计算
DECLARE
v_msg_k VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_k.p_interval_uninit_calc_k('9' ,  v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_l AS
PROCEDURE p_interval_uninit_l(p_log_l IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_l(p_interval_l IN INTERVAL HOUR TO SECOND ,  p_log_l IN OUT VARCHAR);
END pkg_interval_uninit_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_l AS
PROCEDURE p_interval_uninit_l(p_log_l IN OUT VARCHAR) AS
v_uninit_time_l INTERVAL HOUR TO SECOND;
BEGIN
IF v_uninit_time_l IS NULL THEN
p_log_l := p_log_l || ' INTERVAL HOUR TO SECOND 未初始化默认为 NULL';
SEND_MSG(p_log_l);
END IF;
END p_interval_uninit_l;
PROCEDURE p_interval_uninit_calc_l(p_interval_l IN INTERVAL HOUR TO SECOND ,  p_log_l IN OUT VARCHAR) AS
v_calc_result_l INTERVAL HOUR TO SECOND;
BEGIN
IF p_interval_l IS NULL THEN
p_log_l := p_log_l || ' INTERVAL HOUR TO SECOND 参数为 NULL';
SEND_MSG(p_log_l);
ELSE
v_calc_result_l := p_interval_l + '1';
p_log_l := p_log_l || ' INTERVAL HOUR TO SECOND : ' || v_calc_result_l;
SEND_MSG(p_log_l);
END IF;
END p_interval_uninit_calc_l;
END pkg_interval_uninit_l;
/

//测试 INTERVAL HOUR TO SECOND 未初始化变量默认为 NULL
DECLARE
v_msg_l VARCHAR(100) := 'UNINIT_INTERVAL HOUR TO SECOND :';
BEGIN
pkg_interval_uninit_l.p_interval_uninit_l(v_msg_l);
END;
/

//测试 INTERVAL HOUR TO SECOND 参数未传值 (NULL) 时的处理
DECLARE
v_msg_l VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_l INTERVAL HOUR TO SECOND;
BEGIN
pkg_interval_uninit_l.p_interval_uninit_calc_l(v_null_interval_l , v_msg_l);
END;
/

//测试 INTERVAL HOUR TO SECOND 参数有值时的计算
DECLARE
v_msg_l VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_l.p_interval_uninit_calc_l('9' ,  v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_uninit_m AS
PROCEDURE p_interval_uninit_m(p_log_m IN OUT VARCHAR);
PROCEDURE p_interval_uninit_calc_m(p_interval_m IN INTERVAL MINUTE TO SECOND ,  p_log_m IN OUT VARCHAR);
END pkg_interval_uninit_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_uninit_m AS
PROCEDURE p_interval_uninit_m(p_log_m IN OUT VARCHAR) AS
v_uninit_time_m INTERVAL MINUTE TO SECOND;
BEGIN
IF v_uninit_time_m IS NULL THEN
p_log_m := p_log_m || ' INTERVAL MINUTE TO SECOND 未初始化默认为 NULL';
SEND_MSG(p_log_m);
END IF;
END p_interval_uninit_m;
PROCEDURE p_interval_uninit_calc_m(p_interval_m IN INTERVAL MINUTE TO SECOND ,  p_log_m IN OUT VARCHAR) AS
v_calc_result_m INTERVAL MINUTE TO SECOND;
BEGIN
IF p_interval_m IS NULL THEN
p_log_m := p_log_m || ' INTERVAL MINUTE TO SECOND 参数为 NULL';
SEND_MSG(p_log_m);
ELSE
v_calc_result_m := p_interval_m + '1';
p_log_m := p_log_m || ' INTERVAL MINUTE TO SECOND : ' || v_calc_result_m;
SEND_MSG(p_log_m);
END IF;
END p_interval_uninit_calc_m;
END pkg_interval_uninit_m;
/

//测试 INTERVAL MINUTE TO SECOND 未初始化变量默认为 NULL
DECLARE
v_msg_m VARCHAR(100) := 'UNINIT_INTERVAL MINUTE TO SECOND :';
BEGIN
pkg_interval_uninit_m.p_interval_uninit_m(v_msg_m);
END;
/

//测试 INTERVAL MINUTE TO SECOND 参数未传值 (NULL) 时的处理
DECLARE
v_msg_m VARCHAR (100) := 'UNINIT_PARAM :';
v_null_interval_m INTERVAL MINUTE TO SECOND;
BEGIN
pkg_interval_uninit_m.p_interval_uninit_calc_m(v_null_interval_m , v_msg_m);
END;
/

//测试 INTERVAL MINUTE TO SECOND 参数有值时的计算
DECLARE
v_msg_m VARCHAR(100) := 'INIT_PARAM';
BEGIN
pkg_interval_uninit_m.p_interval_uninit_calc_m('9' ,  v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_uninit_a;
DROP PACKAGE pkg_interval_uninit_b;
DROP PACKAGE pkg_interval_uninit_c;
DROP PACKAGE pkg_interval_uninit_d;
DROP PACKAGE pkg_interval_uninit_e;
DROP PACKAGE pkg_interval_uninit_f;
DROP PACKAGE pkg_interval_uninit_g;
DROP PACKAGE pkg_interval_uninit_h;
DROP PACKAGE pkg_interval_uninit_i;
DROP PACKAGE pkg_interval_uninit_j;
DROP PACKAGE pkg_interval_uninit_k;
DROP PACKAGE pkg_interval_uninit_l;
DROP PACKAGE pkg_interval_uninit_m;

!4 XG-TYPE-INTERVAL-PKG-009 INTERVAL 传参方式

//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_a AS
PROCEDURE p_call_test_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
);
END pkg_interval_call_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_a AS
PROCEDURE p_call_test_a(
p_id_a IN INT , 
p_interval_a IN INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
) AS
BEGIN
p_log_a := p_log_a || ' p_id_a = ' || p_id_a || ' , p_interval_a = ' || p_interval_a;
SEND_MSG(p_log_a);
END p_call_test_a;
END pkg_interval_call_a;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_a VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_a.p_call_test_a(1 ,  '9' ,  v_msg_a);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_b AS
PROCEDURE p_call_test_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
);
END pkg_interval_call_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_b AS
PROCEDURE p_call_test_b(
p_id_b IN INT , 
p_interval_b IN INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
) AS
BEGIN
p_log_b := p_log_b || ' p_id_b = ' || p_id_b || ' , p_interval_b = ' || p_interval_b;
SEND_MSG(p_log_b);
END p_call_test_b;
END pkg_interval_call_b;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_b VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_b.p_call_test_b(1 ,  '9' ,  v_msg_b);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_c AS
PROCEDURE p_call_test_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_c IN OUT VARCHAR
);
END pkg_interval_call_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_c AS
PROCEDURE p_call_test_c(
p_id_c IN INT , 
p_interval_c IN INTERVAL DAY , 
p_log_c IN OUT VARCHAR
) AS
BEGIN
p_log_c := p_log_c || ' p_id_c = ' || p_id_c || ' , p_interval_c = ' || p_interval_c;
SEND_MSG(p_log_c);
END p_call_test_c;
END pkg_interval_call_c;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_c VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_c.p_call_test_c(1 ,  '9' ,  v_msg_c);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_d AS
PROCEDURE p_call_test_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
);
END pkg_interval_call_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_d AS
PROCEDURE p_call_test_d(
p_id_d IN INT , 
p_interval_d IN INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
) AS
BEGIN
p_log_d := p_log_d || ' p_id_d = ' || p_id_d || ' , p_interval_d = ' || p_interval_d;
SEND_MSG(p_log_d);
END p_call_test_d;
END pkg_interval_call_d;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_d VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_d.p_call_test_d(1 ,  '9' ,  v_msg_d);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_e AS
PROCEDURE p_call_test_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
);
END pkg_interval_call_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_e AS
PROCEDURE p_call_test_e(
p_id_e IN INT , 
p_interval_e IN INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
) AS
BEGIN
p_log_e := p_log_e || ' p_id_e = ' || p_id_e || ' , p_interval_e = ' || p_interval_e;
SEND_MSG(p_log_e);
END p_call_test_e;
END pkg_interval_call_e;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_e VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_e.p_call_test_e(1 ,  '9' ,  v_msg_e);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_f AS
PROCEDURE p_call_test_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
);
END pkg_interval_call_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_f AS
PROCEDURE p_call_test_f(
p_id_f IN INT , 
p_interval_f IN INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
) AS
BEGIN
p_log_f := p_log_f || ' p_id_f = ' || p_id_f || ' , p_interval_f = ' || p_interval_f;
SEND_MSG(p_log_f);
END p_call_test_f;
END pkg_interval_call_f;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_f VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_f.p_call_test_f(1 ,  '9' ,  v_msg_f);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_g AS
PROCEDURE p_call_test_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
);
END pkg_interval_call_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_g AS
PROCEDURE p_call_test_g(
p_id_g IN INT , 
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
) AS
BEGIN
p_log_g := p_log_g || ' p_id_g = ' || p_id_g || ' , p_interval_g = ' || p_interval_g;
SEND_MSG(p_log_g);
END p_call_test_g;
END pkg_interval_call_g;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_g VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_g.p_call_test_g(1 ,  '9' ,  v_msg_g);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_h AS
PROCEDURE p_call_test_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
);
END pkg_interval_call_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_h AS
PROCEDURE p_call_test_h(
p_id_h IN INT , 
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
) AS
BEGIN
p_log_h := p_log_h || ' p_id_h = ' || p_id_h || ' , p_interval_h = ' || p_interval_h;
SEND_MSG(p_log_h);
END p_call_test_h;
END pkg_interval_call_h;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_h VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_h.p_call_test_h(1 ,  '9' ,  v_msg_h);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_i AS
PROCEDURE p_call_test_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
);
END pkg_interval_call_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_i AS
PROCEDURE p_call_test_i(
p_id_i IN INT , 
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
) AS
BEGIN
p_log_i := p_log_i || ' p_id_i = ' || p_id_i || ' , p_interval_i = ' || p_interval_i;
SEND_MSG(p_log_i);
END p_call_test_i;
END pkg_interval_call_i;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_i VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_i.p_call_test_i(1 ,  '9' ,  v_msg_i);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_j AS
PROCEDURE p_call_test_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
);
END pkg_interval_call_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_j AS
PROCEDURE p_call_test_j(
p_id_j IN INT , 
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
) AS
BEGIN
p_log_j := p_log_j || ' p_id_j = ' || p_id_j || ' , p_interval_j = ' || p_interval_j;
SEND_MSG(p_log_j);
END p_call_test_j;
END pkg_interval_call_j;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_j VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_j.p_call_test_j(1 ,  '9' ,  v_msg_j);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_k AS
PROCEDURE p_call_test_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
);
END pkg_interval_call_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_k AS
PROCEDURE p_call_test_k(
p_id_k IN INT , 
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
) AS
BEGIN
p_log_k := p_log_k || ' p_id_k = ' || p_id_k || ' , p_interval_k = ' || p_interval_k;
SEND_MSG(p_log_k);
END p_call_test_k;
END pkg_interval_call_k;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_k VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_k.p_call_test_k(1 ,  '9' ,  v_msg_k);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_l AS
PROCEDURE p_call_test_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
);
END pkg_interval_call_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_l AS
PROCEDURE p_call_test_l(
p_id_l IN INT , 
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
) AS
BEGIN
p_log_l := p_log_l || ' p_id_l = ' || p_id_l || ' , p_interval_l = ' || p_interval_l;
SEND_MSG(p_log_l);
END p_call_test_l;
END pkg_interval_call_l;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_l VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_l.p_call_test_l(1 ,  '9' ,  v_msg_l);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_call_m AS
PROCEDURE p_call_test_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
);
END pkg_interval_call_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_call_m AS
PROCEDURE p_call_test_m(
p_id_m IN INT , 
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
) AS
BEGIN
p_log_m := p_log_m || ' p_id_m = ' || p_id_m || ' , p_interval_m = ' || p_interval_m;
SEND_MSG(p_log_m);
END p_call_test_m;
END pkg_interval_call_m;
/

//方式一 : 普通传参 (PL/SQL 匿名块中调用)
DECLARE
v_msg_m VARCHAR(300) := '普通传参 : ';
BEGIN
pkg_interval_call_m.p_call_test_m(1 ,  '9' ,  v_msg_m);
END;
/

//方式二 : EXECUTE PROCEDURE 语法调用

//方式三 : 带默认值参数的命名参数传参

//删除包
DROP PACKAGE pkg_interval_call_a;
DROP PACKAGE pkg_interval_call_b;
DROP PACKAGE pkg_interval_call_c;
DROP PACKAGE pkg_interval_call_d;
DROP PACKAGE pkg_interval_call_e;
DROP PACKAGE pkg_interval_call_f;
DROP PACKAGE pkg_interval_call_g;
DROP PACKAGE pkg_interval_call_h;
DROP PACKAGE pkg_interval_call_i;
DROP PACKAGE pkg_interval_call_j;
DROP PACKAGE pkg_interval_call_k;
DROP PACKAGE pkg_interval_call_l;
DROP PACKAGE pkg_interval_call_m;