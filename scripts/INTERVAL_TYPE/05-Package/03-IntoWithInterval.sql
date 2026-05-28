!4 XG-TYPE-INTERVAL-PKG-003 INTERVAL SELECT INTO
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

//插入数据
INSERT INTO t_table_003a VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003b VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003c VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003d VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003e VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003f VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003g VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003h VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003i VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003j VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003k VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003l VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_003m VALUES(1 , '7') , (2 , '8') , (3 , '9');


//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_a AS 
PROCEDURE p_interval_select_into_a(p_id_a IN INT , p_interval_a OUT INTERVAL YEAR , p_log_a IN OUT VARCHAR);
END pkg_interval_select_into_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_a AS
PROCEDURE p_interval_select_into_a(p_id_a IN INT ,  p_interval_a OUT INTERVAL YEAR , p_log_a IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_a FROM t_table_003a WHERE id =p_id_a;
p_log_a := p_log_a || ' , SELECT INTO 成功';
SEND_MSG(p_log_a);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_a));
END p_interval_select_into_a;
END pkg_interval_select_into_a;
/

//测试 INTERVAL YEAR SELECT INTO
DECLARE
v_interval_a INTERVAL YEAR;
v_msg_a VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_a.p_interval_select_into_a(2 , v_interval_a , v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_b AS 
PROCEDURE p_interval_select_into_b(p_id_b IN INT , p_interval_b OUT INTERVAL MONTH , p_log_b IN OUT VARCHAR);
END pkg_interval_select_into_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_b AS
PROCEDURE p_interval_select_into_b(p_id_b IN INT ,  p_interval_b OUT INTERVAL MONTH , p_log_b IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_b FROM t_table_003b WHERE id =p_id_b;
p_log_b := p_log_b || ' , SELECT INTO 成功';
SEND_MSG(p_log_b);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_b));
END p_interval_select_into_b;
END pkg_interval_select_into_b;
/

//测试 INTERVAL MONTH SELECT INTO
DECLARE
v_interval_b INTERVAL MONTH;
v_msg_b VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_b.p_interval_select_into_b(2 , v_interval_b , v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_c AS 
PROCEDURE p_interval_select_into_c(p_id_c IN INT , p_interval_c OUT INTERVAL DAY , p_log_c IN OUT VARCHAR);
END pkg_interval_select_into_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_c AS
PROCEDURE p_interval_select_into_c(p_id_c IN INT ,  p_interval_c OUT INTERVAL DAY , p_log_c IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_c FROM t_table_003c WHERE id =p_id_c;
p_log_c := p_log_c || ' , SELECT INTO 成功';
SEND_MSG(p_log_c);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_c));
END p_interval_select_into_c;
END pkg_interval_select_into_c;
/

//测试 INTERVAL DAY SELECT INTO
DECLARE
v_interval_c INTERVAL DAY;
v_msg_c VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_c.p_interval_select_into_c(2 , v_interval_c , v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_d AS 
PROCEDURE p_interval_select_into_d(p_id_d IN INT , p_interval_d OUT INTERVAL HOUR , p_log_d IN OUT VARCHAR);
END pkg_interval_select_into_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_d AS
PROCEDURE p_interval_select_into_d(p_id_d IN INT ,  p_interval_d OUT INTERVAL HOUR , p_log_d IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_d FROM t_table_003d WHERE id =p_id_d;
p_log_d := p_log_d || ' , SELECT INTO 成功';
SEND_MSG(p_log_d);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_d));
END p_interval_select_into_d;
END pkg_interval_select_into_d;
/

//测试 INTERVAL HOUR SELECT INTO
DECLARE
v_interval_d INTERVAL HOUR;
v_msg_d VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_d.p_interval_select_into_d(2 , v_interval_d , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_e AS 
PROCEDURE p_interval_select_into_e(p_id_e IN INT , p_interval_e OUT INTERVAL MINUTE , p_log_e IN OUT VARCHAR);
END pkg_interval_select_into_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_e AS
PROCEDURE p_interval_select_into_e(p_id_e IN INT ,  p_interval_e OUT INTERVAL MINUTE , p_log_e IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_e FROM t_table_003e WHERE id =p_id_e;
p_log_e := p_log_e || ' , SELECT INTO 成功';
SEND_MSG(p_log_e);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_e));
END p_interval_select_into_e;
END pkg_interval_select_into_e;
/

