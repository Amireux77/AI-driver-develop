!4 XG-TYPE-INTERVAL-FUNC-004 INTERVAL SELECT INTO
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

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_a(
f_id_a IN INT
) RETURN INTERVAL YEAR
AS
v_interval_a INTERVAL YEAR;
BEGIN
SELECT c1 INTO v_interval_a FROM t_table_004a WHERE id = f_id_a;
RETURN v_interval_a;
END;
/

//执行函数
<预期结果 : 8-0>
SELECT func_interval_select_into_a(2) AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_b(
f_id_b IN INT
) RETURN INTERVAL MONTH
AS
v_interval_b INTERVAL MONTH;
BEGIN
SELECT c1 INTO v_interval_b FROM t_table_004b WHERE id = f_id_b;
RETURN v_interval_b;
END;
/

//执行函数
<预期结果 : 0-8>
SELECT func_interval_select_into_b(2) AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_c(
f_id_c IN INT
) RETURN INTERVAL DAY
AS
v_interval_c INTERVAL DAY;
BEGIN
SELECT c1 INTO v_interval_c FROM t_table_004c WHERE id = f_id_c;
RETURN v_interval_c;
END;
/

//执行函数
<预期结果 : 8 0:00:00>
SELECT func_interval_select_into_c(2) AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_d(
f_id_d IN INT
) RETURN INTERVAL HOUR
AS
v_interval_d INTERVAL HOUR;
BEGIN
SELECT c1 INTO v_interval_d FROM t_table_004d WHERE id = f_id_d;
RETURN v_interval_d;
END;
/

//执行函数
<预期结果 : 8:00:00>
SELECT func_interval_select_into_d(2) AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_e(
f_id_e IN INT
) RETURN INTERVAL MINUTE
AS
v_interval_e INTERVAL MINUTE;
BEGIN
SELECT c1 INTO v_interval_e FROM t_table_004e WHERE id = f_id_e;
RETURN v_interval_e;
END;
/

//执行函数
<预期结果 : 0:08:00>
SELECT func_interval_select_into_e(2) AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_f(
f_id_f IN INT
) RETURN INTERVAL SECOND
AS
v_interval_f INTERVAL SECOND;
BEGIN
SELECT c1 INTO v_interval_f FROM t_table_004f WHERE id = f_id_f;
RETURN v_interval_f;
END;
/

//执行函数
<预期结果 : 0:00:08>
SELECT func_interval_select_into_f(2) AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_g(
f_id_g IN INT
) RETURN INTERVAL YEAR TO MONTH
AS
v_interval_g INTERVAL YEAR TO MONTH;
BEGIN
SELECT c1 INTO v_interval_g FROM t_table_004g WHERE id = f_id_g;
RETURN v_interval_g;
END;
/

//执行函数
<预期结果 : 0-8>
SELECT func_interval_select_into_g(2) AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_h(
f_id_h IN INT
) RETURN INTERVAL DAY TO HOUR
AS
v_interval_h INTERVAL DAY TO HOUR;
BEGIN
SELECT c1 INTO v_interval_h FROM t_table_004h WHERE id = f_id_h;
RETURN v_interval_h;
END;
/

//执行函数
<预期结果 : 8:00:00>
SELECT func_interval_select_into_h(2) AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_i(
f_id_i IN INT
) RETURN INTERVAL DAY TO MINUTE
AS
v_interval_i INTERVAL DAY TO MINUTE;
BEGIN
SELECT c1 INTO v_interval_i FROM t_table_004i WHERE id = f_id_i;
RETURN v_interval_i;
END;
/

//执行函数
<预期结果 : 0:08:00>
SELECT func_interval_select_into_i(2) AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_j(
f_id_j IN INT
) RETURN INTERVAL DAY TO SECOND
AS
v_interval_j INTERVAL DAY TO SECOND;
BEGIN
SELECT c1 INTO v_interval_j FROM t_table_004j WHERE id = f_id_j;
RETURN v_interval_j;
END;
/

