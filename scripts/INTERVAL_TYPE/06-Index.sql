!4 XG-TYPE-INTERVAL-INDEX-001 索引创建和验证
//创建表
CREATE TABLE t_table_001a (id INT PRIMARY KEY , c1 INTERVAL YEAR , c2 INTERVAL YEAR , status VARCHAR(10));
CREATE TABLE t_table_001b (id INT PRIMARY KEY , c1 INTERVAL MONTH , c2 INTERVAL MONTH , status VARCHAR(10));
CREATE TABLE t_table_001c (id INT PRIMARY KEY , c1 INTERVAL DAY , c2 INTERVAL DAY , status VARCHAR(10));
CREATE TABLE t_table_001d (id INT PRIMARY KEY , c1 INTERVAL HOUR , c2 INTERVAL HOUR , status VARCHAR(10));
CREATE TABLE t_table_001e (id INT PRIMARY KEY , c1 INTERVAL MINUTE , c2 INTERVAL MINUTE , status VARCHAR(10));
CREATE TABLE t_table_001f (id INT PRIMARY KEY , c1 INTERVAL SECOND , c2 INTERVAL SECOND , status VARCHAR(10));
CREATE TABLE t_table_001g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH , c2 INTERVAL YEAR TO MONTH , status VARCHAR(10));
CREATE TABLE t_table_001h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR , c2 INTERVAL DAY TO HOUR , status VARCHAR(10));
CREATE TABLE t_table_001i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE , c2 INTERVAL DAY TO MINUTE , status VARCHAR(10));
CREATE TABLE t_table_001j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND , c2 INTERVAL DAY TO SECOND , status VARCHAR(10));
CREATE TABLE t_table_001k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE , c2 INTERVAL HOUR TO MINUTE , status VARCHAR(10));
CREATE TABLE t_table_001l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND , c2 INTERVAL HOUR TO SECOND , status VARCHAR(10));
CREATE TABLE t_table_001m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND , c2 INTERVAL MINUTE TO SECOND , status VARCHAR(10));

//插入数据
INSERT INTO t_table_001a VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001b VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001c VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001d VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001e VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001f VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001g VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001h VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001i VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001j VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001k VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001l VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');
INSERT INTO t_table_001m VALUES (1 , '6' , '6' , 'ACTIVE') , (2 , '7' , '7' , 'ACTIVE') , (3 , '8' , '8' , 'CLOSED') , (4 , '9' , '9' , 'ACTIVE') , (5 , '10' , '10' , 'PENDING');

//创建单列索引
CREATE INDEX idx_interval_single_a ON t_table_001a(c1);
CREATE INDEX idx_interval_single_b ON t_table_001b(c1);
CREATE INDEX idx_interval_single_c ON t_table_001c(c1);
CREATE INDEX idx_interval_single_d ON t_table_001d(c1);
CREATE INDEX idx_interval_single_e ON t_table_001e(c1);
CREATE INDEX idx_interval_single_f ON t_table_001f(c1);
CREATE INDEX idx_interval_single_g ON t_table_001g(c1);
CREATE INDEX idx_interval_single_h ON t_table_001h(c1);
CREATE INDEX idx_interval_single_i ON t_table_001i(c1);
CREATE INDEX idx_interval_single_j ON t_table_001j(c1);
CREATE INDEX idx_interval_single_k ON t_table_001k(c1);
CREATE INDEX idx_interval_single_l ON t_table_001l(c1);
CREATE INDEX idx_interval_single_m ON t_table_001m(c1);

//创建多列索引
CREATE INDEX idx_interval_composite_a ON t_table_001a(c2 , status);
CREATE INDEX idx_interval_composite_b ON t_table_001b(c2 , status);
CREATE INDEX idx_interval_composite_c ON t_table_001c(c2 , status);
CREATE INDEX idx_interval_composite_d ON t_table_001d(c2 , status);
CREATE INDEX idx_interval_composite_e ON t_table_001e(c2 , status);
CREATE INDEX idx_interval_composite_f ON t_table_001f(c2 , status);
CREATE INDEX idx_interval_composite_g ON t_table_001g(c2 , status);
CREATE INDEX idx_interval_composite_h ON t_table_001h(c2 , status);
CREATE INDEX idx_interval_composite_i ON t_table_001i(c2 , status);
CREATE INDEX idx_interval_composite_j ON t_table_001j(c2 , status);
CREATE INDEX idx_interval_composite_k ON t_table_001k(c2 , status);
CREATE INDEX idx_interval_composite_l ON t_table_001l(c2 , status);
CREATE INDEX idx_interval_composite_m ON t_table_001m(c2 , status);