//测试 INTERVAL MINUTE SELECT INTO
DECLARE
v_interval_e INTERVAL MINUTE;
v_msg_e VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_e.p_interval_select_into_e(2 , v_interval_e , v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_f AS 
PROCEDURE p_interval_select_into_f(p_id_f IN INT , p_interval_f OUT INTERVAL SECOND , p_log_f IN OUT VARCHAR);
END pkg_interval_select_into_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_f AS
PROCEDURE p_interval_select_into_f(p_id_f IN INT ,  p_interval_f OUT INTERVAL SECOND , p_log_f IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_f FROM t_table_003f WHERE id =p_id_f;
p_log_f := p_log_f || ' , SELECT INTO 成功';
SEND_MSG(p_log_f);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_f));
END p_interval_select_into_f;
END pkg_interval_select_into_f;
/

//测试 INTERVAL SECOND SELECT INTO
DECLARE
v_interval_f INTERVAL SECOND;
v_msg_f VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_f.p_interval_select_into_f(2 , v_interval_f , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_g AS 
PROCEDURE p_interval_select_into_g(p_id_g IN INT , p_interval_g OUT INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR);
END pkg_interval_select_into_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_g AS
PROCEDURE p_interval_select_into_g(p_id_g IN INT ,  p_interval_g OUT INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_g FROM t_table_003g WHERE id =p_id_g;
p_log_g := p_log_g || ' , SELECT INTO 成功';
SEND_MSG(p_log_g);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_g));
END p_interval_select_into_g;
END pkg_interval_select_into_g;
/

//测试 INTERVAL YEAR TO MONTH SELECT INTO
DECLARE
v_interval_g INTERVAL YEAR TO MONTH;
v_msg_g VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_g.p_interval_select_into_g(2 , v_interval_g , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_h AS 
PROCEDURE p_interval_select_into_h(p_id_h IN INT , p_interval_h OUT INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR);
END pkg_interval_select_into_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_h AS
PROCEDURE p_interval_select_into_h(p_id_h IN INT ,  p_interval_h OUT INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_h FROM t_table_003h WHERE id =p_id_h;
p_log_h := p_log_h || ' , SELECT INTO 成功';
SEND_MSG(p_log_h);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_h));
END p_interval_select_into_h;
END pkg_interval_select_into_h;
/

//测试 INTERVAL DAY TO HOUR SELECT INTO
DECLARE
v_interval_h INTERVAL DAY TO HOUR;
v_msg_h VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_h.p_interval_select_into_h(2 , v_interval_h , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_i AS 
PROCEDURE p_interval_select_into_i(p_id_i IN INT , p_interval_i OUT INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR);
END pkg_interval_select_into_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_i AS
PROCEDURE p_interval_select_into_i(p_id_i IN INT ,  p_interval_i OUT INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_i FROM t_table_003i WHERE id =p_id_i;
p_log_i := p_log_i || ' , SELECT INTO 成功';
SEND_MSG(p_log_i);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_i));
END p_interval_select_into_i;
END pkg_interval_select_into_i;
/

//测试 INTERVAL DAY TO MINUTE SELECT INTO
DECLARE
v_interval_i INTERVAL DAY TO MINUTE;
v_msg_i VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_i.p_interval_select_into_i(2 , v_interval_i , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_j AS 
PROCEDURE p_interval_select_into_j(p_id_j IN INT , p_interval_j OUT INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR);
END pkg_interval_select_into_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_j AS
PROCEDURE p_interval_select_into_j(p_id_j IN INT ,  p_interval_j OUT INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_j FROM t_table_003j WHERE id =p_id_j;
p_log_j := p_log_j || ' , SELECT INTO 成功';
SEND_MSG(p_log_j);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_j));
END p_interval_select_into_j;
END pkg_interval_select_into_j;
/