//执行函数
<预期结果 : 0:00:08>
SELECT func_interval_select_into_j(2) AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_k(
f_id_k IN INT
) RETURN INTERVAL HOUR TO MINUTE
AS
v_interval_k INTERVAL HOUR TO MINUTE;
BEGIN
SELECT c1 INTO v_interval_k FROM t_table_004k WHERE id = f_id_k;
RETURN v_interval_k;
END;
/

//执行函数
<预期结果 : 0:08:00>
SELECT func_interval_select_into_k(2) AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_l(
f_id_l IN INT
) RETURN INTERVAL HOUR TO SECOND
AS
v_interval_l INTERVAL HOUR TO SECOND;
BEGIN
SELECT c1 INTO v_interval_l FROM t_table_004l WHERE id = f_id_l;
RETURN v_interval_l;
END;
/

//执行函数
<预期结果 : 0:00:08>
SELECT func_interval_select_into_l(2) AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_select_into_m(
f_id_m IN INT
) RETURN INTERVAL MINUTE TO SECOND
AS
v_interval_m INTERVAL MINUTE TO SECOND;
BEGIN
SELECT c1 INTO v_interval_m FROM t_table_004m WHERE id = f_id_m;
RETURN v_interval_m;
END;
/

//执行函数
<预期结果 : 0:00:08>
SELECT func_interval_select_into_m(2) AS res FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_select_into_a;
DROP FUNCTION func_interval_select_into_b;
DROP FUNCTION func_interval_select_into_c;
DROP FUNCTION func_interval_select_into_d;
DROP FUNCTION func_interval_select_into_e;
DROP FUNCTION func_interval_select_into_f;
DROP FUNCTION func_interval_select_into_g;
DROP FUNCTION func_interval_select_into_h;
DROP FUNCTION func_interval_select_into_i;
DROP FUNCTION func_interval_select_into_j;
DROP FUNCTION func_interval_select_into_k;
DROP FUNCTION func_interval_select_into_l;
DROP FUNCTION func_interval_select_into_m;

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

!4 XG-TYPE-INTERVAL-FUNC-005 INTERVAL BULK COLLECT INTO
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

//插入数据
INSERT INTO t_table_005a VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005b VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005c VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005d VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005e VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005f VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005g VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005h VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005i VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005j VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005k VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005l VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO t_table_005m VALUES (1 , '9') , (2 , '8') , (3 , '7');

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_a(
) RETURN VARCHAR
AS
TYPE t_interval_a IS TABLE OF INTERVAL YEAR;
v_tab_a t_interval_a;
v_result_a VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_a FROM t_table_005a ORDER BY id;
v_result_a := 'INTERVAL YEAR - BULK COLLECT 成功 , 记录数 = ' || v_tab_a.COUNT;
FOR i IN 1 .. v_tab_a.COUNT LOOP
v_result_a := v_result_a || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_a(i));
END LOOP;
RETURN v_result_a;
END;
/

//执行函数
SELECT func_interval_bulk_collect_a() AS res FROM DUAL;


//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_b(
) RETURN VARCHAR
AS
TYPE t_interval_b IS TABLE OF INTERVAL MONTH;
v_tab_b t_interval_b;
v_result_b VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_b FROM t_table_005b ORDER BY id;
v_result_b := 'INTERVAL MONTH - BULK COLLECT 成功 , 记录数 = ' || v_tab_b.COUNT;
FOR i IN 1 .. v_tab_b.COUNT LOOP
v_result_b := v_result_b || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_b(i));
END LOOP;
RETURN v_result_b;
END;
/

//执行函数
SELECT func_interval_bulk_collect_b() AS res FROM DUAL;