//查询单列索引内容
<预期结果 : 3 | 8-0 | 8-0 | CLOSED>
SELECT * FROM t_table_001a WHERE c1 = '8-0'; 
<预期结果 : 3 | 0-8 | 0-8 | CLOSED>
SELECT * FROM t_table_001b WHERE c1 = '0-8'; 
<预期结果 : 3 | 8 0:00:00 | 8 0:00:00 | CLOSED>
SELECT * FROM t_table_001c WHERE c1 = '8 0:00:00'; 
<预期结果 : 3 | 8:00:00 | 8:00:00 | CLOSED>
SELECT * FROM t_table_001d WHERE c1 = '8:00:00'; 
<预期结果 : 3 | 0:08:00 | 0:08:00 | CLOSED>
SELECT * FROM t_table_001e WHERE c1 = '0:08:00'; 
<预期结果 : 3 | 0:00:08 | 0:00:08 | CLOSED>
SELECT * FROM t_table_001f WHERE c1 = '0:00:08'; 
<预期结果 : 3 | 0-8 | 0-8 | CLOSED>
SELECT * FROM t_table_001g WHERE c1 = '0-8'; 
<预期结果 : 3 | 8:00:00 | 8:00:00 | CLOSED>
SELECT * FROM t_table_001h WHERE c1 = '8:00:00'; 
<预期结果 : 3 | 0:08:00 | 0:08:00 | CLOSED>
SELECT * FROM t_table_001i WHERE c1 = '0:08:00'; 
<预期结果 : 3 | 0:00:08 | 0:00:08 | CLOSED>
SELECT * FROM t_table_001j WHERE c1 = '0:00:08'; 
<预期结果 : 3 | 0:08:00 | 0:08:00 | CLOSED>
SELECT * FROM t_table_001k WHERE c1 = '0:08:00'; 
<预期结果 : 3 | 0:00:08 | 0:00:08 | CLOSED>
SELECT * FROM t_table_001l WHERE c1 = '0:00:08'; 
<预期结果 : 3 | 0:00:08 | 0:00:08 | CLOSED>
SELECT * FROM t_table_001m WHERE c1 = '0:00:08'; 

//查询多列索引内容
<预期结果 : 2>
SELECT id FROM t_table_001a WHERE c2 = '7-0' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001b WHERE c2 = '0-7' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001c WHERE c2 = '7 0:00:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001d WHERE c2 = '7:00:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001e WHERE c2 = '0:07:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001f WHERE c2 = '0:00:07' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001g WHERE c2 = '0-7' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001h WHERE c2 = '7:00:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001i WHERE c2 = '0:07:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001j WHERE c2 = '0:00:07' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001k WHERE c2 = '0:07:00' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001l WHERE c2 = '0:00:07' AND status = 'ACTIVE';
<预期结果 : 2>
SELECT id FROM t_table_001m WHERE c2 = '0:00:07' AND status = 'ACTIVE';

//查询多列索引间内容
<预期结果 : 10-0 | PENDING>
SELECT c1 , status FROM t_table_001a WHERE c2 = '10-0';
<预期结果 : 0-10 | PENDING>
SELECT c1 , status FROM t_table_001b WHERE c2 = '0-10';
<预期结果 : 10 0:00:00 | PENDING>
SELECT c1 , status FROM t_table_001c WHERE c2 = '10 0:00:00';
<预期结果 : 10:00:00 | PENDING>
SELECT c1 , status FROM t_table_001d WHERE c2 = '10:00:00';
<预期结果 : 0:10:00 | PENDING>
SELECT c1 , status FROM t_table_001e WHERE c2 = '0:10:00';
<预期结果 : 0:00:10 | PENDING>
SELECT c1 , status FROM t_table_001f WHERE c2 = '0:00:10';
<预期结果 : 0-10 | PENDING>
SELECT c1 , status FROM t_table_001g WHERE c2 = '0-10';
<预期结果 : 10:00:00 | PENDING>
SELECT c1 , status FROM t_table_001h WHERE c2 = '10:00:00';
<预期结果 : 0:10:00 | PENDING>
SELECT c1 , status FROM t_table_001i WHERE c2 = '0:10:00';
<预期结果 : 0:00:10 | PENDING>
SELECT c1 , status FROM t_table_001j WHERE c2 = '0:00:10';
<预期结果 : 0:10:00 | PENDING>
SELECT c1 , status FROM t_table_001k WHERE c2 = '0:10:00';
<预期结果 : 0:00:10 | PENDING>
SELECT c1 , status FROM t_table_001l WHERE c2 = '0:00:10';
<预期结果 : 0:00:10 | PENDING>
SELECT c1 , status FROM t_table_001m WHERE c2 = '0:00:10';

