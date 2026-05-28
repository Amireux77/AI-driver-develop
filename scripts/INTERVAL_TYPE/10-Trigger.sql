!4 XG-TYPE-INTERVAL-TRIGGER-001 触发条件含 INTERVAL 类型 (UPDATE触发)
//创建任务表
CREATE TABLE t_task_001a (id INT , task_name VARCHAR(20) , c1 INTERVAL YEAR);
CREATE TABLE t_task_001b (id INT , task_name VARCHAR(20) , c1 INTERVAL MONTH);
CREATE TABLE t_task_001c (id INT , task_name VARCHAR(20) , c1 INTERVAL DAY);
CREATE TABLE t_task_001d (id INT , task_name VARCHAR(20) , c1 INTERVAL HOUR);
CREATE TABLE t_task_001e (id INT , task_name VARCHAR(20) , c1 INTERVAL MINUTE);
CREATE TABLE t_task_001f (id INT , task_name VARCHAR(20) , c1 INTERVAL SECOND);
CREATE TABLE t_task_001g (id INT , task_name VARCHAR(20) , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_task_001h (id INT , task_name VARCHAR(20) , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_task_001i (id INT , task_name VARCHAR(20) , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_task_001j (id INT , task_name VARCHAR(20) , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_task_001k (id INT , task_name VARCHAR(20) , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_task_001l (id INT , task_name VARCHAR(20) , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_task_001m (id INT , task_name VARCHAR(20) , c1 INTERVAL MINUTE TO SECOND);

//创建日志表
CREATE TABLE t_log_001a (log_info VARCHAR(50) , old_value INTERVAL YEAR , new_value INTERVAL YEAR);
CREATE TABLE t_log_001b (log_info VARCHAR(50) , old_value INTERVAL MONTH , new_value INTERVAL MONTH);
CREATE TABLE t_log_001c (log_info VARCHAR(50) , old_value INTERVAL DAY , new_value INTERVAL DAY);
CREATE TABLE t_log_001d (log_info VARCHAR(50) , old_value INTERVAL HOUR , new_value INTERVAL HOUR);
CREATE TABLE t_log_001e (log_info VARCHAR(50) , old_value INTERVAL MINUTE , new_value INTERVAL MINUTE);
CREATE TABLE t_log_001f (log_info VARCHAR(50) , old_value INTERVAL SECOND , new_value INTERVAL SECOND);
CREATE TABLE t_log_001g (log_info VARCHAR(50) , old_value INTERVAL YEAR TO MONTH , new_value INTERVAL YEAR TO MONTH);
CREATE TABLE t_log_001h (log_info VARCHAR(50) , old_value INTERVAL DAY TO HOUR , new_value INTERVAL DAY TO HOUR);
CREATE TABLE t_log_001i (log_info VARCHAR(50) , old_value INTERVAL DAY TO MINUTE , new_value INTERVAL DAY TO MINUTE);
CREATE TABLE t_log_001j (log_info VARCHAR(50) , old_value INTERVAL DAY TO SECOND , new_value INTERVAL DAY TO SECOND);
CREATE TABLE t_log_001k (log_info VARCHAR(50) , old_value INTERVAL HOUR TO MINUTE , new_value INTERVAL HOUR TO MINUTE);
CREATE TABLE t_log_001l (log_info VARCHAR(50) , old_value INTERVAL HOUR TO SECOND , new_value INTERVAL HOUR TO SECOND);
CREATE TABLE t_log_001m (log_info VARCHAR(50) , old_value INTERVAL MINUTE TO SECOND , new_value INTERVAL MINUTE TO SECOND);


//创建 INTERVAL YEAR 触发器
CREATE TRIGGER trg_interval_change_a
AFTER UPDATE ON t_task_001a
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001a VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL MONTH 触发器
CREATE TRIGGER trg_interval_change_b
AFTER UPDATE ON t_task_001b
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001b VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL DAY 触发器
CREATE TRIGGER trg_interval_change_c
AFTER UPDATE ON t_task_001c
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001c VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL HOUR 触发器
CREATE TRIGGER trg_interval_change_d
AFTER UPDATE ON t_task_001d
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001d VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL MINUTE 触发器
CREATE TRIGGER trg_interval_change_e
AFTER UPDATE ON t_task_001e
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001e VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL SECOND 触发器
CREATE TRIGGER trg_interval_change_f
AFTER UPDATE ON t_task_001f
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001f VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL YEAR TO MONTH 触发器
CREATE TRIGGER trg_interval_change_g
AFTER UPDATE ON t_task_001g
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001g VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL DAY TO HOUR 触发器
CREATE TRIGGER trg_interval_change_h
AFTER UPDATE ON t_task_001h
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001h VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL DAY TO MINUTE 触发器
CREATE TRIGGER trg_interval_change_i
AFTER UPDATE ON t_task_001i
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001i VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL DAY TO SECOND 触发器
CREATE TRIGGER trg_interval_change_j
AFTER UPDATE ON t_task_001j
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001j VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL HOUR TO MINUTE 触发器
CREATE TRIGGER trg_interval_change_k
AFTER UPDATE ON t_task_001k
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001k VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL HOUR TO SECOND 触发器
CREATE TRIGGER trg_interval_change_l
AFTER UPDATE ON t_task_001l
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001l VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//创建 INTERVAL MINUTE TO SECOND 触发器
CREATE TRIGGER trg_interval_change_m
AFTER UPDATE ON t_task_001m
FOR EACH ROW
BEGIN
IF OLD.c1 > NEW.c1
THEN
INSERT INTO t_log_001m VALUES ('Value Updated' , OLD.c1 , NEW.c1);
END IF;
END;
/

//插入数据
INSERT INTO t_task_001a VALUES (1 , 'task_a' , '9');
INSERT INTO t_task_001b VALUES (1 , 'task_b' , '9');
INSERT INTO t_task_001c VALUES (1 , 'task_c' , '9');
INSERT INTO t_task_001d VALUES (1 , 'task_d' , '9');
INSERT INTO t_task_001e VALUES (1 , 'task_e' , '9');
INSERT INTO t_task_001f VALUES (1 , 'task_f' , '9');
INSERT INTO t_task_001g VALUES (1 , 'task_g' , '9');
INSERT INTO t_task_001h VALUES (1 , 'task_h' , '9');
INSERT INTO t_task_001i VALUES (1 , 'task_i' , '9');
INSERT INTO t_task_001j VALUES (1 , 'task_j' , '9');
INSERT INTO t_task_001k VALUES (1 , 'task_k' , '9');
INSERT INTO t_task_001l VALUES (1 , 'task_l' , '9');
INSERT INTO t_task_001m VALUES (1 , 'task_m' , '9');

//更新数据
UPDATE t_task_001a SET c1 = '8';
UPDATE t_task_001b SET c1 = '8';
UPDATE t_task_001c SET c1 = '8';
UPDATE t_task_001d SET c1 = '8';
UPDATE t_task_001e SET c1 = '8';
UPDATE t_task_001f SET c1 = '8';
UPDATE t_task_001g SET c1 = '8';
UPDATE t_task_001h SET c1 = '8';
UPDATE t_task_001i SET c1 = '8';
UPDATE t_task_001j SET c1 = '8';
UPDATE t_task_001k SET c1 = '8';
UPDATE t_task_001l SET c1 = '8';
UPDATE t_task_001m SET c1 = '8';

//查询结果
<预期结果 : 1 | task_a | 8-0>
SELECT * FROM t_task_001a;
<预期结果 : 1 | task_b | 0-8>
SELECT * FROM t_task_001b;
<预期结果 : 1 | task_c | 8 0:00:00>
SELECT * FROM t_task_001c;
<预期结果 : 1 | task_d | 8:00:00>
SELECT * FROM t_task_001d;
<预期结果 : 1 | task_e | 0:08:00>
SELECT * FROM t_task_001e;
<预期结果 : 1 | task_f | 0:00:08>
SELECT * FROM t_task_001f;
<预期结果 : 1 | task_g | 0-8>
SELECT * FROM t_task_001g;
<预期结果 : 1 | task_h | 8:00:00>
SELECT * FROM t_task_001h;
<预期结果 : 1 | task_i | 0:08:00>
SELECT * FROM t_task_001i;
<预期结果 : 1 | task_j | 0:00:08>
SELECT * FROM t_task_001j;
<预期结果 : 1 | task_k | 0:08:00>
SELECT * FROM t_task_001k;
<预期结果 : 1 | task_l | 0:00:08>
SELECT * FROM t_task_001l;
<预期结果 : 1 | task_m | 0:00:08>
SELECT * FROM t_task_001m;

//查询结果
<预期结果 : Value Updated | 9-0 | 8-0>
SELECT * FROM t_log_001a;
<预期结果 : Value Updated | 0-9 | 0-8>
SELECT * FROM t_log_001b;
<预期结果 : Value Updated | 9 0:00:00 | 8 0:00:00>
SELECT * FROM t_log_001c;
<预期结果 : Value Updated | 9:00:00 | 8:00:00>
SELECT * FROM t_log_001d;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001e;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001f;
<预期结果 : Value Updated | 0-9 | 0-8>
SELECT * FROM t_log_001g;
<预期结果 : Value Updated | 9:00:00 | 8:00:00>
SELECT * FROM t_log_001h;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001i;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001j;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001k;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001l;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001m;

//更新数据
UPDATE t_task_001a SET c1 = '9' WHERE id = 1;
UPDATE t_task_001b SET c1 = '9' WHERE id = 1;
UPDATE t_task_001c SET c1 = '9' WHERE id = 1;
UPDATE t_task_001d SET c1 = '9' WHERE id = 1;
UPDATE t_task_001e SET c1 = '9' WHERE id = 1;
UPDATE t_task_001f SET c1 = '9' WHERE id = 1;
UPDATE t_task_001g SET c1 = '9' WHERE id = 1;
UPDATE t_task_001h SET c1 = '9' WHERE id = 1;
UPDATE t_task_001i SET c1 = '9' WHERE id = 1;
UPDATE t_task_001j SET c1 = '9' WHERE id = 1;
UPDATE t_task_001k SET c1 = '9' WHERE id = 1;
UPDATE t_task_001l SET c1 = '9' WHERE id = 1;
UPDATE t_task_001m SET c1 = '9' WHERE id = 1;

//查询结果
<预期结果 : 1 | task_a | 9-0>
SELECT * FROM t_task_001a;
<预期结果 : 1 | task_b | 0-9>
SELECT * FROM t_task_001b;
<预期结果 : 1 | task_c | 9 0:00:00>
SELECT * FROM t_task_001c;
<预期结果 : 1 | task_d | 9:00:00>
SELECT * FROM t_task_001d;
<预期结果 : 1 | task_e | 0:09:00>
SELECT * FROM t_task_001e;
<预期结果 : 1 | task_f | 0:00:09>
SELECT * FROM t_task_001f;
<预期结果 : 1 | task_g | 0-9>
SELECT * FROM t_task_001g;
<预期结果 : 1 | task_h | 9:00:00>
SELECT * FROM t_task_001h;
<预期结果 : 1 | task_i | 0:09:00>
SELECT * FROM t_task_001i;
<预期结果 : 1 | task_j | 0:00:09>
SELECT * FROM t_task_001j;
<预期结果 : 1 | task_k | 0:09:00>
SELECT * FROM t_task_001k;
<预期结果 : 1 | task_l | 0:00:09>
SELECT * FROM t_task_001l;
<预期结果 : 1 | task_m | 0:00:09>
SELECT * FROM t_task_001m;

//查询结果
<预期结果 : Value Updated | 9-0 | 8-0>
SELECT * FROM t_log_001a;
<预期结果 : Value Updated | 0-9 | 0-8>
SELECT * FROM t_log_001b;
<预期结果 : Value Updated | 9 0:00:00 | 8 0:00:00>
SELECT * FROM t_log_001c;
<预期结果 : Value Updated | 9:00:00 | 8:00:00>
SELECT * FROM t_log_001d;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001e;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001f;
<预期结果 : Value Updated | 0-9 | 0-8>
SELECT * FROM t_log_001g;
<预期结果 : Value Updated | 9:00:00 | 8:00:00>
SELECT * FROM t_log_001h;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001i;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001j;
<预期结果 : Value Updated | 0:09:00 | 0:08:00>
SELECT * FROM t_log_001k;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001l;
<预期结果 : Value Updated | 0:00:09 | 0:00:08>
SELECT * FROM t_log_001m;

//删除触发器
DROP TRIGGER trg_interval_change_a;
DROP TRIGGER trg_interval_change_b;
DROP TRIGGER trg_interval_change_c;
DROP TRIGGER trg_interval_change_d;
DROP TRIGGER trg_interval_change_e;
DROP TRIGGER trg_interval_change_f;
DROP TRIGGER trg_interval_change_g;
DROP TRIGGER trg_interval_change_h;
DROP TRIGGER trg_interval_change_i;
DROP TRIGGER trg_interval_change_j;
DROP TRIGGER trg_interval_change_k;
DROP TRIGGER trg_interval_change_l;
DROP TRIGGER trg_interval_change_m;

//删除表
DROP TABLE t_task_001a;
DROP TABLE t_task_001b;
DROP TABLE t_task_001c;
DROP TABLE t_task_001d;
DROP TABLE t_task_001e;
DROP TABLE t_task_001f;
DROP TABLE t_task_001g;
DROP TABLE t_task_001h;
DROP TABLE t_task_001i;
DROP TABLE t_task_001j;
DROP TABLE t_task_001k;
DROP TABLE t_task_001l;
DROP TABLE t_task_001m;
DROP TABLE t_log_001a;
DROP TABLE t_log_001b;
DROP TABLE t_log_001c;
DROP TABLE t_log_001d;
DROP TABLE t_log_001e;
DROP TABLE t_log_001f;
DROP TABLE t_log_001g;
DROP TABLE t_log_001h;
DROP TABLE t_log_001i;
DROP TABLE t_log_001j;
DROP TABLE t_log_001k;
DROP TABLE t_log_001l;
DROP TABLE t_log_001m;

!4 XG-TYPE-INTERVAL-TRIGGER-002 触发后计算 INTERVAL 赋值
//创建表
CREATE TABLE t_table_002a (id INT , order_interval INTERVAL YEAR , ship_interval INTERVAL YEAR);
CREATE TABLE t_table_002b (id INT , order_interval INTERVAL MONTH , ship_interval INTERVAL MONTH);
CREATE TABLE t_table_002c (id INT , order_interval INTERVAL DAY , ship_interval INTERVAL DAY);
CREATE TABLE t_table_002d (id INT , order_interval INTERVAL HOUR , ship_interval INTERVAL HOUR);
CREATE TABLE t_table_002e (id INT , order_interval INTERVAL MINUTE , ship_interval INTERVAL MINUTE);
CREATE TABLE t_table_002f (id INT , order_interval INTERVAL SECOND , ship_interval INTERVAL SECOND);
CREATE TABLE t_table_002g (id INT , order_interval INTERVAL YEAR TO MONTH , ship_interval INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_002h (id INT , order_interval INTERVAL DAY TO HOUR , ship_interval INTERVAL DAY TO HOUR);
CREATE TABLE t_table_002i (id INT , order_interval INTERVAL DAY TO MINUTE , ship_interval INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_002j (id INT , order_interval INTERVAL DAY TO SECOND , ship_interval INTERVAL DAY TO SECOND);
CREATE TABLE t_table_002k (id INT , order_interval INTERVAL HOUR TO MINUTE , ship_interval INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_002l (id INT , order_interval INTERVAL HOUR TO SECOND , ship_interval INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_002m (id INT , order_interval INTERVAL MINUTE TO SECOND , ship_interval INTERVAL MINUTE TO SECOND);


//创建 INTERVAL YEAR 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_a
BEFORE INSERT ON t_table_002a
FOR EACH ROW
DECLARE
v_temp_interval_a INTERVAL YEAR;
v_interval_str_a VARCHAR2(20);
BEGIN
v_temp_interval_a := :NEW.order_interval;
v_temp_interval_a := v_temp_interval_a + '1';
v_interval_str_a := v_temp_interval_a;
:NEW.ship_interval := CAST(v_interval_str_a AS INTERVAL YEAR);
END;
/

//创建 INTERVAL MONTH 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_b
BEFORE INSERT ON t_table_002b
FOR EACH ROW
DECLARE
v_temp_interval_b INTERVAL MONTH;
v_interval_str_b VARCHAR2(20);
BEGIN
v_temp_interval_b := :NEW.order_interval;
v_temp_interval_b := v_temp_interval_b + '1';
v_interval_str_b := v_temp_interval_b;
:NEW.ship_interval := CAST(v_interval_str_b AS INTERVAL MONTH);
END;
/

//创建 INTERVAL DAY 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_c
BEFORE INSERT ON t_table_002c
FOR EACH ROW
DECLARE
v_temp_interval_c INTERVAL DAY;
v_interval_str_c VARCHAR2(20);
BEGIN
v_temp_interval_c := :NEW.order_interval;
v_temp_interval_c := v_temp_interval_c + '1';
v_interval_str_c := v_temp_interval_c;
:NEW.ship_interval := CAST(v_interval_str_c AS INTERVAL DAY);
END;
/

//创建 INTERVAL HOUR 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_d
BEFORE INSERT ON t_table_002d
FOR EACH ROW
DECLARE
v_temp_interval_d INTERVAL HOUR;
v_interval_str_d VARCHAR2(20);
BEGIN
v_temp_interval_d := :NEW.order_interval;
v_temp_interval_d := v_temp_interval_d + '1';
v_interval_str_d := v_temp_interval_d;
:NEW.ship_interval := CAST(v_interval_str_d AS INTERVAL HOUR);
END;
/

//创建 INTERVAL MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_e
BEFORE INSERT ON t_table_002e
FOR EACH ROW
DECLARE
v_temp_interval_e INTERVAL MINUTE;
v_interval_str_e VARCHAR2(20);
BEGIN
v_temp_interval_e := :NEW.order_interval;
v_temp_interval_e := v_temp_interval_e + '1';
v_interval_str_e := v_temp_interval_e;
:NEW.ship_interval := CAST(v_interval_str_e AS INTERVAL MINUTE);
END;
/

//创建 INTERVAL SECOND 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_f
BEFORE INSERT ON t_table_002f
FOR EACH ROW
DECLARE
v_temp_interval_f INTERVAL SECOND;
v_interval_str_f VARCHAR2(20);
BEGIN
v_temp_interval_f := :NEW.order_interval;
v_temp_interval_f := v_temp_interval_f + '1';
v_interval_str_f := v_temp_interval_f;
:NEW.ship_interval := CAST(v_interval_str_f AS INTERVAL SECOND);
END;
/

//创建 INTERVAL YEAR TO MONTH 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_g
BEFORE INSERT ON t_table_002g
FOR EACH ROW
DECLARE
v_temp_interval_g INTERVAL YEAR TO MONTH;
v_interval_str_g VARCHAR2(20);
BEGIN
v_temp_interval_g := :NEW.order_interval;
v_temp_interval_g := v_temp_interval_g + '1';
v_interval_str_g := v_temp_interval_g;
:NEW.ship_interval := CAST(v_interval_str_g AS INTERVAL YEAR TO MONTH);
END;
/

//创建 INTERVAL DAY TO HOUR 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_h
BEFORE INSERT ON t_table_002h
FOR EACH ROW
DECLARE
v_temp_interval_h INTERVAL DAY TO HOUR;
v_interval_str_h VARCHAR2(20);
BEGIN
v_temp_interval_h := :NEW.order_interval;
v_temp_interval_h := v_temp_interval_h + '1';
v_interval_str_h := v_temp_interval_h;
:NEW.ship_interval := CAST(v_interval_str_h AS INTERVAL DAY TO HOUR);
END;
/

//创建 INTERVAL DAY TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_i
BEFORE INSERT ON t_table_002i
FOR EACH ROW
DECLARE
v_temp_interval_i INTERVAL DAY TO MINUTE;
v_interval_str_i VARCHAR2(20);
BEGIN
v_temp_interval_i := :NEW.order_interval;
v_temp_interval_i := v_temp_interval_i + '1';
v_interval_str_i := v_temp_interval_i;
:NEW.ship_interval := CAST(v_interval_str_i AS INTERVAL DAY TO MINUTE);
END;
/

//创建 INTERVAL DAY TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_j
BEFORE INSERT ON t_table_002j
FOR EACH ROW
DECLARE
v_temp_interval_j INTERVAL DAY TO SECOND;
v_interval_str_j VARCHAR2(20);
BEGIN
v_temp_interval_j := :NEW.order_interval;
v_temp_interval_j := v_temp_interval_j + '1';
v_interval_str_j := v_temp_interval_j;
:NEW.ship_interval := CAST(v_interval_str_j AS INTERVAL DAY TO SECOND);
END;
/

//创建 INTERVAL HOUR TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_k
BEFORE INSERT ON t_table_002k
FOR EACH ROW
DECLARE
v_temp_interval_k INTERVAL HOUR TO MINUTE;
v_interval_str_k VARCHAR2(20);
BEGIN
v_temp_interval_k := :NEW.order_interval;
v_temp_interval_k := v_temp_interval_k + '1';
v_interval_str_k := v_temp_interval_k;
:NEW.ship_interval := CAST(v_interval_str_k AS INTERVAL HOUR TO MINUTE);
END;
/

//创建 INTERVAL HOUR TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_l
BEFORE INSERT ON t_table_002l
FOR EACH ROW
DECLARE
v_temp_interval_l INTERVAL HOUR TO SECOND;
v_interval_str_l VARCHAR2(20);
BEGIN
v_temp_interval_l := :NEW.order_interval;
v_temp_interval_l := v_temp_interval_l + '1';
v_interval_str_l := v_temp_interval_l;
:NEW.ship_interval := CAST(v_interval_str_l AS INTERVAL HOUR TO SECOND);
END;
/

//创建 INTERVAL MINUTE TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_set_ship_interval_m
BEFORE INSERT ON t_table_002m
FOR EACH ROW
DECLARE
v_temp_interval_m INTERVAL MINUTE TO SECOND;
v_interval_str_m VARCHAR2(20);
BEGIN
v_temp_interval_m := :NEW.order_interval;
v_temp_interval_m := v_temp_interval_m + '1';
v_interval_str_m := v_temp_interval_m;
:NEW.ship_interval := CAST(v_interval_str_m AS INTERVAL MINUTE TO SECOND);
END;
/

//插入数据
INSERT INTO t_table_002a (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002b (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002c (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002d (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002e (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002f (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002g (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002h (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002i (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002j (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002k (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002l (id , order_interval) VALUES (101 , '8');
INSERT INTO t_table_002m (id , order_interval) VALUES (101 , '8');

//查询结果
<预期结果 : 101 | 8-0 | 9-0>
SELECT * FROM t_table_002a;
<预期结果 : 101 | 0-8 | 0-9>
SELECT * FROM t_table_002b;
<预期结果 : 101 | 8 0:00:00 | 9 0:00:00>
SELECT * FROM t_table_002c;
<预期结果 : 101 | 8:00:00 | 9:00:00>
SELECT * FROM t_table_002d;
<预期结果 : 101 | 0:08:00 | 0:09:00>
SELECT * FROM t_table_002e;
<预期结果 : 101 | 0:00:08 | 0:00:09>
SELECT * FROM t_table_002f;
<预期结果 : 101 | 0-8 | 0-9>
SELECT * FROM t_table_002g;
<预期结果 : 101 | 8:00:00 | 9:00:00>
SELECT * FROM t_table_002h;
<预期结果 : 101 | 0:08:00 | 0:09:00>
SELECT * FROM t_table_002i;
<预期结果 : 101 | 0:00:08 | 0:00:09>
SELECT * FROM t_table_002j;
<预期结果 : 101 | 0:08:00 | 0:09:00>
SELECT * FROM t_table_002k;
<预期结果 : 101 | 0:00:08 | 0:00:09>
SELECT * FROM t_table_002l;
<预期结果 : 101 | 0:00:08 | 0:00:09>
SELECT * FROM t_table_002m;

//删除触发器
DROP TRIGGER trg_set_ship_interval_a;
DROP TRIGGER trg_set_ship_interval_b;
DROP TRIGGER trg_set_ship_interval_c;
DROP TRIGGER trg_set_ship_interval_d;
DROP TRIGGER trg_set_ship_interval_e;
DROP TRIGGER trg_set_ship_interval_f;
DROP TRIGGER trg_set_ship_interval_g;
DROP TRIGGER trg_set_ship_interval_h;
DROP TRIGGER trg_set_ship_interval_i;
DROP TRIGGER trg_set_ship_interval_j;
DROP TRIGGER trg_set_ship_interval_k;
DROP TRIGGER trg_set_ship_interval_l;
DROP TRIGGER trg_set_ship_interval_m;

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

!4 XG-TYPE-INTERVAL-TRIGGER-003 触发后对 INTERVAL 进行逻辑校验
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

//创建 INTERVAL YEAR 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_a
BEFORE INSERT ON t_table_003a
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL MONTH 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_b
BEFORE INSERT ON t_table_003b
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL DAY 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_c
BEFORE INSERT ON t_table_003c
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL HOUR 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_d
BEFORE INSERT ON t_table_003d
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_e
BEFORE INSERT ON t_table_003e
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL SECOND 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_f
BEFORE INSERT ON t_table_003f
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL YEAR TO MONTH 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_g
BEFORE INSERT ON t_table_003g
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL DAY TO HOUR 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_h
BEFORE INSERT ON t_table_003h
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL DAY TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_i
BEFORE INSERT ON t_table_003i
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL DAY TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_j
BEFORE INSERT ON t_table_003j
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL HOUR TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_k
BEFORE INSERT ON t_table_003k
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL HOUR TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_l
BEFORE INSERT ON t_table_003l
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//创建 INTERVAL MINUTE TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_check_interval_m
BEFORE INSERT ON t_table_003m
FOR EACH ROW
BEGIN
IF :NEW.c1 > '9' THEN
RAISE_APPLICATION_ERROR(-20007,'此处设置最大间隔为 9');
END IF;
END;
/

//插入数据
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003a VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003b VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003c VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003d VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003e VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003f VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003g VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003h VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003i VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003j VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003k VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003l VALUES (101 , '10');
<预期结果 : E20007 , 此处设置最大间隔为 9>
INSERT INTO t_table_003m VALUES (101 , '10');

//插入数据
INSERT INTO t_table_003a VALUES (102 , '8');
INSERT INTO t_table_003b VALUES (102 , '8');
INSERT INTO t_table_003c VALUES (102 , '8');
INSERT INTO t_table_003d VALUES (102 , '8');
INSERT INTO t_table_003e VALUES (102 , '8');
INSERT INTO t_table_003f VALUES (102 , '8');
INSERT INTO t_table_003g VALUES (102 , '8');
INSERT INTO t_table_003h VALUES (102 , '8');
INSERT INTO t_table_003i VALUES (102 , '8');
INSERT INTO t_table_003j VALUES (102 , '8');
INSERT INTO t_table_003k VALUES (102 , '8');
INSERT INTO t_table_003l VALUES (102 , '8');
INSERT INTO t_table_003m VALUES (102 , '8');

//查询结果
<预期结果 : 102 | 8-0>
SELECT * FROM t_table_003a;
<预期结果 : 102 | 0-8>
SELECT * FROM t_table_003b;
<预期结果 : 102 | 8 0:00:00>
SELECT * FROM t_table_003c;
<预期结果 : 102 | 8:00:00>
SELECT * FROM t_table_003d;
<预期结果 : 102 | 0:08:00>
SELECT * FROM t_table_003e;
<预期结果 : 102 | 0:00:08>
SELECT * FROM t_table_003f;
<预期结果 : 102 | 0-8>
SELECT * FROM t_table_003g;
<预期结果 : 102 | 8:00:00>
SELECT * FROM t_table_003h;
<预期结果 : 102 | 0:08:00>
SELECT * FROM t_table_003i;
<预期结果 : 102 | 0:00:08>
SELECT * FROM t_table_003j;
<预期结果 : 102 | 0:08:00>
SELECT * FROM t_table_003k;
<预期结果 : 102 | 0:00:08>
SELECT * FROM t_table_003l;
<预期结果 : 102 | 0:00:08>
SELECT * FROM t_table_003m;

//删除触发器
DROP TRIGGER trg_check_interval_a;
DROP TRIGGER trg_check_interval_b;
DROP TRIGGER trg_check_interval_c;
DROP TRIGGER trg_check_interval_d;
DROP TRIGGER trg_check_interval_e;
DROP TRIGGER trg_check_interval_f;
DROP TRIGGER trg_check_interval_g;
DROP TRIGGER trg_check_interval_h;
DROP TRIGGER trg_check_interval_i;
DROP TRIGGER trg_check_interval_j;
DROP TRIGGER trg_check_interval_k;
DROP TRIGGER trg_check_interval_l;
DROP TRIGGER trg_check_interval_m;

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

!4 XG-TYPE-INTERVAL-TRIGGER-004 跨表同步 INTERVAL 字段
//创建表
CREATE TABLE t_project_004a (p_id INT , p_c1 INTERVAL YEAR);
CREATE TABLE t_project_004b (p_id INT , p_c1 INTERVAL MONTH);
CREATE TABLE t_project_004c (p_id INT , p_c1 INTERVAL DAY);
CREATE TABLE t_project_004d (p_id INT , p_c1 INTERVAL HOUR);
CREATE TABLE t_project_004e (p_id INT , p_c1 INTERVAL MINUTE);
CREATE TABLE t_project_004f (p_id INT , p_c1 INTERVAL SECOND);
CREATE TABLE t_project_004g (p_id INT , p_c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_project_004h (p_id INT , p_c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_project_004i (p_id INT , p_c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_project_004j (p_id INT , p_c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_project_004k (p_id INT , p_c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_project_004l (p_id INT , p_c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_project_004m (p_id INT , p_c1 INTERVAL MINUTE TO SECOND);

//创建表
CREATE TABLE t_milestone_004a (m_id INT , p_id INT , m_c1 INTERVAL YEAR);
CREATE TABLE t_milestone_004b (m_id INT , p_id INT , m_c1 INTERVAL MONTH);
CREATE TABLE t_milestone_004c (m_id INT , p_id INT , m_c1 INTERVAL DAY);
CREATE TABLE t_milestone_004d (m_id INT , p_id INT , m_c1 INTERVAL HOUR);
CREATE TABLE t_milestone_004e (m_id INT , p_id INT , m_c1 INTERVAL MINUTE);
CREATE TABLE t_milestone_004f (m_id INT , p_id INT , m_c1 INTERVAL SECOND);
CREATE TABLE t_milestone_004g (m_id INT , p_id INT , m_c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_milestone_004h (m_id INT , p_id INT , m_c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_milestone_004i (m_id INT , p_id INT , m_c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_milestone_004j (m_id INT , p_id INT , m_c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_milestone_004k (m_id INT , p_id INT , m_c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_milestone_004l (m_id INT , p_id INT , m_c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_milestone_004m (m_id INT , p_id INT , m_c1 INTERVAL MINUTE TO SECOND);


//创建 INTERVAL YEAR 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_a
AFTER UPDATE ON t_project_004a
FOR EACH ROW
DECLARE
v_interval_diff_a INTERVAL YEAR;
BEGIN
v_interval_diff_a := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004a SET m_c1 = m_c1 + v_interval_diff_a WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL MONTH 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_b
AFTER UPDATE ON t_project_004b
FOR EACH ROW
DECLARE
v_interval_diff_b INTERVAL MONTH;
BEGIN
v_interval_diff_b := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004b SET m_c1 = m_c1 + v_interval_diff_b WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL DAY 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_c
AFTER UPDATE ON t_project_004c
FOR EACH ROW
DECLARE
v_interval_diff_c INTERVAL DAY;
BEGIN
v_interval_diff_c := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004c SET m_c1 = m_c1 + v_interval_diff_c WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL HOUR 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_d
AFTER UPDATE ON t_project_004d
FOR EACH ROW
DECLARE
v_interval_diff_d INTERVAL HOUR;
BEGIN
v_interval_diff_d := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004d SET m_c1 = m_c1 + v_interval_diff_d WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_e
AFTER UPDATE ON t_project_004e
FOR EACH ROW
DECLARE
v_interval_diff_e INTERVAL MINUTE;
BEGIN
v_interval_diff_e := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004e SET m_c1 = m_c1 + v_interval_diff_e WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL SECOND 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_f
AFTER UPDATE ON t_project_004f
FOR EACH ROW
DECLARE
v_interval_diff_f INTERVAL SECOND;
BEGIN
v_interval_diff_f := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004f SET m_c1 = m_c1 + v_interval_diff_f WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL YEAR TO MONTH 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_g
AFTER UPDATE ON t_project_004g
FOR EACH ROW
DECLARE
v_interval_diff_g INTERVAL YEAR TO MONTH;
BEGIN
v_interval_diff_g := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004g SET m_c1 = m_c1 + v_interval_diff_g WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL DAY TO HOUR 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_h
AFTER UPDATE ON t_project_004h
FOR EACH ROW
DECLARE
v_interval_diff_h INTERVAL DAY TO HOUR;
BEGIN
v_interval_diff_h := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004h SET m_c1 = m_c1 + v_interval_diff_h WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL DAY TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_i
AFTER UPDATE ON t_project_004i
FOR EACH ROW
DECLARE
v_interval_diff_i INTERVAL DAY TO MINUTE;
BEGIN
v_interval_diff_i := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004i SET m_c1 = m_c1 + v_interval_diff_i WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL DAY TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_j
AFTER UPDATE ON t_project_004j
FOR EACH ROW
DECLARE
v_interval_diff_j INTERVAL DAY TO SECOND;
BEGIN
v_interval_diff_j := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004j SET m_c1 = m_c1 + v_interval_diff_j WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL HOUR TO MINUTE 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_k
AFTER UPDATE ON t_project_004k
FOR EACH ROW
DECLARE
v_interval_diff_k INTERVAL HOUR TO MINUTE;
BEGIN
v_interval_diff_k := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004k SET m_c1 = m_c1 + v_interval_diff_k WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL HOUR TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_l
AFTER UPDATE ON t_project_004l
FOR EACH ROW
DECLARE
v_interval_diff_l INTERVAL HOUR TO SECOND;
BEGIN
v_interval_diff_l := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004l SET m_c1 = m_c1 + v_interval_diff_l WHERE p_id = :NEW.p_id;
END;
/

//创建 INTERVAL MINUTE TO SECOND 触发器
CREATE OR REPLACE TRIGGER trg_sync_milestone_m
AFTER UPDATE ON t_project_004m
FOR EACH ROW
DECLARE
v_interval_diff_m INTERVAL MINUTE TO SECOND;
BEGIN
v_interval_diff_m := :NEW.p_c1 - :OLD.p_c1;
UPDATE t_milestone_004m SET m_c1 = m_c1 + v_interval_diff_m WHERE p_id = :NEW.p_id;
END;
/

//插入数据
INSERT INTO t_project_004a VALUES (1 , '6');
INSERT INTO t_project_004b VALUES (1 , '6');
INSERT INTO t_project_004c VALUES (1 , '6');
INSERT INTO t_project_004d VALUES (1 , '6');
INSERT INTO t_project_004e VALUES (1 , '6');
INSERT INTO t_project_004f VALUES (1 , '6');
INSERT INTO t_project_004g VALUES (1 , '6');
INSERT INTO t_project_004h VALUES (1 , '6');
INSERT INTO t_project_004i VALUES (1 , '6');
INSERT INTO t_project_004j VALUES (1 , '6');
INSERT INTO t_project_004k VALUES (1 , '6');
INSERT INTO t_project_004l VALUES (1 , '6');
INSERT INTO t_project_004m VALUES (1 , '6');

//插入数据
INSERT INTO t_milestone_004a VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004b VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004c VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004d VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004e VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004f VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004g VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004h VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004i VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004j VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004k VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004l VALUES (10 , 1 , '9');
INSERT INTO t_milestone_004m VALUES (10 , 1 , '9');

//查询结果
<预期结果 : 1 | 6-0>
SELECT * FROM t_project_004a;
<预期结果 : 1 | 0-6>
SELECT * FROM t_project_004b;
<预期结果 : 1 | 6 0:00:00>
SELECT * FROM t_project_004c;
<预期结果 : 1 | 6:00:00>
SELECT * FROM t_project_004d;
<预期结果 : 1 | 0:06:00>
SELECT * FROM t_project_004e;
<预期结果 : 1 | 0:00:06>
SELECT * FROM t_project_004f;
<预期结果 : 1 | 0-6>
SELECT * FROM t_project_004g;
<预期结果 : 1 | 6:00:00>
SELECT * FROM t_project_004h;
<预期结果 : 1 | 0:06:00>
SELECT * FROM t_project_004i;
<预期结果 : 1 | 0:00:06>
SELECT * FROM t_project_004j;
<预期结果 : 1 | 0:06:00>
SELECT * FROM t_project_004k;
<预期结果 : 1 | 0:00:06>
SELECT * FROM t_project_004l;
<预期结果 : 1 | 0:00:06>
SELECT * FROM t_project_004m;

//查询结果
<预期结果 : 10 | 1 | 9-0>
SELECT * FROM t_milestone_004a;
<预期结果 : 10 | 1 | 0-9>
SELECT * FROM t_milestone_004b;
<预期结果 : 10 | 1 | 9 0:00:00>
SELECT * FROM t_milestone_004c;
<预期结果 : 10 | 1 | 9:00:00>
SELECT * FROM t_milestone_004d;
<预期结果 : 10 | 1 | 0:09:00>
SELECT * FROM t_milestone_004e;
<预期结果 : 10 | 1 | 0:00:09>
SELECT * FROM t_milestone_004f;
<预期结果 : 10 | 1 | 0-9>
SELECT * FROM t_milestone_004g;
<预期结果 : 10 | 1 | 9:00:00>
SELECT * FROM t_milestone_004h;
<预期结果 : 10 | 1 | 0:09:00>
SELECT * FROM t_milestone_004i;
<预期结果 : 10 | 1 | 0:00:09>
SELECT * FROM t_milestone_004j;
<预期结果 : 10 | 1 | 0:09:00>
SELECT * FROM t_milestone_004k;
<预期结果 : 10 | 1 | 0:00:09>
SELECT * FROM t_milestone_004l;
<预期结果 : 10 | 1 | 0:00:09>
SELECT * FROM t_milestone_004m;

//更新数据
UPDATE t_project_004a SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004b SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004c SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004d SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004e SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004f SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004g SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004h SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004i SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004j SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004k SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004l SET p_c1 = '10' WHERE p_id = 1;
UPDATE t_project_004m SET p_c1 = '10' WHERE p_id = 1;

//查询结果
<预期结果 : 1 | 10-0>
SELECT * FROM t_project_004a;
<预期结果 : 1 | 0-10>
SELECT * FROM t_project_004b;
<预期结果 : 1 | 10 0:00:00>
SELECT * FROM t_project_004c;
<预期结果 : 1 | 10:00:00>
SELECT * FROM t_project_004d;
<预期结果 : 1 | 0:10:00>
SELECT * FROM t_project_004e;
<预期结果 : 1 | 0:00:10>
SELECT * FROM t_project_004f;
<预期结果 : 1 | 0-10>
SELECT * FROM t_project_004g;
<预期结果 : 1 | 10:00:00>
SELECT * FROM t_project_004h;
<预期结果 : 1 | 0:10:00>
SELECT * FROM t_project_004i;
<预期结果 : 1 | 0:00:10>
SELECT * FROM t_project_004j;
<预期结果 : 1 | 0:10:00>
SELECT * FROM t_project_004k;
<预期结果 : 1 | 0:00:10>
SELECT * FROM t_project_004l;
<预期结果 : 1 | 0:00:10>
SELECT * FROM t_project_004m;

//查询结果
<预期结果 : 10 | 1 | 13-0>
SELECT * FROM t_milestone_004a;
<预期结果 : 10 | 1 | 0-13>
SELECT * FROM t_milestone_004b;
<预期结果 : 10 | 1 | 13 0:00:00>
SELECT * FROM t_milestone_004c;
<预期结果 : 10 | 1 | 13:00:00>
SELECT * FROM t_milestone_004d;
<预期结果 : 10 | 1 | 0:13:00>
SELECT * FROM t_milestone_004e;
<预期结果 : 10 | 1 | 0:00:13>
SELECT * FROM t_milestone_004f;
<预期结果 : 10 | 1 | 0-13>
SELECT * FROM t_milestone_004g;
<预期结果 : 10 | 1 | 13:00:00>
SELECT * FROM t_milestone_004h;
<预期结果 : 10 | 1 | 0:13:00>
SELECT * FROM t_milestone_004i;
<预期结果 : 10 | 1 | 0:00:13>
SELECT * FROM t_milestone_004j;
<预期结果 : 10 | 1 | 0:13:00>
SELECT * FROM t_milestone_004k;
<预期结果 : 10 | 1 | 0:00:13>
SELECT * FROM t_milestone_004l;
<预期结果 : 10 | 1 | 0:00:13>
SELECT * FROM t_milestone_004m;

//删除触发器
DROP TRIGGER trg_sync_milestone_a;
DROP TRIGGER trg_sync_milestone_b;
DROP TRIGGER trg_sync_milestone_c;
DROP TRIGGER trg_sync_milestone_d;
DROP TRIGGER trg_sync_milestone_e;
DROP TRIGGER trg_sync_milestone_f;
DROP TRIGGER trg_sync_milestone_g;
DROP TRIGGER trg_sync_milestone_h;
DROP TRIGGER trg_sync_milestone_i;
DROP TRIGGER trg_sync_milestone_j;
DROP TRIGGER trg_sync_milestone_k;
DROP TRIGGER trg_sync_milestone_l;
DROP TRIGGER trg_sync_milestone_m;

//删除表
DROP TABLE t_project_004a;
DROP TABLE t_project_004b;
DROP TABLE t_project_004c;
DROP TABLE t_project_004d;
DROP TABLE t_project_004e;
DROP TABLE t_project_004f;
DROP TABLE t_project_004g;
DROP TABLE t_project_004h;
DROP TABLE t_project_004i;
DROP TABLE t_project_004j;
DROP TABLE t_project_004k;
DROP TABLE t_project_004l;
DROP TABLE t_project_004m;
DROP TABLE t_milestone_004a;
DROP TABLE t_milestone_004b;
DROP TABLE t_milestone_004c;
DROP TABLE t_milestone_004d;
DROP TABLE t_milestone_004e;
DROP TABLE t_milestone_004f;
DROP TABLE t_milestone_004g;
DROP TABLE t_milestone_004h;
DROP TABLE t_milestone_004i;
DROP TABLE t_milestone_004j;
DROP TABLE t_milestone_004k;
DROP TABLE t_milestone_004l;
DROP TABLE t_milestone_004m;