//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_c(
) RETURN VARCHAR
AS
TYPE t_interval_c IS TABLE OF INTERVAL DAY;
v_tab_c t_interval_c;
v_result_c VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_c FROM t_table_005c ORDER BY id;
v_result_c := 'INTERVAL DAY - BULK COLLECT 成功 , 记录数 = ' || v_tab_c.COUNT;
FOR i IN 1 .. v_tab_c.COUNT LOOP
v_result_c := v_result_c || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_c(i));
END LOOP;
RETURN v_result_c;
END;
/

//执行函数
SELECT func_interval_bulk_collect_c() AS res FROM DUAL;


//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_d(
) RETURN VARCHAR
AS
TYPE t_interval_d IS TABLE OF INTERVAL HOUR;
v_tab_d t_interval_d;
v_result_d VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_d FROM t_table_005d ORDER BY id;
v_result_d := 'INTERVAL HOUR - BULK COLLECT 成功 , 记录数 = ' || v_tab_d.COUNT;
FOR i IN 1 .. v_tab_d.COUNT LOOP
v_result_d := v_result_d || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_d(i));
END LOOP;
RETURN v_result_d;
END;
/

//执行函数
SELECT func_interval_bulk_collect_d() AS res FROM DUAL;


//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_e(
) RETURN VARCHAR
AS
TYPE t_interval_e IS TABLE OF INTERVAL MINUTE;
v_tab_e t_interval_e;
v_result_e VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_e FROM t_table_005e ORDER BY id;
v_result_e := 'INTERVAL MINUTE - BULK COLLECT 成功 , 记录数 = ' || v_tab_e.COUNT;
FOR i IN 1 .. v_tab_e.COUNT LOOP
v_result_e := v_result_e || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_e(i));
END LOOP;
RETURN v_result_e;
END;
/

//执行函数
SELECT func_interval_bulk_collect_e() AS res FROM DUAL;


//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_f(
) RETURN VARCHAR
AS
TYPE t_interval_f IS TABLE OF INTERVAL SECOND;
v_tab_f t_interval_f;
v_result_f VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_f FROM t_table_005f ORDER BY id;
v_result_f := 'INTERVAL SECOND - BULK COLLECT 成功 , 记录数 = ' || v_tab_f.COUNT;
FOR i IN 1 .. v_tab_f.COUNT LOOP
v_result_f := v_result_f || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_f(i));
END LOOP;
RETURN v_result_f;
END;
/

//执行函数
SELECT func_interval_bulk_collect_f() AS res FROM DUAL;


//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_g(
) RETURN VARCHAR
AS
TYPE t_interval_g IS TABLE OF INTERVAL YEAR TO MONTH;
v_tab_g t_interval_g;
v_result_g VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_g FROM t_table_005g ORDER BY id;
v_result_g := 'INTERVAL YEAR TO MONTH - BULK COLLECT 成功 , 记录数 = ' || v_tab_g.COUNT;
FOR i IN 1 .. v_tab_g.COUNT LOOP
v_result_g := v_result_g || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_g(i));
END LOOP;
RETURN v_result_g;
END;
/

//执行函数
SELECT func_interval_bulk_collect_g() AS res FROM DUAL;


//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_h(
) RETURN VARCHAR
AS
TYPE t_interval_h IS TABLE OF INTERVAL DAY TO HOUR;
v_tab_h t_interval_h;
v_result_h VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_h FROM t_table_005h ORDER BY id;
v_result_h := 'INTERVAL DAY TO HOUR - BULK COLLECT 成功 , 记录数 = ' || v_tab_h.COUNT;
FOR i IN 1 .. v_tab_h.COUNT LOOP
v_result_h := v_result_h || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_h(i));
END LOOP;
RETURN v_result_h;
END;
/

//执行函数
SELECT func_interval_bulk_collect_h() AS res FROM DUAL;


//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_i(
) RETURN VARCHAR
AS
TYPE t_interval_i IS TABLE OF INTERVAL DAY TO MINUTE;
v_tab_i t_interval_i;
v_result_i VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_i FROM t_table_005i ORDER BY id;
v_result_i := 'INTERVAL DAY TO MINUTE - BULK COLLECT 成功 , 记录数 = ' || v_tab_i.COUNT;
FOR i IN 1 .. v_tab_i.COUNT LOOP
v_result_i := v_result_i || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_i(i));
END LOOP;
RETURN v_result_i;
END;
/