!4 XG-TYPE-INTERVAL-INDEX-002 执行计划验证

//INTERVAL YEAR 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001a idx_interval_single_a)*/ * FROM t_table_001a WHERE c1 = '8-0';
//INTERVAL MONTH 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001b idx_interval_single_b)*/ * FROM t_table_001b WHERE c1 = '0-8';
//INTERVAL DAY 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001c idx_interval_single_c)*/ * FROM t_table_001c WHERE c1 = '8 0:00:00';
//INTERVAL HOUR 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001d idx_interval_single_d)*/ * FROM t_table_001d WHERE c1 = '8:00:00';
//INTERVAL MINUTE 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001e idx_interval_single_e)*/ * FROM t_table_001e WHERE c1 = '0:08:00';
//INTERVAL SECOND 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001f idx_interval_single_f)*/ * FROM t_table_001f WHERE c1 = '0:00:08';
//INTERVAL YEAR TO MONTH 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001g idx_interval_single_g)*/ * FROM t_table_001g WHERE c1 = '0-8';
//INTERVAL DAY TO HOUR 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001h idx_interval_single_h)*/ * FROM t_table_001h WHERE c1 = '8:00:00';
//INTERVAL DAY TO MINUTE 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001i idx_interval_single_i)*/ * FROM t_table_001i WHERE c1 = '0:08:00';
//INTERVAL DAY TO SECOND 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001j idx_interval_single_j)*/ * FROM t_table_001j WHERE c1 = '0:00:08';
//INTERVAL HOUR TO MINUTE 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001k idx_interval_single_k)*/ * FROM t_table_001k WHERE c1 = '0:08:00';
//INTERVAL HOUR TO SECOND 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001l idx_interval_single_l)*/ * FROM t_table_001l WHERE c1 = '0:00:08';
//INTERVAL MINUTE TO SECOND 执行计划验证(单列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001m idx_interval_single_m)*/ * FROM t_table_001m WHERE c1 = '0:00:08';

//INTERVAL YEAR 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001a idx_interval_composite_a)*/ * FROM t_table_001a WHERE c2 = '7-0' AND status = 'ACTIVE';
//INTERVAL MONTH 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001b idx_interval_composite_b)*/ * FROM t_table_001b WHERE c2 = '0-7' AND status = 'ACTIVE';
//INTERVAL DAY 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001c idx_interval_composite_c)*/ * FROM t_table_001c WHERE c2 = '7 0:00:00' AND status = 'ACTIVE';
//INTERVAL HOUR 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001d idx_interval_composite_d)*/ * FROM t_table_001d WHERE c2 = '7:00:00' AND status = 'ACTIVE';
//INTERVAL MINUTE 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001e idx_interval_composite_e)*/ * FROM t_table_001e WHERE c2 = '0:07:00' AND status = 'ACTIVE';
//INTERVAL SECOND 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001f idx_interval_composite_f)*/ * FROM t_table_001f WHERE c2 = '0:00:07' AND status = 'ACTIVE';
//INTERVAL YEAR TO MONTH 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001g idx_interval_composite_g)*/ * FROM t_table_001g WHERE c2 = '0-7' AND status = 'ACTIVE';
//INTERVAL DAY TO HOUR 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001h idx_interval_composite_h)*/ * FROM t_table_001h WHERE c2 = '7:00:00' AND status = 'ACTIVE';
//INTERVAL DAY TO MINUTE 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001i idx_interval_composite_i)*/ * FROM t_table_001i WHERE c2 = '0:07:00' AND status = 'ACTIVE';
//INTERVAL DAY TO SECOND 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001j idx_interval_composite_j)*/ * FROM t_table_001j WHERE c2 = '0:00:07' AND status = 'ACTIVE';
//INTERVAL HOUR TO MINUTE 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001k idx_interval_composite_k)*/ * FROM t_table_001k WHERE c2 = '0:07:00' AND status = 'ACTIVE';
//INTERVAL HOUR TO SECOND 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001l idx_interval_composite_l)*/ * FROM t_table_001l WHERE c2 = '0:00:07' AND status = 'ACTIVE';
//INTERVAL MINUTE TO SECOND 执行计划验证(多列)
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001m idx_interval_composite_m)*/ * FROM t_table_001m WHERE c2 = '0:00:07' AND status = 'ACTIVE';

