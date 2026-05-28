!4 XG-TYPE-INSERT-MULTI-001 INSERT ALL 无条件多表
CREATE TABLE t_ins_multi_001a (id INT PRIMARY KEY , val VARCHAR(50));
CREATE TABLE t_ins_multi_001b (id INT PRIMARY KEY , val VARCHAR(50));
INSERT ALL INTO t_ins_multi_001a (id , val) VALUES (1 , 'a') INTO t_ins_multi_001b (id , val) VALUES (1 , 'a') SELECT 1 FROM dual;
<预期结果 : 1 , 1>
SELECT (SELECT COUNT(*) FROM t_ins_multi_001a) , (SELECT COUNT(*) FROM t_ins_multi_001b) FROM dual;
DROP TABLE t_ins_multi_001a;
DROP TABLE t_ins_multi_001b;


!4 XG-TYPE-INSERT-MULTI-002 INSERT FIRST 条件路由
CREATE TABLE t_ins_multi_002a (id INT PRIMARY KEY , val VARCHAR(50));
CREATE TABLE t_ins_multi_002b (id INT PRIMARY KEY , val VARCHAR(50));
INSERT FIRST WHEN 1 = 1 THEN INTO t_ins_multi_002a (id , val) VALUES (1 , 'first') WHEN 1 = 0 THEN INTO t_ins_multi_002b (id , val) VALUES (1 , 'second') SELECT 1 FROM dual;
<预期结果 : 1 , 0>
SELECT (SELECT COUNT(*) FROM t_ins_multi_002a) , (SELECT COUNT(*) FROM t_ins_multi_002b) FROM dual;
DROP TABLE t_ins_multi_002a;
DROP TABLE t_ins_multi_002b;


!4 XG-TYPE-INSERT-MULTI-003 原子失败整语句回滚
CREATE TABLE t_ins_multi_003a (id INT PRIMARY KEY , val VARCHAR(50));
CREATE TABLE t_ins_multi_003b (id INT PRIMARY KEY , val VARCHAR(50));
INSERT ALL INTO t_ins_multi_003a (id , val) VALUES (1 , 'ok') INTO t_ins_multi_003b (id , val) VALUES (1 , 'ok')(1 , 'dup') SELECT 1 FROM dual;
<预期结果 : 0 , 0>
SELECT (SELECT COUNT(*) FROM t_ins_multi_003a) , (SELECT COUNT(*) FROM t_ins_multi_003b) FROM dual;
DROP TABLE t_ins_multi_003a;
DROP TABLE t_ins_multi_003b;