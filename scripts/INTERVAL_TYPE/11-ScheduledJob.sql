!4 XG-TYPE-INTERVAL-JOB-001 定时作业写入与更新 INTERVAL 字段
//创建表
CREATE TABLE t_table_001a (id INT , c1 INTERVAL YEAR , exec_datetime DATETIME);
CREATE TABLE t_table_001b (id INT , c1 INTERVAL MONTH , exec_datetime DATETIME);
CREATE TABLE t_table_001c (id INT , c1 INTERVAL DAY , exec_datetime DATETIME);
CREATE TABLE t_table_001d (id INT , c1 INTERVAL HOUR , exec_datetime DATETIME);
CREATE TABLE t_table_001e (id INT , c1 INTERVAL MINUTE , exec_datetime DATETIME);
CREATE TABLE t_table_001f (id INT , c1 INTERVAL SECOND , exec_datetime DATETIME);
CREATE TABLE t_table_001g (id INT , c1 INTERVAL YEAR TO MONTH , exec_datetime DATETIME);
CREATE TABLE t_table_001h (id INT , c1 INTERVAL DAY TO HOUR , exec_datetime DATETIME);
CREATE TABLE t_table_001i (id INT , c1 INTERVAL DAY TO MINUTE , exec_datetime DATETIME);
CREATE TABLE t_table_001j (id INT , c1 INTERVAL DAY TO SECOND , exec_datetime DATETIME);
CREATE TABLE t_table_001k (id INT , c1 INTERVAL HOUR TO MINUTE , exec_datetime DATETIME);
CREATE TABLE t_table_001l (id INT , c1 INTERVAL HOUR TO SECOND , exec_datetime DATETIME);
CREATE TABLE t_table_001m (id INT , c1 INTERVAL MINUTE TO SECOND , exec_datetime DATETIME);


//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_a (p_interval INTERVAL YEAR) IS
BEGIN
INSERT INTO t_table_001a VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL YEAR 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001a' , 
'stored_procedure' , 
'proc_interval_op_a' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001a' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001a' , TRUE);

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_b (p_interval INTERVAL MONTH) IS
BEGIN
INSERT INTO t_table_001b VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL MONTH 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001b' , 
'stored_procedure' , 
'proc_interval_op_b' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001b' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001b' , TRUE);

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_c (p_interval INTERVAL DAY) IS
BEGIN
INSERT INTO t_table_001c VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL DAY 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001c' , 
'stored_procedure' , 
'proc_interval_op_c' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001c' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001c' , TRUE);

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_d (p_interval INTERVAL HOUR) IS
BEGIN
INSERT INTO t_table_001d VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL HOUR 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001d' , 
'stored_procedure' , 
'proc_interval_op_d' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001d' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001d' , TRUE);

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_e (p_interval INTERVAL MINUTE) IS
BEGIN
INSERT INTO t_table_001e VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL MINUTE 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001e' , 
'stored_procedure' , 
'proc_interval_op_e' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001e' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001e' , TRUE);

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_f (p_interval INTERVAL SECOND) IS
BEGIN
INSERT INTO t_table_001f VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL SECOND 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001f' , 
'stored_procedure' , 
'proc_interval_op_f' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001f' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001f' , TRUE);

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_g (p_interval INTERVAL YEAR TO MONTH) IS
BEGIN
INSERT INTO t_table_001g VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL YEAR TO MONTH 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001g' , 
'stored_procedure' , 
'proc_interval_op_g' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001g' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001g' , TRUE);

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_h (p_interval INTERVAL DAY TO HOUR) IS
BEGIN
INSERT INTO t_table_001h VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL DAY TO HOUR 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001h' , 
'stored_procedure' , 
'proc_interval_op_h' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001h' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001h' , TRUE);

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_i (p_interval INTERVAL DAY TO MINUTE) IS
BEGIN
INSERT INTO t_table_001i VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL DAY TO MINUTE 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001i' , 
'stored_procedure' , 
'proc_interval_op_i' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001i' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001i' , TRUE);

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_j (p_interval INTERVAL DAY TO SECOND) IS
BEGIN
INSERT INTO t_table_001j VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL DAY TO SECOND 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001j' , 
'stored_procedure' , 
'proc_interval_op_j' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001j' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001j' , TRUE);

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_k (p_interval INTERVAL HOUR TO MINUTE) IS
BEGIN
INSERT INTO t_table_001k VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL HOUR TO MINUTE 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001k' , 
'stored_procedure' , 
'proc_interval_op_k' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001k' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001k' , TRUE);

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_l (p_interval INTERVAL HOUR TO SECOND) IS
BEGIN
INSERT INTO t_table_001l VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL HOUR TO SECOND 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001l' , 
'stored_procedure' , 
'proc_interval_op_l' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001l' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001l' , TRUE);

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_op_m (p_interval INTERVAL MINUTE TO SECOND) IS
BEGIN
INSERT INTO t_table_001m VALUES (101 , p_interval , '2026-03-27 00:00:00');
END;
/