//测试 INTERVAL DAY TO SECOND SELECT INTO
DECLARE
v_interval_j INTERVAL DAY TO SECOND;
v_msg_j VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_j.p_interval_select_into_j(2 , v_interval_j , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_k AS 
PROCEDURE p_interval_select_into_k(p_id_k IN INT , p_interval_k OUT INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR);
END pkg_interval_select_into_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_k AS
PROCEDURE p_interval_select_into_k(p_id_k IN INT ,  p_interval_k OUT INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_k FROM t_table_003k WHERE id =p_id_k;
p_log_k := p_log_k || ' , SELECT INTO 成功';
SEND_MSG(p_log_k);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_k));
END p_interval_select_into_k;
END pkg_interval_select_into_k;
/

//测试 INTERVAL HOUR TO MINUTE SELECT INTO
DECLARE
v_interval_k INTERVAL HOUR TO MINUTE;
v_msg_k VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_k.p_interval_select_into_k(2 , v_interval_k , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_l AS 
PROCEDURE p_interval_select_into_l(p_id_l IN INT , p_interval_l OUT INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR);
END pkg_interval_select_into_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_l AS
PROCEDURE p_interval_select_into_l(p_id_l IN INT ,  p_interval_l OUT INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_l FROM t_table_003l WHERE id =p_id_l;
p_log_l := p_log_l || ' , SELECT INTO 成功';
SEND_MSG(p_log_l);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_l));
END p_interval_select_into_l;
END pkg_interval_select_into_l;
/

//测试 INTERVAL HOUR TO SECOND SELECT INTO
DECLARE
v_interval_l INTERVAL HOUR TO SECOND;
v_msg_l VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_l.p_interval_select_into_l(2 , v_interval_l , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_select_into_m AS 
PROCEDURE p_interval_select_into_m(p_id_m IN INT , p_interval_m OUT INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR);
END pkg_interval_select_into_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_select_into_m AS
PROCEDURE p_interval_select_into_m(p_id_m IN INT ,  p_interval_m OUT INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR) AS
BEGIN
SELECT c1 INTO p_interval_m FROM t_table_003m WHERE id =p_id_m;
p_log_m := p_log_m || ' , SELECT INTO 成功';
SEND_MSG(p_log_m);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_m));
END p_interval_select_into_m;
END pkg_interval_select_into_m;
/

//测试 INTERVAL MINUTE TO SECOND SELECT INTO
DECLARE
v_interval_m INTERVAL MINUTE TO SECOND;
v_msg_m VARCHAR(100) := 'INTERVAL_SELECT_INTO';
BEGIN
pkg_interval_select_into_m.p_interval_select_into_m(2 , v_interval_m , v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_select_into_a;
DROP PACKAGE pkg_interval_select_into_b;
DROP PACKAGE pkg_interval_select_into_c;
DROP PACKAGE pkg_interval_select_into_d;
DROP PACKAGE pkg_interval_select_into_e;
DROP PACKAGE pkg_interval_select_into_f;
DROP PACKAGE pkg_interval_select_into_g;
DROP PACKAGE pkg_interval_select_into_h;
DROP PACKAGE pkg_interval_select_into_i;
DROP PACKAGE pkg_interval_select_into_j;
DROP PACKAGE pkg_interval_select_into_k;
DROP PACKAGE pkg_interval_select_into_l;
DROP PACKAGE pkg_interval_select_into_m;

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

!4 XG-TYPE-INTERVAL-PKG-004 INTERVAL BULK COLLECT INTO
//创建表
CREATE TABLE t_table_004a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_004b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_004c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_004d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_004e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_004f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_004g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_004h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_004i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_004j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_004k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_004l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_004m (id INT , c1 INTERVAL MINUTE TO SECOND);

//插入数据
INSERT INTO t_table_004a VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004b VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004c VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004d VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004e VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004f VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004g VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004h VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004i VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004j VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004k VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004l VALUES(1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_004m VALUES(1 , '7') , (2 , '8') , (3 , '9');


//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_a AS 
PROCEDURE p_bulk_collect_a(p_log_a IN OUT VARCHAR);
END pkg_interval_bulk_collect_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_a AS
PROCEDURE p_bulk_collect_a(p_log_a IN OUT VARCHAR) AS
TYPE t_interval_list_a IS TABLE OF INTERVAL YEAR;
v_intervals_a t_interval_list_a;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_a FROM t_table_004a ORDER BY id;
p_log_a := p_log_a || ' BULK COLLECT 成功';
SEND_MSG(p_log_a);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_a.COUNT);
FOR i IN 1 .. v_intervals_a.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_a(i));
END LOOP;
END p_bulk_collect_a;
END pkg_interval_bulk_collect_a;
/

