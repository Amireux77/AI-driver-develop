!4 XG-TYPE-INSERT-BULK-001 GR-010 IMPORT SELECT 正确性
CREATE TABLE t_ins_bulk_001_src (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_bulk_001 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_bulk_001_src VALUES (1 , 'ok' , 'ACTIVE');
INSERT INTO t_ins_bulk_001_src VALUES (2 , 'ready' , 'INACTIVE');
IMPORT SELECT id , val , status FROM t_ins_bulk_001_src INTO t_ins_bulk_001;
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_bulk_001;
DROP TABLE t_ins_bulk_001_src;
DROP TABLE t_ins_bulk_001;


!4 XG-TYPE-INSERT-BULK-002 GR-010 IMPORT SELECT 性能基线
CREATE TABLE t_ins_bulk_002_src (id INT , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_bulk_002 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_bulk_002_src VALUES (1 , 'ok' , 'ACTIVE');
INSERT INTO t_ins_bulk_002_src VALUES (2 , 'ready' , 'INACTIVE');
IMPORT SELECT id , val , status FROM t_ins_bulk_002_src INTO t_ins_bulk_002;
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_bulk_002;
DROP TABLE t_ins_bulk_002_src;
DROP TABLE t_ins_bulk_002;
