!4 XG-TYPE-INSERT-VAL-001 单行 VALUES 全列插入
CREATE TABLE t_ins_val_001 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_001 VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : ok>
SELECT val FROM t_ins_val_001 WHERE id = 1;
DROP TABLE t_ins_val_001;


!4 XG-TYPE-INSERT-VAL-002 列清单插入
CREATE TABLE t_ins_val_002 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_002 (id , val) VALUES (1 , 'ok');
<预期结果 : ok>
SELECT val FROM t_ins_val_002 WHERE id = 1;
DROP TABLE t_ins_val_002;


!4 XG-TYPE-INSERT-VAL-003 DEFAULT 列级默认值
CREATE TABLE t_ins_val_003 (id INT PRIMARY KEY , val VARCHAR(50) DEFAULT 'DEFAULT' , status VARCHAR(10));
INSERT INTO t_ins_val_003 VALUES (1 , DEFAULT , 'ACTIVE');
<预期结果 : DEFAULT>
SELECT val FROM t_ins_val_003 WHERE id = 1;
DROP TABLE t_ins_val_003;


!4 XG-TYPE-INSERT-VAL-004 DEFAULT VALUES 整行默认
CREATE TABLE t_ins_val_004 (id INT PRIMARY KEY , val VARCHAR(50) DEFAULT 'DEF' , status VARCHAR(10) DEFAULT 'ACTIVE');
INSERT INTO t_ins_val_004 DEFAULT VALUES;
<预期结果 : DEF>
SELECT val FROM t_ins_val_004 WHERE id = 1;
DROP TABLE t_ins_val_004;


!4 XG-TYPE-INSERT-VAL-005 多行 VALUES 插入
CREATE TABLE t_ins_val_005 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_005 VALUES (1 , 'ok' , 'ACTIVE') , (2 , 'ready' , 'INACTIVE');
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_val_005;
DROP TABLE t_ins_val_005;


!4 XG-TYPE-INSERT-VAL-006 无逗号多行 VALUES
CREATE TABLE t_ins_val_006 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_006 VALUES (1 , 'ok' , 'ACTIVE')(2 , 'ready' , 'INACTIVE');
<预期结果 : 2>
SELECT COUNT(*) FROM t_ins_val_006;
DROP TABLE t_ins_val_006;


!4 XG-TYPE-INSERT-VAL-007 表达式插入
CREATE TABLE t_ins_val_007 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_007 VALUES (1 , LOWER('OK') , 'ACTIVE');
<预期结果 : ok>
SELECT val FROM t_ins_val_007 WHERE id = 1;
DROP TABLE t_ins_val_007;


!4 XG-TYPE-INSERT-VAL-008 事务回滚后不可见
CREATE TABLE t_ins_val_008 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
INSERT INTO t_ins_val_008 VALUES (1 , 'ok' , 'ACTIVE');
ROLLBACK;
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_val_008;
DROP TABLE t_ins_val_008;


!4 XG-TYPE-INSERT-VAL-009 列数与 VALUES 不一致
CREATE TABLE t_ins_val_009 (id INT PRIMARY KEY , val VARCHAR(50));
INSERT INTO t_ins_val_009 VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_val_009;
DROP TABLE t_ins_val_009;


!4 XG-TYPE-INSERT-VAL-010 类型不匹配插入
CREATE TABLE t_ins_val_010 (id INT PRIMARY KEY , val INT , status VARCHAR(10));
INSERT INTO t_ins_val_010 VALUES (1 , 'bad' , 'ACTIVE');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_val_010;
DROP TABLE t_ins_val_010;


!4 XG-TYPE-INSERT-VAL-011 违反 NOT NULL
CREATE TABLE t_ins_val_011 (id INT PRIMARY KEY , val VARCHAR(50) NOT NULL , status VARCHAR(10));
INSERT INTO t_ins_val_011 VALUES (1 , NULL , 'ACTIVE');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_val_011;
DROP TABLE t_ins_val_011;


!4 XG-TYPE-INSERT-VAL-012 违反 UNIQUE / PK
CREATE TABLE t_ins_val_012 (id INT PRIMARY KEY , val VARCHAR(50));
INSERT INTO t_ins_val_012 VALUES (1 , 'ok');
INSERT INTO t_ins_val_012 VALUES (1 , 'dup');
<预期结果 : 1>
SELECT COUNT(*) FROM t_ins_val_012;
DROP TABLE t_ins_val_012;


!4 XG-TYPE-INSERT-VAL-013 PREPARE 执行插入
CREATE TABLE t_ins_val_013 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
PREPARE stmt FROM 'INSERT INTO t_ins_val_013 VALUES (? , ? , ?)';
SET @id = 1;
SET @val = 'ok';
SET @status = 'ACTIVE';
EXECUTE stmt USING @id , @val , @status;
<预期结果 : ok>
SELECT val FROM t_ins_val_013 WHERE id = 1;
DROP TABLE t_ins_val_013;


!4 XG-TYPE-INSERT-VAL-014 会话变量插入
CREATE TABLE t_ins_val_014 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
SET @v = 'ok';
INSERT INTO t_ins_val_014 VALUES (1 , @v , 'ACTIVE');
<预期结果 : ok>
SELECT val FROM t_ins_val_014 WHERE id = 1;
DROP TABLE t_ins_val_014;


!4 XG-TYPE-INSERT-VAL-015 %ROWTYPE 记录变量插入
CREATE TABLE t_ins_val_015 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
DECLARE rec t_ins_val_015%ROWTYPE;
BEGIN
  rec.id := 1;
  rec.val := 'ok';
  rec.status := 'ACTIVE';
  INSERT INTO t_ins_val_015 VALUES (rec.id , rec.val , rec.status);
END;
/

<预期结果 : ok>
SELECT val FROM t_ins_val_015 WHERE id = 1;
DROP TABLE t_ins_val_015;


!4 XG-TYPE-INSERT-VAL-016 EXPLAIN 插入计划
CREATE TABLE t_ins_val_016 (id INT PRIMARY KEY , val VARCHAR(50) , status VARCHAR(10));
EXPLAIN INSERT INTO t_ins_val_016 VALUES (1 , 'ok' , 'ACTIVE');
<预期结果 : 0>
SELECT COUNT(*) FROM t_ins_val_016;
DROP TABLE t_ins_val_016;