//创建 INTERVAL MINUTE TO SECOND 定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_001m' , 
'stored_procedure' , 
'proc_interval_op_m' , 
1 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' ,
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 类型参数测试' 
);

//设置定时作业参数
EXEC DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE ('job_interval_test_001m' , 1 , '9');

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_001m' , TRUE);

//查询结果
<预期结果 : 9-0>
SELECT c1 FROM t_table_001a WHERE id = 101;
<预期结果 : 0-9>
SELECT c1 FROM t_table_001b WHERE id = 101;
<预期结果 : 9 0:00:00>
SELECT c1 FROM t_table_001c WHERE id = 101;
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_001d WHERE id = 101;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_001e WHERE id = 101;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_001f WHERE id = 101;
<预期结果 : 0-9>
SELECT c1 FROM t_table_001g WHERE id = 101;
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_001h WHERE id = 101;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_001i WHERE id = 101;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_001j WHERE id = 101;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_001k WHERE id = 101;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_001l WHERE id = 101;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_001m WHERE id = 101;

//删除定时作业
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001a' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001b' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001c' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001d' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001e' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001f' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001g' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001h' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001i' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001j' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001k' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001l' , FALSE);
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_001m' , FALSE);

//删除存储过程
DROP PROCEDURE proc_interval_op_a;
DROP PROCEDURE proc_interval_op_b;
DROP PROCEDURE proc_interval_op_c;
DROP PROCEDURE proc_interval_op_d;
DROP PROCEDURE proc_interval_op_e;
DROP PROCEDURE proc_interval_op_f;
DROP PROCEDURE proc_interval_op_g;
DROP PROCEDURE proc_interval_op_h;
DROP PROCEDURE proc_interval_op_i;
DROP PROCEDURE proc_interval_op_j;
DROP PROCEDURE proc_interval_op_k;
DROP PROCEDURE proc_interval_op_l;
DROP PROCEDURE proc_interval_op_m;

//删除表
DROP TABLE t_table_001a;
DROP TABLE t_table_001b;
DROP TABLE t_table_001c;
DROP TABLE t_table_001d;
DROP TABLE t_table_001e;
DROP TABLE t_table_001f;
DROP TABLE t_table_001g;
DROP TABLE t_table_001h;
DROP TABLE t_table_001i;
DROP TABLE t_table_001j;
DROP TABLE t_table_001k;
DROP TABLE t_table_001l;
DROP TABLE t_table_001m;

!4 XG-TYPE-INTERVAL-JOB-002 PLSQL 块操作 INTERVAL 类型 (匿名块场景)
//创建表
CREATE TABLE t_table_002a (c1 INTERVAL YEAR);
CREATE TABLE t_table_002b (c1 INTERVAL MONTH);
CREATE TABLE t_table_002c (c1 INTERVAL DAY);
CREATE TABLE t_table_002d (c1 INTERVAL HOUR);
CREATE TABLE t_table_002e (c1 INTERVAL MINUTE);
CREATE TABLE t_table_002f (c1 INTERVAL SECOND);
CREATE TABLE t_table_002g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_002h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_002i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_002j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_002k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_002l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_002m (c1 INTERVAL MINUTE TO SECOND);

//创建 INTERVAL YEAR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002a' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL YEAR := ''9''; BEGIN INSERT INTO t_table_002a VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002a' , TRUE);

//创建 INTERVAL MONTH 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002b' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL MONTH := ''9''; BEGIN INSERT INTO t_table_002b VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002b' , TRUE);

//创建 INTERVAL DAY 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002c' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL DAY := ''9''; BEGIN INSERT INTO t_table_002c VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002c' , TRUE);

//创建 INTERVAL HOUR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002d' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL HOUR := ''9''; BEGIN INSERT INTO t_table_002d VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002d' , TRUE);

//创建 INTERVAL MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002e' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL MINUTE := ''9''; BEGIN INSERT INTO t_table_002e VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002e' , TRUE);

//创建 INTERVAL SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002f' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL SECOND := ''9''; BEGIN INSERT INTO t_table_002f VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002f' , TRUE);