//插入空数据
INSERT INTO t_table_001a VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001b VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001c VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001d VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001e VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001f VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001g VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001h VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001i VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001j VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001k VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001l VALUES (6 , NULL , NULL , NULL);
INSERT INTO t_table_001m VALUES (6 , NULL , NULL , NULL);

//INTERVAL YEAR 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001a idx_interval_single_a)*/ * FROM t_table_001a WHERE c1 IS NULL;
//INTERVAL MONTH 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001b idx_interval_single_b)*/ * FROM t_table_001b WHERE c1 IS NULL;
//INTERVAL DAY 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001c idx_interval_single_c)*/ * FROM t_table_001c WHERE c1 IS NULL;
//INTERVAL HOUR 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001d idx_interval_single_d)*/ * FROM t_table_001d WHERE c1 IS NULL;
//INTERVAL MINUTE 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001e idx_interval_single_e)*/ * FROM t_table_001e WHERE c1 IS NULL;
//INTERVAL SECOND 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001f idx_interval_single_f)*/ * FROM t_table_001f WHERE c1 IS NULL;
//INTERVAL YEAR TO MONTH 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001g idx_interval_single_g)*/ * FROM t_table_001g WHERE c1 IS NULL;
//INTERVAL DAY TO HOUR 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001h idx_interval_single_h)*/ * FROM t_table_001h WHERE c1 IS NULL;
//INTERVAL DAY TO MINUTE 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001i idx_interval_single_i)*/ * FROM t_table_001i WHERE c1 IS NULL;
//INTERVAL DAY TO SECOND 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001j idx_interval_single_j)*/ * FROM t_table_001j WHERE c1 IS NULL;
//INTERVAL HOUR TO MINUTE 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001k idx_interval_single_k)*/ * FROM t_table_001k WHERE c1 IS NULL;
//INTERVAL HOUR TO SECOND 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001l idx_interval_single_l)*/ * FROM t_table_001l WHERE c1 IS NULL;
//INTERVAL MINUTE TO SECOND 全盘扫描执行计划验证
EXPLAIN VERBOSE SELECT /*+ INDEX(t_table_001m idx_interval_single_m)*/ * FROM t_table_001m WHERE c1 IS NULL;

//删除索引
DROP INDEX t_table_001a.idx_interval_single_a;
DROP INDEX t_table_001b.idx_interval_single_b;
DROP INDEX t_table_001c.idx_interval_single_c;
DROP INDEX t_table_001d.idx_interval_single_d;
DROP INDEX t_table_001e.idx_interval_single_e;
DROP INDEX t_table_001f.idx_interval_single_f;
DROP INDEX t_table_001g.idx_interval_single_g;
DROP INDEX t_table_001h.idx_interval_single_h;
DROP INDEX t_table_001i.idx_interval_single_i;
DROP INDEX t_table_001j.idx_interval_single_j;
DROP INDEX t_table_001k.idx_interval_single_k;
DROP INDEX t_table_001l.idx_interval_single_l;
DROP INDEX t_table_001m.idx_interval_single_m;
DROP INDEX t_table_001a.idx_interval_composite_a;
DROP INDEX t_table_001b.idx_interval_composite_b;
DROP INDEX t_table_001c.idx_interval_composite_c;
DROP INDEX t_table_001d.idx_interval_composite_d;
DROP INDEX t_table_001e.idx_interval_composite_e;
DROP INDEX t_table_001f.idx_interval_composite_f;
DROP INDEX t_table_001g.idx_interval_composite_g;
DROP INDEX t_table_001h.idx_interval_composite_h;
DROP INDEX t_table_001i.idx_interval_composite_i;
DROP INDEX t_table_001j.idx_interval_composite_j;
DROP INDEX t_table_001k.idx_interval_composite_k;
DROP INDEX t_table_001l.idx_interval_composite_l;
DROP INDEX t_table_001m.idx_interval_composite_m;

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