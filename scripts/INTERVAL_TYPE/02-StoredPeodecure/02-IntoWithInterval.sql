!4 XG-TYPE-INTERVAL-PROC-003 INTERVAL SELECT INTO
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
INSERT INTO t_table_003a VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003b VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003c VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003d VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003e VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003f VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003g VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003h VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003i VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003j VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003k VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003l VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_003m VALUES (1 , '9') , (2 , '8') , (3 , '7');

//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_a (
p_id_a IN INT , 
p_interval_a OUT INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_a FROM t_table_003a WHERE id = p_id_a;
p_log_msg_a := p_log_msg_a || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_a);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_a));
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_interval_a INTERVAL YEAR;
v_msg_a VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_a(2 , v_interval_a , v_msg_a);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_b (
p_id_b IN INT , 
p_interval_b OUT INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_b FROM t_table_003b WHERE id = p_id_b;
p_log_msg_b := p_log_msg_b || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_b);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_b));
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_interval_b INTERVAL MONTH;
v_msg_b VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_b(2 , v_interval_b , v_msg_b);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_c (
p_id_c IN INT , 
p_interval_c OUT INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_c FROM t_table_003c WHERE id = p_id_c;
p_log_msg_c := p_log_msg_c || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_c);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_c));
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_interval_c INTERVAL DAY;
v_msg_c VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_c(2 , v_interval_c , v_msg_c);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_d (
p_id_d IN INT , 
p_interval_d OUT INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_d FROM t_table_003d WHERE id = p_id_d;
p_log_msg_d := p_log_msg_d || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_d);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_d));
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_interval_d INTERVAL HOUR;
v_msg_d VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_d(2 , v_interval_d , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_e (
p_id_e IN INT , 
p_interval_e OUT INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_e FROM t_table_003e WHERE id = p_id_e;
p_log_msg_e := p_log_msg_e || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_e);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_e));
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_interval_e INTERVAL MINUTE;
v_msg_e VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_e(2 , v_interval_e , v_msg_e);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_f (
p_id_f IN INT , 
p_interval_f OUT INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_f FROM t_table_003f WHERE id = p_id_f;
p_log_msg_f := p_log_msg_f || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_f);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_f));
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_interval_f INTERVAL SECOND;
v_msg_f VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_f(2 , v_interval_f , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_g (
p_id_g IN INT , 
p_interval_g OUT INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_g FROM t_table_003g WHERE id = p_id_g;
p_log_msg_g := p_log_msg_g || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_g);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_g));
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_interval_g INTERVAL YEAR TO MONTH;
v_msg_g VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_g(2 , v_interval_g , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_h (
p_id_h IN INT , 
p_interval_h OUT INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_h FROM t_table_003h WHERE id = p_id_h;
p_log_msg_h := p_log_msg_h || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_h);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_h));
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_interval_h INTERVAL DAY TO HOUR;
v_msg_h VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_h(2 , v_interval_h , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_i (
p_id_i IN INT , 
p_interval_i OUT INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_i FROM t_table_003i WHERE id = p_id_i;
p_log_msg_i := p_log_msg_i || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_i);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_i));
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_interval_i INTERVAL DAY TO MINUTE;
v_msg_i VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_i(2 , v_interval_i , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_j (
p_id_j IN INT , 
p_interval_j OUT INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_j FROM t_table_003j WHERE id = p_id_j;
p_log_msg_j := p_log_msg_j || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_j);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_j));
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_interval_j INTERVAL DAY TO SECOND;
v_msg_j VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_j(2 , v_interval_j , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_k (
p_id_k IN INT , 
p_interval_k OUT INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_k FROM t_table_003k WHERE id = p_id_k;
p_log_msg_k := p_log_msg_k || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_k);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_k));
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_interval_k INTERVAL HOUR TO MINUTE;
v_msg_k VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_k(2 , v_interval_k , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_l (
p_id_l IN INT , 
p_interval_l OUT INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_l FROM t_table_003l WHERE id = p_id_l;
p_log_msg_l := p_log_msg_l || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_l);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_l));
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_interval_l INTERVAL HOUR TO SECOND;
v_msg_l VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_l(2 , v_interval_l , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_select_into_m (
p_id_m IN INT , 
p_interval_m OUT INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_m FROM t_table_003m WHERE id = p_id_m;
p_log_msg_m := p_log_msg_m || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_m);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_m));
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_interval_m INTERVAL MINUTE TO SECOND;
v_msg_m VARCHAR(100) := 'INTERVAL_SELECT_INTO_TEST';
BEGIN
p_interval_select_into_m(2 , v_interval_m , v_msg_m);
END;
/