//创建 INTERVAL YEAR TO MONTH 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002g' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL YEAR TO MONTH := ''9''; BEGIN INSERT INTO t_table_002g VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002g' , TRUE);

//创建 INTERVAL DAY TO HOUR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002h' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL DAY TO HOUR := ''9''; BEGIN INSERT INTO t_table_002h VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002h' , TRUE);

//创建 INTERVAL DAY TO MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002i' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL DAY TO MINUTE := ''9''; BEGIN INSERT INTO t_table_002i VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002i' , TRUE);

//创建 INTERVAL DAY TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002j' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL DAY TO SECOND := ''9''; BEGIN INSERT INTO t_table_002j VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002j' , TRUE);

//创建 INTERVAL HOUR TO MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002k' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL HOUR TO MINUTE := ''9''; BEGIN INSERT INTO t_table_002k VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002k' , TRUE);

//创建 INTERVAL HOUR TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002l' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL HOUR TO SECOND := ''9''; BEGIN INSERT INTO t_table_002l VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002l' , TRUE);

//创建 INTERVAL MINUTE TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB (
'job_interval_test_002m' , 
'plsql_block' , 
'DECLARE v_interval INTERVAL MINUTE TO SECOND := ''9''; BEGIN INSERT INTO t_table_002m VALUES (v_interval); END;' , 
0 , 
SYSDATE , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'PLSQL 块操作测试'
);

//执行定时作业
EXEC DBMS_SCHEDULER.RUN_JOB ('job_interval_test_002m' , TRUE);

//查询结果
<预期结果 : 9-0>
SELECT * FROM t_table_002a;
<预期结果 : 0-9>
SELECT * FROM t_table_002b;
<预期结果 : 9 0:00:00>
SELECT * FROM t_table_002c;
<预期结果 : 9:00:00>
SELECT * FROM t_table_002d;
<预期结果 : 0:09:00>
SELECT * FROM t_table_002e;
<预期结果 : 0:00:09>
SELECT * FROM t_table_002f;
<预期结果 : 0-9>
SELECT * FROM t_table_002g;
<预期结果 : 9:00:00>
SELECT * FROM t_table_002h;
<预期结果 : 0:09:00>
SELECT * FROM t_table_002i;
<预期结果 : 0:00:09>
SELECT * FROM t_table_002j;
<预期结果 : 0:09:00>
SELECT * FROM t_table_002k;
<预期结果 : 0:00:09>
SELECT * FROM t_table_002l;
<预期结果 : 0:00:09>
SELECT * FROM t_table_002m;

//删除定时作业
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002a');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002b');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002c');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002d');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002e');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002f');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002g');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002h');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002i');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002j');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002k');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002l');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_test_002m');

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

!4 XG-TYPE-INTERVAL-JOB-003 作业属性修改 (修改 INTERVAL 相关属性)

//创建 INTERVAL YEAR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003a' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003a' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL MONTH 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003b' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003b' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL DAY 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003c' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003c' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL HOUR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003d' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003d' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003e' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003e' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003f' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003f' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL YEAR TO MONTH 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003g' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003g' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL DAY TO HOUR 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003h' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003h' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL DAY TO MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003i' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003i' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL DAY TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003j' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003j' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL HOUR TO MINUTE 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003k' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003k' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL HOUR TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003l' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003l' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//创建 INTERVAL MINUTE TO SECOND 类型定时作业
EXEC DBMS_SCHEDULER.CREATE_JOB(
'job_interval_attr_003m' , 
'plsql_command' , 
'SELECT 1' , 
0 , 
'2026-01-01 00:00:00' , 
'FREQ = DAILY; INTERVAL = 1;' , 
NULL , 
'DEFAULT_JOB_CLASS' , 
FALSE , 
TRUE , 
'INTERVAL 属性修改测试'
);

//设置定时作业属性
EXEC DBMS_SCHEDULER.SET_ATTRIBUTE ('job_interval_attr_003m' , 'start_date' , TO_TIMESTAMP('2026-02-05 08:30:00' , 'YYYY-MM-DD HH24:MI:SS'));

//查询结果
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003a';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003b';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003c';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003d';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003e';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003f';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003g';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003h';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003i';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003j';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003k';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003l';
<预期结果 : 2026-02-05 08:30:00.0>
SELECT begin_t FROM DBA_JOBS WHERE JOB_NAME = 'job_interval_attr_003m';

//删除定时作业
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003a');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003b');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003c');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003d');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003e');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003f');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003g');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003h');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003i');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003j');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003k');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003l');
EXEC DBMS_SCHEDULER.DROP_JOB('job_interval_attr_003m');