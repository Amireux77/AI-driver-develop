!4 XG-TYPE-INSERT-SEL-001 主路径 INSERT … SELECT
CREATE TABLE t_src_sel_001 (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_sel_001 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_src_sel_001 VALUES (1 , 'ok' , 'ACTIVE');
INSERT INTO t_src_sel_001 VALUES (2 , 'hello' , 'READY');
INSERT INTO t_ins_sel_001 (id , val , status) SELECT id , val , status FROM t_src_sel_001;
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_sel_001;
DROP TABLE t_src_sel_001;
DROP TABLE t_ins_sel_001;


!4 XG-TYPE-INSERT-SEL-002 源查询 0 行
CREATE TABLE t_src_sel_002 (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_sel_002 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_sel_002 (id , val , status) SELECT id , val , status FROM t_src_sel_002 WHERE 1 = 0;
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_sel_002;
DROP TABLE t_src_sel_002;
DROP TABLE t_ins_sel_002;


!4 XG-TYPE-INSERT-SEL-003 跨模式 INSERT … SELECT
CREATE SCHEMA s_src_sel_003;
CREATE SCHEMA s_tgt_sel_003;
CREATE TABLE s_src_sel_003.t_src_sel_003 (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE s_tgt_sel_003.t_ins_sel_003 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO s_src_sel_003.t_src_sel_003 VALUES (1 , 'ok' , 'ACTIVE');
INSERT INTO s_tgt_sel_003.t_ins_sel_003 (id , val , status) SELECT id , val , status FROM s_src_sel_003.t_src_sel_003;
<预期结果 : 1>
SELECT COUNT(*) FROM s_tgt_sel_003.t_ins_sel_003;
DROP TABLE s_src_sel_003.t_src_sel_003;
DROP TABLE s_tgt_sel_003.t_ins_sel_003;
DROP SCHEMA s_src_sel_003;
DROP SCHEMA s_tgt_sel_003;


!4 XG-TYPE-INSERT-SEL-004 CTE INSERT … SELECT
CREATE TABLE t_src_sel_004 (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_sel_004 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_src_sel_004 VALUES (1 , 'ok' , 'ACTIVE');
WITH cte AS (SELECT id , val , status FROM t_src_sel_004)
INSERT INTO t_ins_sel_004 (id , val , status) SELECT id , val , status FROM cte;
/
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_sel_004;
DROP TABLE t_src_sel_004;
DROP TABLE t_ins_sel_004;


!4 XG-TYPE-INSERT-SEL-005 源列类型不兼容
CREATE TABLE t_src_sel_005 (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_sel_005 (id INT PRIMARY KEY , val INT , status VARCHAR(10));
INSERT INTO t_src_sel_005 VALUES (1 , 'bad' , 'ACTIVE');
INSERT INTO t_ins_sel_005 (id , val , status) SELECT id , val , status FROM t_src_sel_005;
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_sel_005;
DROP TABLE t_src_sel_005;
DROP TABLE t_ins_sel_005;


!4 XG-TYPE-INSERT-SEL-006 CREATE TABLE AS SELECT
CREATE TABLE t_src_sel_006 (id INT , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_src_sel_006 VALUES (1 , 'ok' , 'ACTIVE');
CREATE TABLE t_ins_sel_006 AS SELECT id , val , status FROM t_src_sel_006;
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_sel_006;
DROP TABLE t_src_sel_006;
DROP TABLE t_ins_sel_006;