//测试 INTERVAL YEAR BULK COLLECT INTO
DECLARE
v_msg_a VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_a.p_bulk_collect_a(v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_b AS 
PROCEDURE p_bulk_collect_b(p_log_b IN OUT VARCHAR);
END pkg_interval_bulk_collect_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_b AS
PROCEDURE p_bulk_collect_b(p_log_b IN OUT VARCHAR) AS
TYPE t_interval_list_b IS TABLE OF INTERVAL MONTH;
v_intervals_b t_interval_list_b;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_b FROM t_table_004b ORDER BY id;
p_log_b := p_log_b || ' BULK COLLECT 成功';
SEND_MSG(p_log_b);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_b.COUNT);
FOR i IN 1 .. v_intervals_b.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_b(i));
END LOOP;
END p_bulk_collect_b;
END pkg_interval_bulk_collect_b;
/

//测试 INTERVAL MONTH BULK COLLECT INTO
DECLARE
v_msg_b VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_b.p_bulk_collect_b(v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_c AS 
PROCEDURE p_bulk_collect_c(p_log_c IN OUT VARCHAR);
END pkg_interval_bulk_collect_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_c AS
PROCEDURE p_bulk_collect_c(p_log_c IN OUT VARCHAR) AS
TYPE t_interval_list_c IS TABLE OF INTERVAL DAY;
v_intervals_c t_interval_list_c;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_c FROM t_table_004c ORDER BY id;
p_log_c := p_log_c || ' BULK COLLECT 成功';
SEND_MSG(p_log_c);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_c.COUNT);
FOR i IN 1 .. v_intervals_c.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_c(i));
END LOOP;
END p_bulk_collect_c;
END pkg_interval_bulk_collect_c;
/

//测试 INTERVAL DAY BULK COLLECT INTO
DECLARE
v_msg_c VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_c.p_bulk_collect_c(v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_d AS 
PROCEDURE p_bulk_collect_d(p_log_d IN OUT VARCHAR);
END pkg_interval_bulk_collect_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_d AS
PROCEDURE p_bulk_collect_d(p_log_d IN OUT VARCHAR) AS
TYPE t_interval_list_d IS TABLE OF INTERVAL HOUR;
v_intervals_d t_interval_list_d;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_d FROM t_table_004d ORDER BY id;
p_log_d := p_log_d || ' BULK COLLECT 成功';
SEND_MSG(p_log_d);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_d.COUNT);
FOR i IN 1 .. v_intervals_d.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_d(i));
END LOOP;
END p_bulk_collect_d;
END pkg_interval_bulk_collect_d;
/

//测试 INTERVAL HOUR BULK COLLECT INTO
DECLARE
v_msg_d VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_d.p_bulk_collect_d(v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_e AS 
PROCEDURE p_bulk_collect_e(p_log_e IN OUT VARCHAR);
END pkg_interval_bulk_collect_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_e AS
PROCEDURE p_bulk_collect_e(p_log_e IN OUT VARCHAR) AS
TYPE t_interval_list_e IS TABLE OF INTERVAL MINUTE;
v_intervals_e t_interval_list_e;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_e FROM t_table_004e ORDER BY id;
p_log_e := p_log_e || ' BULK COLLECT 成功';
SEND_MSG(p_log_e);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_e.COUNT);
FOR i IN 1 .. v_intervals_e.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_e(i));
END LOOP;
END p_bulk_collect_e;
END pkg_interval_bulk_collect_e;
/

