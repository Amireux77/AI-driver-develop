!4 XG-TYPE-INSERT-GAP-001 GR-001 等价 MERGE ON CONFLICT
CREATE TABLE t_ins_gap_001 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_src_gap_001 (id INT , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_gap_001 VALUES (1 , 'old' , 'ACTIVE');
INSERT INTO t_src_gap_001 VALUES (1 , 'new' , 'READY');
MERGE INTO t_ins_gap_001 t USING t_src_gap_001 s ON (t.id = s.id)
WHEN MATCHED THEN UPDATE SET t.val = s.val , t.status = s.status
WHEN NOT MATCHED THEN INSERT VALUES (s.id , s.val , s.status);
<预期结果 : new>
SELECT val FROM t_ins_gap_001 WHERE id = 1;
DROP TABLE t_src_gap_001;
DROP TABLE t_ins_gap_001;


!4 XG-TYPE-INSERT-GAP-002 GR-002 等价 MERGE ON DUPLICATE KEY UPDATE
CREATE TABLE t_ins_gap_002 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_src_gap_002 (id INT , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_gap_002 VALUES (1 , 'old' , 'ACTIVE');
INSERT INTO t_src_gap_002 VALUES (1 , 'new' , 'READY');
MERGE INTO t_ins_gap_002 t USING t_src_gap_002 s ON (t.id = s.id)
WHEN MATCHED THEN UPDATE SET t.val = s.val , t.status = s.status
WHEN NOT MATCHED THEN INSERT VALUES (s.id , s.val , s.status);
<预期结果 : new>
SELECT val FROM t_ins_gap_002 WHERE id = 1;
DROP TABLE t_src_gap_002;
DROP TABLE t_ins_gap_002;


!4 XG-TYPE-INSERT-GAP-003 GR-003 INSERT … SET 语法糖
CREATE TABLE t_ins_gap_003 (id INT PRIMARY KEY , val VARCHAR(50));
INSERT INTO t_ins_gap_003 SET id = 1 , val = 'ok';
<预期结果 : >
SELECT COUNT(*) FROM t_ins_gap_003;
DROP TABLE t_ins_gap_003;


!4 XG-TYPE-INSERT-GAP-004 GR-004 LOW_PRIORITY 不适用
CREATE TABLE t_ins_gap_004 (id INT PRIMARY KEY , val VARCHAR(50));
INSERT LOW_PRIORITY INTO t_ins_gap_004 VALUES (1 , 'ok');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_gap_004;
DROP TABLE t_ins_gap_004;


!4 XG-TYPE-INSERT-GAP-005 GR-007 OVERRIDING 列值灌数
CREATE TABLE t_ins_gap_005 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_gap_005 (id , val , status) OVERRIDING SYSTEM VALUE VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_gap_005;
DROP TABLE t_ins_gap_005;


!4 XG-TYPE-INSERT-GAP-006 GR-012 IGNORE 不得扩大为忽略所有错误
CREATE TABLE t_ins_gap_006 (id INT PRIMARY KEY , val INT);
INSERT IGNORE INTO t_ins_gap_006 VALUES (1 , 'bad');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_gap_006;
DROP TABLE t_ins_gap_006;


!4 XG-TYPE-INSERT-GAP-007 GR-014 客户端 RETURNING
CREATE TABLE t_ins_gap_007 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_gap_007 VALUES (1 , 'ok' , 'ACTIVE') RETURNING id , val INTO @out_id , @out_val;
<预期结果 : ok>
SELECT val FROM t_ins_gap_007 WHERE id = 1;
DROP TABLE t_ins_gap_007;


!4 XG-TYPE-INSERT-GAP-008 GR-010 COPY 等价 IMPORT SELECT
CREATE TABLE t_ins_gap_008_src (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_gap_008 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_gap_008_src VALUES (1 , 'ok' , 'ACTIVE');
INSERT INTO t_ins_gap_008_src VALUES (2 , 'ready' , 'INACTIVE');
IMPORT SELECT id , val , status FROM t_ins_gap_008_src INTO t_ins_gap_008;
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_gap_008;
DROP TABLE t_ins_gap_008_src;
DROP TABLE t_ins_gap_008;