//创建 INTERVAL 带隐式转换 存储过程
{{{此处设计将 INTERVAL YEAR 的数据传入 INTERVAL MONTH 变量 , 将 INTERVAL DAY 的数据传入 INTERVAL SECOND 变量 , 以测试 SELECT INTO 时的隐式类型转换}}}
CREATE OR REPLACE PROCEDURE p_interval_select_into_cast (
p_id_m IN INT , 
p_interval_M OUT INTERVAL MONTH , 
p_interval_S OUT INTERVAL SECOND ,
p_log_msg_Y2M IN OUT VARCHAR ,
p_log_msg_D2S IN OUT VARCHAR
) AS
BEGIN
SELECT c1 INTO p_interval_M FROM t_table_003a WHERE id = p_id_m;
SELECT c1 INTO p_interval_S FROM t_table_003c WHERE id = p_id_m;
p_log_msg_Y2M := p_log_msg_Y2M || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_Y2M);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_M));
p_log_msg_D2S := p_log_msg_D2S || 'SELECT INTO 测试完成';
SEND_MSG(p_log_msg_D2S);
SEND_MSG('查询结果 : ' || TO_CHAR(p_interval_S));
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_interval_M INTERVAL MONTH ;
v_interval_S INTERVAL SECOND ;
v_msg_Y2M VARCHAR(100) := 'INTERVAL_SELECT_INTO_CAST_Y2M : ';
v_msg_D2S VARCHAR(100) := 'INTERVAL_SELECT_INTO_CAST_D2S : ';
BEGIN
p_interval_select_into_cast(2 , v_interval_M , v_interval_S , v_msg_Y2M , v_msg_D2S);
END;
/

//删除存储过程
DROP PROCEDURE p_interval_select_into_a;
DROP PROCEDURE p_interval_select_into_b;
DROP PROCEDURE p_interval_select_into_c;
DROP PROCEDURE p_interval_select_into_d;
DROP PROCEDURE p_interval_select_into_e;
DROP PROCEDURE p_interval_select_into_f;
DROP PROCEDURE p_interval_select_into_g;
DROP PROCEDURE p_interval_select_into_h;
DROP PROCEDURE p_interval_select_into_i;
DROP PROCEDURE p_interval_select_into_j;
DROP PROCEDURE p_interval_select_into_k;
DROP PROCEDURE p_interval_select_into_l;
DROP PROCEDURE p_interval_select_into_m;
DROP PROCEDURE p_interval_select_into_cast;

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

!4 XG-TYPE-INTERVAL-PROC-004 INTERVAL BULK COLLECT INTO
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
INSERT INTO t_table_004a VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004b VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004c VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004d VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004e VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004f VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004g VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004h VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004i VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004j VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004k VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004l VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_004m VALUES (1 , '9') , (2 , '8') , (3 , '7');