//测试 INTERVAL MINUTE BULK COLLECT INTO
DECLARE
v_msg_e VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_e.p_bulk_collect_e(v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_f AS 
PROCEDURE p_bulk_collect_f(p_log_f IN OUT VARCHAR);
END pkg_interval_bulk_collect_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_f AS
PROCEDURE p_bulk_collect_f(p_log_f IN OUT VARCHAR) AS
TYPE t_interval_list_f IS TABLE OF INTERVAL SECOND;
v_intervals_f t_interval_list_f;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_f FROM t_table_004f ORDER BY id;
p_log_f := p_log_f || ' BULK COLLECT 成功';
SEND_MSG(p_log_f);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_f.COUNT);
FOR i IN 1 .. v_intervals_f.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_f(i));
END LOOP;
END p_bulk_collect_f;
END pkg_interval_bulk_collect_f;
/

//测试 INTERVAL SECOND BULK COLLECT INTO
DECLARE
v_msg_f VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_f.p_bulk_collect_f(v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_g AS 
PROCEDURE p_bulk_collect_g(p_log_g IN OUT VARCHAR);
END pkg_interval_bulk_collect_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_g AS
PROCEDURE p_bulk_collect_g(p_log_g IN OUT VARCHAR) AS
TYPE t_interval_list_g IS TABLE OF INTERVAL YEAR TO MONTH;
v_intervals_g t_interval_list_g;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_g FROM t_table_004g ORDER BY id;
p_log_g := p_log_g || ' BULK COLLECT 成功';
SEND_MSG(p_log_g);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_g.COUNT);
FOR i IN 1 .. v_intervals_g.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_g(i));
END LOOP;
END p_bulk_collect_g;
END pkg_interval_bulk_collect_g;
/

//测试 INTERVAL YEAR TO MONTH BULK COLLECT INTO
DECLARE
v_msg_g VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_g.p_bulk_collect_g(v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_h AS 
PROCEDURE p_bulk_collect_h(p_log_h IN OUT VARCHAR);
END pkg_interval_bulk_collect_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_h AS
PROCEDURE p_bulk_collect_h(p_log_h IN OUT VARCHAR) AS
TYPE t_interval_list_h IS TABLE OF INTERVAL DAY TO HOUR;
v_intervals_h t_interval_list_h;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_h FROM t_table_004h ORDER BY id;
p_log_h := p_log_h || ' BULK COLLECT 成功';
SEND_MSG(p_log_h);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_h.COUNT);
FOR i IN 1 .. v_intervals_h.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_h(i));
END LOOP;
END p_bulk_collect_h;
END pkg_interval_bulk_collect_h;
/

//测试 INTERVAL DAY TO HOUR BULK COLLECT INTO
DECLARE
v_msg_h VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_h.p_bulk_collect_h(v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_i AS 
PROCEDURE p_bulk_collect_i(p_log_i IN OUT VARCHAR);
END pkg_interval_bulk_collect_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_i AS
PROCEDURE p_bulk_collect_i(p_log_i IN OUT VARCHAR) AS
TYPE t_interval_list_i IS TABLE OF INTERVAL DAY TO MINUTE;
v_intervals_i t_interval_list_i;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_i FROM t_table_004i ORDER BY id;
p_log_i := p_log_i || ' BULK COLLECT 成功';
SEND_MSG(p_log_i);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_i.COUNT);
FOR i IN 1 .. v_intervals_i.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_i(i));
END LOOP;
END p_bulk_collect_i;
END pkg_interval_bulk_collect_i;
/

//测试 INTERVAL DAY TO MINUTE BULK COLLECT INTO
DECLARE
v_msg_i VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_i.p_bulk_collect_i(v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_j AS 
PROCEDURE p_bulk_collect_j(p_log_j IN OUT VARCHAR);
END pkg_interval_bulk_collect_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_j AS
PROCEDURE p_bulk_collect_j(p_log_j IN OUT VARCHAR) AS
TYPE t_interval_list_j IS TABLE OF INTERVAL DAY TO SECOND;
v_intervals_j t_interval_list_j;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_j FROM t_table_004j ORDER BY id;
p_log_j := p_log_j || ' BULK COLLECT 成功';
SEND_MSG(p_log_j);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_j.COUNT);
FOR i IN 1 .. v_intervals_j.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_j(i));
END LOOP;
END p_bulk_collect_j;
END pkg_interval_bulk_collect_j;
/

