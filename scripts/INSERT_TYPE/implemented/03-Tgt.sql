!4 XG-TYPE-INSERT-TGT-001 分区 INSERT 指定分区
CREATE TABLE t_ins_tgt_001 (id INT , val VARCHAR(50) , status VARCHAR(10)) PARTITION BY RANGE (id) (PARTITION p0 VALUES LESS THAN (10) , PARTITION p1 VALUES LESS THAN (MAXVALUE));
INSERT INTO t_ins_tgt_001 PARTITION (p1) VALUES (11 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_tgt_001;
DROP TABLE t_ins_tgt_001;


!4 XG-TYPE-INSERT-TGT-002 未指定分区按分区键路由
CREATE TABLE t_ins_tgt_002 (id INT , val VARCHAR(50) , status VARCHAR(10)) PARTITION BY RANGE (id) (PARTITION p0 VALUES LESS THAN (10) , PARTITION p1 VALUES LESS THAN (MAXVALUE));
INSERT INTO t_ins_tgt_002 VALUES (11 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_tgt_002;
DROP TABLE t_ins_tgt_002;


!4 XG-TYPE-INSERT-TGT-003 Link 表插入
CREATE TABLE t_ins_tgt_003 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_tgt_003@link VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_tgt_003;
DROP TABLE t_ins_tgt_003;


!4 XG-TYPE-INSERT-TGT-004 可更新视图 INSERT
CREATE TABLE t_ins_tgt_004_base (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE VIEW t_ins_tgt_004 AS SELECT id , val , status FROM t_ins_tgt_004_base;
INSERT INTO t_ins_tgt_004 VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_tgt_004_base;
DROP VIEW t_ins_tgt_004;
DROP TABLE t_ins_tgt_004_base;


!4 XG-TYPE-INSERT-TGT-005 LOB 列 INSERT
CREATE TABLE t_ins_tgt_005 (id INT PRIMARY KEY , content CLOB , status VARCHAR(10));
INSERT INTO t_ins_tgt_005 VALUES (1 , 'large content' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_tgt_005;
DROP TABLE t_ins_tgt_005;