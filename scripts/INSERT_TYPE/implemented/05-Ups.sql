!4 XG-TYPE-INSERT-UPS-001 MERGE 新行插入
CREATE TABLE t_ins_ups_001 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_src_ups_001 (id INT , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_src_ups_001 VALUES (1 , 'ok' , 'ACTIVE');
MERGE INTO t_ins_ups_001 t USING t_src_ups_001 s ON (t.id = s.id) WHEN NOT MATCHED THEN INSERT VALUES (s.id , s.val , s.status);
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_ups_001;
DROP TABLE t_src_ups_001;
DROP TABLE t_ins_ups_001;


!4 XG-TYPE-INSERT-UPS-002 MERGE 更新与插入
CREATE TABLE t_ins_ups_002 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_src_ups_002 (id INT , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_ups_002 VALUES (1 , 'old' , 'ACTIVE');
INSERT INTO t_src_ups_002 VALUES (1 , 'new' , 'READY');
MERGE INTO t_ins_ups_002 t USING t_src_ups_002 s ON (t.id = s.id)
WHEN MATCHED THEN UPDATE SET t.val = s.val , t.status = s.status
WHEN NOT MATCHED THEN INSERT VALUES (s.id , s.val , s.status);
<预期结果 : new>
SELECT val FROM t_ins_ups_002 WHERE id = 1;
DROP TABLE t_src_ups_002;
DROP TABLE t_ins_ups_002;


!4 XG-TYPE-INSERT-UPS-003 REPLACE 冲突删后插
CREATE TABLE t_ins_ups_003 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_ups_003 VALUES (1 , 'old' , 'ACTIVE');
REPLACE INTO t_ins_ups_003 VALUES (1 , 'new' , 'READY');
<预期结果 : new>
SELECT val FROM t_ins_ups_003 WHERE id = 1;
DROP TABLE t_ins_ups_003;


!4 XG-TYPE-INSERT-UPS-004 IGNORE 唯一冲突跳过
CREATE TABLE t_ins_ups_004 (id INT PRIMARY KEY , val VARCHAR(50));
INSERT INTO t_ins_ups_004 VALUES (1 , 'ok');
INSERT IGNORE INTO t_ins_ups_004 VALUES (1 , 'dup');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_ups_004;
DROP TABLE t_ins_ups_004;


!4 XG-TYPE-INSERT-UPS-005 IGNORE 类型错误不忽略
CREATE TABLE t_ins_ups_005 (id INT PRIMARY KEY , val INT);
INSERT IGNORE INTO t_ins_ups_005 VALUES (1 , 'bad');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_ups_005;
DROP TABLE t_ins_ups_005;


!4 XG-TYPE-INSERT-UPS-008 INSERT 触发行级触发器
CREATE TABLE t_ins_ups_008 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
CREATE TABLE t_ins_ups_008_log (id INT , old_status VARCHAR(10));
CREATE TRIGGER trg_ins_ups_008 AFTER INSERT ON t_ins_ups_008 FOR EACH ROW
BEGIN
  INSERT INTO t_ins_ups_008_log VALUES (:NEW.id , :NEW.status);
END;
/

INSERT INTO t_ins_ups_008 VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_ups_008_log;
DROP TRIGGER trg_ins_ups_008;
DROP TABLE t_ins_ups_008_log;
DROP TABLE t_ins_ups_008;