//测试 INTERVAL DAY TO SECOND BULK COLLECT INTO
DECLARE
v_msg_j VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_j.p_bulk_collect_j(v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_k AS 
PROCEDURE p_bulk_collect_k(p_log_k IN OUT VARCHAR);
END pkg_interval_bulk_collect_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_k AS
PROCEDURE p_bulk_collect_k(p_log_k IN OUT VARCHAR) AS
TYPE t_interval_list_k IS TABLE OF INTERVAL HOUR TO MINUTE;
v_intervals_k t_interval_list_k;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_k FROM t_table_004k ORDER BY id;
p_log_k := p_log_k || ' BULK COLLECT 成功';
SEND_MSG(p_log_k);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_k.COUNT);
FOR i IN 1 .. v_intervals_k.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_k(i));
END LOOP;
END p_bulk_collect_k;
END pkg_interval_bulk_collect_k;
/

//测试 INTERVAL HOUR TO MINUTE BULK COLLECT INTO
DECLARE
v_msg_k VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_k.p_bulk_collect_k(v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_l AS 
PROCEDURE p_bulk_collect_l(p_log_l IN OUT VARCHAR);
END pkg_interval_bulk_collect_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_l AS
PROCEDURE p_bulk_collect_l(p_log_l IN OUT VARCHAR) AS
TYPE t_interval_list_l IS TABLE OF INTERVAL HOUR TO SECOND;
v_intervals_l t_interval_list_l;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_l FROM t_table_004l ORDER BY id;
p_log_l := p_log_l || ' BULK COLLECT 成功';
SEND_MSG(p_log_l);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_l.COUNT);
FOR i IN 1 .. v_intervals_l.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_l(i));
END LOOP;
END p_bulk_collect_l;
END pkg_interval_bulk_collect_l;
/

//测试 INTERVAL HOUR TO SECOND BULK COLLECT INTO
DECLARE
v_msg_l VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_l.p_bulk_collect_l(v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_bulk_collect_m AS 
PROCEDURE p_bulk_collect_m(p_log_m IN OUT VARCHAR);
END pkg_interval_bulk_collect_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_bulk_collect_m AS
PROCEDURE p_bulk_collect_m(p_log_m IN OUT VARCHAR) AS
TYPE t_interval_list_m IS TABLE OF INTERVAL MINUTE TO SECOND;
v_intervals_m t_interval_list_m;
BEGIN
SELECT c1 BULK COLLECT INTO v_intervals_m FROM t_table_004m ORDER BY id;
p_log_m := p_log_m || ' BULK COLLECT 成功';
SEND_MSG(p_log_m);
SEND_MSG('INTERVAL 记录数 : ' || v_intervals_m.COUNT);
FOR i IN 1 .. v_intervals_m.COUNT LOOP
SEND_MSG('INTERVAL [' || i || '] : ' || v_intervals_m(i));
END LOOP;
END p_bulk_collect_m;
END pkg_interval_bulk_collect_m;
/

//测试 INTERVAL MINUTE TO SECOND BULK COLLECT INTO
DECLARE
v_msg_m VARCHAR(100) := 'BULK_COLLECT - ';
BEGIN
pkg_interval_bulk_collect_m.p_bulk_collect_m(v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_bulk_collect_a;
DROP PACKAGE pkg_interval_bulk_collect_b;
DROP PACKAGE pkg_interval_bulk_collect_c;
DROP PACKAGE pkg_interval_bulk_collect_d;
DROP PACKAGE pkg_interval_bulk_collect_e;
DROP PACKAGE pkg_interval_bulk_collect_f;
DROP PACKAGE pkg_interval_bulk_collect_g;
DROP PACKAGE pkg_interval_bulk_collect_h;
DROP PACKAGE pkg_interval_bulk_collect_i;
DROP PACKAGE pkg_interval_bulk_collect_j;
DROP PACKAGE pkg_interval_bulk_collect_k;
DROP PACKAGE pkg_interval_bulk_collect_l;
DROP PACKAGE pkg_interval_bulk_collect_m;

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