//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_a(
p_log_msg_a IN OUT VARCHAR
) AS
TYPE t_interval_a IS TABLE OF INTERVAL YEAR;
v_tab_a t_interval_a;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_a FROM t_table_004a ORDER BY id;
p_log_msg_a := p_log_msg_a || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_a.COUNT;
SEND_MSG(p_log_msg_a);
FOR i IN 1 .. v_tab_a.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_a(i)));
END LOOP;
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_msg_a VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_a(v_msg_a);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_b(
p_log_msg_b IN OUT VARCHAR
) AS
TYPE t_interval_b IS TABLE OF INTERVAL MONTH;
v_tab_b t_interval_b;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_b FROM t_table_004b ORDER BY id;
p_log_msg_b := p_log_msg_b || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_b.COUNT;
SEND_MSG(p_log_msg_b);
FOR i IN 1 .. v_tab_b.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_b(i)));
END LOOP;
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_msg_b VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_b(v_msg_b);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_c(
p_log_msg_c IN OUT VARCHAR
) AS
TYPE t_interval_c IS TABLE OF INTERVAL DAY;
v_tab_c t_interval_c;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_c FROM t_table_004c ORDER BY id;
p_log_msg_c := p_log_msg_c || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_c.COUNT;
SEND_MSG(p_log_msg_c);
FOR i IN 1 .. v_tab_c.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_c(i)));
END LOOP;
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_msg_c VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_c(v_msg_c);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_d(
p_log_msg_d IN OUT VARCHAR
) AS
TYPE t_interval_d IS TABLE OF INTERVAL HOUR;
v_tab_d t_interval_d;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_d FROM t_table_004d ORDER BY id;
p_log_msg_d := p_log_msg_d || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_d.COUNT;
SEND_MSG(p_log_msg_d);
FOR i IN 1 .. v_tab_d.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_d(i)));
END LOOP;
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_msg_d VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_d(v_msg_d);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_e(
p_log_msg_e IN OUT VARCHAR
) AS
TYPE t_interval_e IS TABLE OF INTERVAL MINUTE;
v_tab_e t_interval_e;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_e FROM t_table_004e ORDER BY id;
p_log_msg_e := p_log_msg_e || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_e.COUNT;
SEND_MSG(p_log_msg_e);
FOR i IN 1 .. v_tab_e.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_e(i)));
END LOOP;
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_msg_e VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_e(v_msg_e);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_f(
p_log_msg_f IN OUT VARCHAR
) AS
TYPE t_interval_f IS TABLE OF INTERVAL SECOND;
v_tab_f t_interval_f;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_f FROM t_table_004f ORDER BY id;
p_log_msg_f := p_log_msg_f || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_f.COUNT;
SEND_MSG(p_log_msg_f);
FOR i IN 1 .. v_tab_f.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_f(i)));
END LOOP;
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_msg_f VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_f(v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_g(
p_log_msg_g IN OUT VARCHAR
) AS
TYPE t_interval_g IS TABLE OF INTERVAL YEAR TO MONTH;
v_tab_g t_interval_g;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_g FROM t_table_004g ORDER BY id;
p_log_msg_g := p_log_msg_g || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_g.COUNT;
SEND_MSG(p_log_msg_g);
FOR i IN 1 .. v_tab_g.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_g(i)));
END LOOP;
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_msg_g VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_g(v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_h(
p_log_msg_h IN OUT VARCHAR
) AS
TYPE t_interval_h IS TABLE OF INTERVAL DAY TO HOUR;
v_tab_h t_interval_h;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_h FROM t_table_004h ORDER BY id;
p_log_msg_h := p_log_msg_h || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_h.COUNT;
SEND_MSG(p_log_msg_h);
FOR i IN 1 .. v_tab_h.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_h(i)));
END LOOP;
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_msg_h VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_h(v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_i(
p_log_msg_i IN OUT VARCHAR
) AS
TYPE t_interval_i IS TABLE OF INTERVAL DAY TO MINUTE;
v_tab_i t_interval_i;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_i FROM t_table_004i ORDER BY id;
p_log_msg_i := p_log_msg_i || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_i.COUNT;
SEND_MSG(p_log_msg_i);
FOR i IN 1 .. v_tab_i.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_i(i)));
END LOOP;
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_msg_i VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_i(v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_j(
p_log_msg_j IN OUT VARCHAR
) AS
TYPE t_interval_j IS TABLE OF INTERVAL DAY TO SECOND;
v_tab_j t_interval_j;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_j FROM t_table_004j ORDER BY id;
p_log_msg_j := p_log_msg_j || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_j.COUNT;
SEND_MSG(p_log_msg_j);
FOR i IN 1 .. v_tab_j.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_j(i)));
END LOOP;
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_msg_j VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_j(v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_k(
p_log_msg_k IN OUT VARCHAR
) AS
TYPE t_interval_k IS TABLE OF INTERVAL HOUR TO MINUTE;
v_tab_k t_interval_k;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_k FROM t_table_004k ORDER BY id;
p_log_msg_k := p_log_msg_k || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_k.COUNT;
SEND_MSG(p_log_msg_k);
FOR i IN 1 .. v_tab_k.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_k(i)));
END LOOP;
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_msg_k VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_k(v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_l(
p_log_msg_l IN OUT VARCHAR
) AS
TYPE t_interval_l IS TABLE OF INTERVAL HOUR TO SECOND;
v_tab_l t_interval_l;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_l FROM t_table_004l ORDER BY id;
p_log_msg_l := p_log_msg_l || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_l.COUNT;
SEND_MSG(p_log_msg_l);
FOR i IN 1 .. v_tab_l.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_l(i)));
END LOOP;
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_msg_l VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_l(v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_bulk_collect_m(
p_log_msg_m IN OUT VARCHAR
) AS
TYPE t_interval_m IS TABLE OF INTERVAL MINUTE TO SECOND;
v_tab_m t_interval_m;
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_m FROM t_table_004m ORDER BY id;
p_log_msg_m := p_log_msg_m || 'BULK COLLECT 成功 , 记录数 = ' || v_tab_m.COUNT;
SEND_MSG(p_log_msg_m);
FOR i IN 1 .. v_tab_m.COUNT LOOP
SEND_MSG('第'|| i || '条 : ' || TO_CHAR(v_tab_m(i)));
END LOOP;
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_msg_m VARCHAR(100) := 'INTERVAL_BULK_TEST';
BEGIN
p_interval_bulk_collect_m(v_msg_m);
END;
/

//删除存储过程
DROP PROCEDURE p_interval_bulk_collect_a;
DROP PROCEDURE p_interval_bulk_collect_b;
DROP PROCEDURE p_interval_bulk_collect_c;
DROP PROCEDURE p_interval_bulk_collect_d;
DROP PROCEDURE p_interval_bulk_collect_e;
DROP PROCEDURE p_interval_bulk_collect_f;
DROP PROCEDURE p_interval_bulk_collect_g;
DROP PROCEDURE p_interval_bulk_collect_h;
DROP PROCEDURE p_interval_bulk_collect_i;
DROP PROCEDURE p_interval_bulk_collect_j;
DROP PROCEDURE p_interval_bulk_collect_k;
DROP PROCEDURE p_interval_bulk_collect_l;
DROP PROCEDURE p_interval_bulk_collect_m;

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