//执行函数
SELECT func_interval_bulk_collect_i() AS res FROM DUAL;


//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_j(
) RETURN VARCHAR
AS
TYPE t_interval_j IS TABLE OF INTERVAL DAY TO SECOND;
v_tab_j t_interval_j;
v_result_j VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_j FROM t_table_005j ORDER BY id;
v_result_j := 'INTERVAL DAY TO SECOND - BULK COLLECT 成功 , 记录数 = ' || v_tab_j.COUNT;
FOR i IN 1 .. v_tab_j.COUNT LOOP
v_result_j := v_result_j || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_j(i));
END LOOP;
RETURN v_result_j;
END;
/

//执行函数
SELECT func_interval_bulk_collect_j() AS res FROM DUAL;


//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_k(
) RETURN VARCHAR
AS
TYPE t_interval_k IS TABLE OF INTERVAL HOUR TO MINUTE;
v_tab_k t_interval_k;
v_result_k VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_k FROM t_table_005k ORDER BY id;
v_result_k := 'INTERVAL HOUR TO MINUTE - BULK COLLECT 成功 , 记录数 = ' || v_tab_k.COUNT;
FOR i IN 1 .. v_tab_k.COUNT LOOP
v_result_k := v_result_k || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_k(i));
END LOOP;
RETURN v_result_k;
END;
/

//执行函数
SELECT func_interval_bulk_collect_k() AS res FROM DUAL;


//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_l(
) RETURN VARCHAR
AS
TYPE t_interval_l IS TABLE OF INTERVAL HOUR TO SECOND;
v_tab_l t_interval_l;
v_result_l VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_l FROM t_table_005l ORDER BY id;
v_result_l := 'INTERVAL HOUR TO SECOND - BULK COLLECT 成功 , 记录数 = ' || v_tab_l.COUNT;
FOR i IN 1 .. v_tab_l.COUNT LOOP
v_result_l := v_result_l || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_l(i));
END LOOP;
RETURN v_result_l;
END;
/

//执行函数
SELECT func_interval_bulk_collect_l() AS res FROM DUAL;


//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_bulk_collect_m(
) RETURN VARCHAR
AS
TYPE t_interval_m IS TABLE OF INTERVAL MINUTE TO SECOND;
v_tab_m t_interval_m;
v_result_m VARCHAR(200);
BEGIN
SELECT c1 BULK COLLECT INTO v_tab_m FROM t_table_005m ORDER BY id;
v_result_m := 'INTERVAL MINUTE TO SECOND - BULK COLLECT 成功 , 记录数 = ' || v_tab_m.COUNT;
FOR i IN 1 .. v_tab_m.COUNT LOOP
v_result_m := v_result_m || ' , 第 ' || i || ' 条 : ' || TO_CHAR(v_tab_m(i));
END LOOP;
RETURN v_result_m;
END;
/

//执行函数
SELECT func_interval_bulk_collect_m() AS res FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_bulk_collect_a;
DROP FUNCTION func_interval_bulk_collect_b;
DROP FUNCTION func_interval_bulk_collect_c;
DROP FUNCTION func_interval_bulk_collect_d;
DROP FUNCTION func_interval_bulk_collect_e;
DROP FUNCTION func_interval_bulk_collect_f;
DROP FUNCTION func_interval_bulk_collect_g;
DROP FUNCTION func_interval_bulk_collect_h;
DROP FUNCTION func_interval_bulk_collect_i;
DROP FUNCTION func_interval_bulk_collect_j;
DROP FUNCTION func_interval_bulk_collect_k;
DROP FUNCTION func_interval_bulk_collect_l;
DROP FUNCTION func_interval_bulk_collect_m;

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