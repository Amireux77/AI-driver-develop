!4 XG-TYPE-INTERVAL-SYNONYM-001 基础同义词声明与访问
//创建表
CREATE TABLE t_table_001a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_001b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_001c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_001d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_001e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_001f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_001g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_001h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_001i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_001j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_001k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_001l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_001m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_access_a FOR t_table_001a;
CREATE OR REPLACE SYNONYM s_interval_access_b FOR t_table_001b;
CREATE OR REPLACE SYNONYM s_interval_access_c FOR t_table_001c;
CREATE OR REPLACE SYNONYM s_interval_access_d FOR t_table_001d;
CREATE OR REPLACE SYNONYM s_interval_access_e FOR t_table_001e;
CREATE OR REPLACE SYNONYM s_interval_access_f FOR t_table_001f;
CREATE OR REPLACE SYNONYM s_interval_access_g FOR t_table_001g;
CREATE OR REPLACE SYNONYM s_interval_access_h FOR t_table_001h;
CREATE OR REPLACE SYNONYM s_interval_access_i FOR t_table_001i;
CREATE OR REPLACE SYNONYM s_interval_access_j FOR t_table_001j;
CREATE OR REPLACE SYNONYM s_interval_access_k FOR t_table_001k;
CREATE OR REPLACE SYNONYM s_interval_access_l FOR t_table_001l;
CREATE OR REPLACE SYNONYM s_interval_access_m FOR t_table_001m;

//插入数据
INSERT INTO s_interval_access_a VALUES (1 , '9');
INSERT INTO s_interval_access_b VALUES (1 , '9');
INSERT INTO s_interval_access_c VALUES (1 , '9');
INSERT INTO s_interval_access_d VALUES (1 , '9');
INSERT INTO s_interval_access_e VALUES (1 , '9');
INSERT INTO s_interval_access_f VALUES (1 , '9');
INSERT INTO s_interval_access_g VALUES (1 , '9');
INSERT INTO s_interval_access_h VALUES (1 , '9');
INSERT INTO s_interval_access_i VALUES (1 , '9');
INSERT INTO s_interval_access_j VALUES (1 , '9');
INSERT INTO s_interval_access_k VALUES (1 , '9');
INSERT INTO s_interval_access_l VALUES (1 , '9');
INSERT INTO s_interval_access_m VALUES (1 , '9');

//查询结果
<预期结果 : 9-0>
SELECT c1 FROM s_interval_access_a WHERE id = 1;
<预期结果 : 0-9>
SELECT c1 FROM s_interval_access_b WHERE id = 1;
<预期结果 : 9 0:00:00>
SELECT c1 FROM s_interval_access_c WHERE id = 1;
<预期结果 : 9:00:00>
SELECT c1 FROM s_interval_access_d WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM s_interval_access_e WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM s_interval_access_f WHERE id = 1;
<预期结果 : 0-9>
SELECT c1 FROM s_interval_access_g WHERE id = 1;
<预期结果 : 9:00:00>
SELECT c1 FROM s_interval_access_h WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM s_interval_access_i WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM s_interval_access_j WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM s_interval_access_k WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM s_interval_access_l WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM s_interval_access_m WHERE id = 1;

//查询结果
<预期结果 : 1>
SELECT id FROM s_interval_access_a WHERE c1 = '9-0';
<预期结果 : 1>
SELECT id FROM s_interval_access_b WHERE c1 = '0-9';
<预期结果 : 1>
SELECT id FROM s_interval_access_c WHERE c1 = '9 0:00:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_d WHERE c1 = '9:00:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_e WHERE c1 = '0:09:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_f WHERE c1 = '0:00:09';
<预期结果 : 1>
SELECT id FROM s_interval_access_g WHERE c1 = '0-9';
<预期结果 : 1>
SELECT id FROM s_interval_access_h WHERE c1 = '9:00:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_i WHERE c1 = '0:09:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_j WHERE c1 = '0:00:09';
<预期结果 : 1>
SELECT id FROM s_interval_access_k WHERE c1 = '0:09:00';
<预期结果 : 1>
SELECT id FROM s_interval_access_l WHERE c1 = '0:00:09';
<预期结果 : 1>
SELECT id FROM s_interval_access_m WHERE c1 = '0:00:09';

//删除同义词
DROP SYNONYM s_interval_access_a;
DROP SYNONYM s_interval_access_b;
DROP SYNONYM s_interval_access_c;
DROP SYNONYM s_interval_access_d;
DROP SYNONYM s_interval_access_e;
DROP SYNONYM s_interval_access_f;
DROP SYNONYM s_interval_access_g;
DROP SYNONYM s_interval_access_h;
DROP SYNONYM s_interval_access_i;
DROP SYNONYM s_interval_access_j;
DROP SYNONYM s_interval_access_k;
DROP SYNONYM s_interval_access_l;
DROP SYNONYM s_interval_access_m;

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

!4 XG-TYPE-INTERVAL-SYNONYM-002 通过同义词验证唯一性约束
//创建表
CREATE TABLE t_table_002a (c1 INTERVAL YEAR PRIMARY KEY);
CREATE TABLE t_table_002b (c1 INTERVAL MONTH PRIMARY KEY);
CREATE TABLE t_table_002c (c1 INTERVAL DAY PRIMARY KEY);
CREATE TABLE t_table_002d (c1 INTERVAL HOUR PRIMARY KEY);
CREATE TABLE t_table_002e (c1 INTERVAL MINUTE PRIMARY KEY);
CREATE TABLE t_table_002f (c1 INTERVAL SECOND PRIMARY KEY);
CREATE TABLE t_table_002g (c1 INTERVAL YEAR TO MONTH PRIMARY KEY);
CREATE TABLE t_table_002h (c1 INTERVAL DAY TO HOUR PRIMARY KEY);
CREATE TABLE t_table_002i (c1 INTERVAL DAY TO MINUTE PRIMARY KEY);
CREATE TABLE t_table_002j (c1 INTERVAL DAY TO SECOND PRIMARY KEY);
CREATE TABLE t_table_002k (c1 INTERVAL HOUR TO MINUTE PRIMARY KEY);
CREATE TABLE t_table_002l (c1 INTERVAL HOUR TO SECOND PRIMARY KEY);
CREATE TABLE t_table_002m (c1 INTERVAL MINUTE TO SECOND PRIMARY KEY);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_limit_a FOR t_table_002a;
CREATE OR REPLACE SYNONYM s_interval_limit_b FOR t_table_002b;
CREATE OR REPLACE SYNONYM s_interval_limit_c FOR t_table_002c;
CREATE OR REPLACE SYNONYM s_interval_limit_d FOR t_table_002d;
CREATE OR REPLACE SYNONYM s_interval_limit_e FOR t_table_002e;
CREATE OR REPLACE SYNONYM s_interval_limit_f FOR t_table_002f;
CREATE OR REPLACE SYNONYM s_interval_limit_g FOR t_table_002g;
CREATE OR REPLACE SYNONYM s_interval_limit_h FOR t_table_002h;
CREATE OR REPLACE SYNONYM s_interval_limit_i FOR t_table_002i;
CREATE OR REPLACE SYNONYM s_interval_limit_j FOR t_table_002j;
CREATE OR REPLACE SYNONYM s_interval_limit_k FOR t_table_002k;
CREATE OR REPLACE SYNONYM s_interval_limit_l FOR t_table_002l;
CREATE OR REPLACE SYNONYM s_interval_limit_m FOR t_table_002m;

//插入数据
INSERT INTO s_interval_limit_a VALUES ('9');
INSERT INTO s_interval_limit_b VALUES ('9');
INSERT INTO s_interval_limit_c VALUES ('9');
INSERT INTO s_interval_limit_d VALUES ('9');
INSERT INTO s_interval_limit_e VALUES ('9');
INSERT INTO s_interval_limit_f VALUES ('9');
INSERT INTO s_interval_limit_g VALUES ('9');
INSERT INTO s_interval_limit_h VALUES ('9');
INSERT INTO s_interval_limit_i VALUES ('9');
INSERT INTO s_interval_limit_j VALUES ('9');
INSERT INTO s_interval_limit_k VALUES ('9');
INSERT INTO s_interval_limit_l VALUES ('9');
INSERT INTO s_interval_limit_m VALUES ('9');

//再次插入数据
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_a VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_b VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_c VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_d VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_e VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_f VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_g VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_h VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_i VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_j VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_k VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_l VALUES ('9');
<预期结果 : 插入失败>
INSERT INTO s_interval_limit_m VALUES ('9');

//插入新数据
INSERT INTO s_interval_limit_a VALUES ('8');
INSERT INTO s_interval_limit_b VALUES ('8');
INSERT INTO s_interval_limit_c VALUES ('8');
INSERT INTO s_interval_limit_d VALUES ('8');
INSERT INTO s_interval_limit_e VALUES ('8');
INSERT INTO s_interval_limit_f VALUES ('8');
INSERT INTO s_interval_limit_g VALUES ('8');
INSERT INTO s_interval_limit_h VALUES ('8');
INSERT INTO s_interval_limit_i VALUES ('8');
INSERT INTO s_interval_limit_j VALUES ('8');
INSERT INTO s_interval_limit_k VALUES ('8');
INSERT INTO s_interval_limit_l VALUES ('8');
INSERT INTO s_interval_limit_m VALUES ('8');

//查询结果
<预期结果 : 9-0 / 8-0>
SELECT * FROM s_interval_limit_a;
<预期结果 : 0-9 / 0-8>
SELECT * FROM s_interval_limit_b;
<预期结果 : 9 0:00:00 / 8 0:00:00>
SELECT * FROM s_interval_limit_c;
<预期结果 : 9:00:00 / 8:00:00>
SELECT * FROM s_interval_limit_d;
<预期结果 : 0:09:00 / 0:08:00>
SELECT * FROM s_interval_limit_e;
<预期结果 : 0:00:09 / 0:00:08>
SELECT * FROM s_interval_limit_f;
<预期结果 : 0-9 / 0-8>
SELECT * FROM s_interval_limit_g;
<预期结果 : 9:00:00 / 8:00:00>
SELECT * FROM s_interval_limit_h;
<预期结果 : 0:09:00 / 0:08:00>
SELECT * FROM s_interval_limit_i;
<预期结果 : 0:00:09 / 0:00:08>
SELECT * FROM s_interval_limit_j;
<预期结果 : 0:09:00 / 0:08:00>
SELECT * FROM s_interval_limit_k;
<预期结果 : 0:00:09 / 0:00:08>
SELECT * FROM s_interval_limit_l;
<预期结果 : 0:00:09 / 0:00:08>
SELECT * FROM s_interval_limit_m;

//删除同义词
DROP SYNONYM s_interval_limit_a;
DROP SYNONYM s_interval_limit_b;
DROP SYNONYM s_interval_limit_c;
DROP SYNONYM s_interval_limit_d;
DROP SYNONYM s_interval_limit_e;
DROP SYNONYM s_interval_limit_f;
DROP SYNONYM s_interval_limit_g;
DROP SYNONYM s_interval_limit_h;
DROP SYNONYM s_interval_limit_i;
DROP SYNONYM s_interval_limit_j;
DROP SYNONYM s_interval_limit_k;
DROP SYNONYM s_interval_limit_l;
DROP SYNONYM s_interval_limit_m;

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

!4 XG-TYPE-INTERVAL-SYNONYM-003 通过同义词验证非空约束
//创建表
CREATE TABLE t_table_003a (id INT , c1 INTERVAL YEAR NOT NULL);
CREATE TABLE t_table_003b (id INT , c1 INTERVAL MONTH NOT NULL);
CREATE TABLE t_table_003c (id INT , c1 INTERVAL DAY NOT NULL);
CREATE TABLE t_table_003d (id INT , c1 INTERVAL HOUR NOT NULL);
CREATE TABLE t_table_003e (id INT , c1 INTERVAL MINUTE NOT NULL);
CREATE TABLE t_table_003f (id INT , c1 INTERVAL SECOND NOT NULL);
CREATE TABLE t_table_003g (id INT , c1 INTERVAL YEAR TO MONTH NOT NULL);
CREATE TABLE t_table_003h (id INT , c1 INTERVAL DAY TO HOUR NOT NULL);
CREATE TABLE t_table_003i (id INT , c1 INTERVAL DAY TO MINUTE NOT NULL);
CREATE TABLE t_table_003j (id INT , c1 INTERVAL DAY TO SECOND NOT NULL);
CREATE TABLE t_table_003k (id INT , c1 INTERVAL HOUR TO MINUTE NOT NULL);
CREATE TABLE t_table_003l (id INT , c1 INTERVAL HOUR TO SECOND NOT NULL);
CREATE TABLE t_table_003m (id INT , c1 INTERVAL MINUTE TO SECOND NOT NULL);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_nn_a FOR t_table_003a;
CREATE OR REPLACE SYNONYM s_interval_nn_b FOR t_table_003b;
CREATE OR REPLACE SYNONYM s_interval_nn_c FOR t_table_003c;
CREATE OR REPLACE SYNONYM s_interval_nn_d FOR t_table_003d;
CREATE OR REPLACE SYNONYM s_interval_nn_e FOR t_table_003e;
CREATE OR REPLACE SYNONYM s_interval_nn_f FOR t_table_003f;
CREATE OR REPLACE SYNONYM s_interval_nn_g FOR t_table_003g;
CREATE OR REPLACE SYNONYM s_interval_nn_h FOR t_table_003h;
CREATE OR REPLACE SYNONYM s_interval_nn_i FOR t_table_003i;
CREATE OR REPLACE SYNONYM s_interval_nn_j FOR t_table_003j;
CREATE OR REPLACE SYNONYM s_interval_nn_k FOR t_table_003k;
CREATE OR REPLACE SYNONYM s_interval_nn_l FOR t_table_003l;
CREATE OR REPLACE SYNONYM s_interval_nn_m FOR t_table_003m;

//插入 NULL 数据
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_a VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_b VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_c VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_d VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_e VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_f VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_g VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_h VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_i VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_j VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_k VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_l VALUES (1 , NULL);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_m VALUES (1 , NULL);

//插入默认值
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_a(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_b(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_c(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_d(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_e(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_f(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_g(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_h(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_i(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_j(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_k(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_l(id) VALUES (2);
<预期结果 : 插入失败>
INSERT INTO s_interval_nn_m(id) VALUES (2);

//插入非空数据
INSERT INTO s_interval_nn_a VALUES (3 , '9');
INSERT INTO s_interval_nn_b VALUES (3 , '9');
INSERT INTO s_interval_nn_c VALUES (3 , '9');
INSERT INTO s_interval_nn_d VALUES (3 , '9');
INSERT INTO s_interval_nn_e VALUES (3 , '9');
INSERT INTO s_interval_nn_f VALUES (3 , '9');
INSERT INTO s_interval_nn_g VALUES (3 , '9');
INSERT INTO s_interval_nn_h VALUES (3 , '9');
INSERT INTO s_interval_nn_i VALUES (3 , '9');
INSERT INTO s_interval_nn_j VALUES (3 , '9');
INSERT INTO s_interval_nn_k VALUES (3 , '9');
INSERT INTO s_interval_nn_l VALUES (3 , '9');
INSERT INTO s_interval_nn_m VALUES (3 , '9');

//查询结果
<预期结果 : 3 | 9-0>
SELECT * FROM s_interval_nn_a;
<预期结果 : 3 | 0-9>
SELECT * FROM s_interval_nn_b;
<预期结果 : 3 | 9 0:00:00>
SELECT * FROM s_interval_nn_c;
<预期结果 : 3 | 9:00:00>
SELECT * FROM s_interval_nn_d;
<预期结果 : 3 | 0:09:00>
SELECT * FROM s_interval_nn_e;
<预期结果 : 3 | 0:00:09>
SELECT * FROM s_interval_nn_f;
<预期结果 : 3 | 0-9>
SELECT * FROM s_interval_nn_g;
<预期结果 : 3 | 9:00:00>
SELECT * FROM s_interval_nn_h;
<预期结果 : 3 | 0:09:00>
SELECT * FROM s_interval_nn_i;
<预期结果 : 3 | 0:00:09>
SELECT * FROM s_interval_nn_j;
<预期结果 : 3 | 0:09:00>
SELECT * FROM s_interval_nn_k;
<预期结果 : 3 | 0:00:09>
SELECT * FROM s_interval_nn_l;
<预期结果 : 3 | 0:00:09>
SELECT * FROM s_interval_nn_m;

//删除同义词
DROP SYNONYM s_interval_nn_a;
DROP SYNONYM s_interval_nn_b;
DROP SYNONYM s_interval_nn_c;
DROP SYNONYM s_interval_nn_d;
DROP SYNONYM s_interval_nn_e;
DROP SYNONYM s_interval_nn_f;
DROP SYNONYM s_interval_nn_g;
DROP SYNONYM s_interval_nn_h;
DROP SYNONYM s_interval_nn_i;
DROP SYNONYM s_interval_nn_j;
DROP SYNONYM s_interval_nn_k;
DROP SYNONYM s_interval_nn_l;

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

!4 XG-TYPE-INTERVAL-SYNONYM-004 同义词与索引联动测试
//创建表
CREATE TABLE t_table_004a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_004b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_004c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_004d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_004e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_004f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_004g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_004h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_004i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_004j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_004k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_004l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_004m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建索引
CREATE INDEX idx_interval_a ON t_table_004a(c1);
CREATE INDEX idx_interval_b ON t_table_004b(c1);
CREATE INDEX idx_interval_c ON t_table_004c(c1);
CREATE INDEX idx_interval_d ON t_table_004d(c1);
CREATE INDEX idx_interval_e ON t_table_004e(c1);
CREATE INDEX idx_interval_f ON t_table_004f(c1);
CREATE INDEX idx_interval_g ON t_table_004g(c1);
CREATE INDEX idx_interval_h ON t_table_004h(c1);
CREATE INDEX idx_interval_i ON t_table_004i(c1);
CREATE INDEX idx_interval_j ON t_table_004j(c1);
CREATE INDEX idx_interval_k ON t_table_004k(c1);
CREATE INDEX idx_interval_l ON t_table_004l(c1);
CREATE INDEX idx_interval_m ON t_table_004m(c1);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_idx_a FOR t_table_004a;
CREATE OR REPLACE SYNONYM s_interval_idx_b FOR t_table_004b;
CREATE OR REPLACE SYNONYM s_interval_idx_c FOR t_table_004c;
CREATE OR REPLACE SYNONYM s_interval_idx_d FOR t_table_004d;
CREATE OR REPLACE SYNONYM s_interval_idx_e FOR t_table_004e;
CREATE OR REPLACE SYNONYM s_interval_idx_f FOR t_table_004f;
CREATE OR REPLACE SYNONYM s_interval_idx_g FOR t_table_004g;
CREATE OR REPLACE SYNONYM s_interval_idx_h FOR t_table_004h;
CREATE OR REPLACE SYNONYM s_interval_idx_i FOR t_table_004i;
CREATE OR REPLACE SYNONYM s_interval_idx_j FOR t_table_004j;
CREATE OR REPLACE SYNONYM s_interval_idx_k FOR t_table_004k;
CREATE OR REPLACE SYNONYM s_interval_idx_l FOR t_table_004l;
CREATE OR REPLACE SYNONYM s_interval_idx_m FOR t_table_004m;

//插入数据
INSERT INTO s_interval_idx_a VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_b VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_c VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_d VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_e VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_f VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_g VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_h VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_i VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_j VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_k VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_l VALUES (1 , '9') , (2 , '8') , (3 , '7');
INSERT INTO s_interval_idx_m VALUES (1 , '9') , (2 , '8') , (3 , '7');

//执行计划
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_a WHERE c1 = '8-0';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_b WHERE c1 = '0-8';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_c WHERE c1 = '8 0:00:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_d WHERE c1 = '8:00:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_e WHERE c1 = '0:08:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_f WHERE c1 = '0:00:08';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_g WHERE c1 = '0-8';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_h WHERE c1 = '8:00:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_i WHERE c1 = '0:08:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_j WHERE c1 = '0:00:08';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_k WHERE c1 = '0:08:00';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_l WHERE c1 = '0:00:08';
EXPLAIN VERBOSE SELECT * FROM s_interval_idx_m WHERE c1 = '0:00:08';

//删除同义词
DROP SYNONYM s_interval_idx_a;
DROP SYNONYM s_interval_idx_b;
DROP SYNONYM s_interval_idx_c;
DROP SYNONYM s_interval_idx_d;
DROP SYNONYM s_interval_idx_e;
DROP SYNONYM s_interval_idx_f;
DROP SYNONYM s_interval_idx_g;
DROP SYNONYM s_interval_idx_h;
DROP SYNONYM s_interval_idx_i;
DROP SYNONYM s_interval_idx_j;
DROP SYNONYM s_interval_idx_k;
DROP SYNONYM s_interval_idx_l;
DROP SYNONYM s_interval_idx_m;

//删除表
DROP TABLE t_table_004a;
DROP TABLE t_table_004b;
DROP TABLE t_table_004c;
DROP TABLE t_table_004d;
DROP TABLE t_table_004e;
DROP TABLE t_table_004f;
DROP TABLE t_table_004g;
DROP TABLE t_table_004h;
DROP TABLE t_table_004i;
DROP TABLE t_table_004j;
DROP TABLE t_table_004k;
DROP TABLE t_table_004l;
DROP TABLE t_table_004m;

!4 XG-TYPE-INTERVAL-SYNONYM-005 基表失效测试
//创建表
CREATE TABLE t_table_005a (iD INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_005b (iD INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_005c (iD INT , c1 INTERVAL DAY);
CREATE TABLE t_table_005d (iD INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_005e (iD INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_005f (iD INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_005g (iD INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_005h (iD INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_005i (iD INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_005j (iD INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_005k (iD INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_005l (iD INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_005m (iD INT , c1 INTERVAL MINUTE TO SECOND);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_base_a FOR t_table_005a;
CREATE OR REPLACE SYNONYM s_interval_base_b FOR t_table_005b;
CREATE OR REPLACE SYNONYM s_interval_base_c FOR t_table_005c;
CREATE OR REPLACE SYNONYM s_interval_base_d FOR t_table_005d;
CREATE OR REPLACE SYNONYM s_interval_base_e FOR t_table_005e;
CREATE OR REPLACE SYNONYM s_interval_base_f FOR t_table_005f;
CREATE OR REPLACE SYNONYM s_interval_base_g FOR t_table_005g;
CREATE OR REPLACE SYNONYM s_interval_base_h FOR t_table_005h;
CREATE OR REPLACE SYNONYM s_interval_base_i FOR t_table_005i;
CREATE OR REPLACE SYNONYM s_interval_base_j FOR t_table_005j;
CREATE OR REPLACE SYNONYM s_interval_base_k FOR t_table_005k;
CREATE OR REPLACE SYNONYM s_interval_base_l FOR t_table_005l;
CREATE OR REPLACE SYNONYM s_interval_base_m FOR t_table_005m;

//插入数据
INSERT INTO s_interval_base_a VALUES (1 , '9');
INSERT INTO s_interval_base_b VALUES (1 , '9');
INSERT INTO s_interval_base_c VALUES (1 , '9');
INSERT INTO s_interval_base_d VALUES (1 , '9');
INSERT INTO s_interval_base_e VALUES (1 , '9');
INSERT INTO s_interval_base_f VALUES (1 , '9');
INSERT INTO s_interval_base_g VALUES (1 , '9');
INSERT INTO s_interval_base_h VALUES (1 , '9');
INSERT INTO s_interval_base_i VALUES (1 , '9');
INSERT INTO s_interval_base_j VALUES (1 , '9');
INSERT INTO s_interval_base_k VALUES (1 , '9');
INSERT INTO s_interval_base_l VALUES (1 , '9');
INSERT INTO s_interval_base_m VALUES (1 , '9');

//查询结果
<预期结果 : 1 | 9-0>
SELECT * FROM s_interval_base_a;
<预期结果 : 1 | 0-9>
SELECT * FROM s_interval_base_b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM s_interval_base_c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM s_interval_base_d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM s_interval_base_e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM s_interval_base_f;
<预期结果 : 1 | 0-9>
SELECT * FROM s_interval_base_g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM s_interval_base_h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM s_interval_base_i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM s_interval_base_j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM s_interval_base_k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM s_interval_base_l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM s_interval_base_m;

//删除表
DROP TABLE t_table_005a;
DROP TABLE t_table_005b;
DROP TABLE t_table_005c;
DROP TABLE t_table_005d;
DROP TABLE t_table_005e;
DROP TABLE t_table_005f;
DROP TABLE t_table_005g;
DROP TABLE t_table_005h;
DROP TABLE t_table_005i;
DROP TABLE t_table_005j;
DROP TABLE t_table_005k;
DROP TABLE t_table_005l;
DROP TABLE t_table_005m;

//查询结果
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_a;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_b;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_c;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_d;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_e;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_f;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_g;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_h;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_i;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_j;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_k;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_l;
<预期结果 : 查询失败 , 同义词指向的对象不存在>
SELECT * FROM s_interval_base_m;

!4 XG-TYPE-INTERVAL-SYNONYM-006 INTERVAL udt 类型同义词测试
//创建自定义对象 OBJECT 类型
CREATE OR REPLACE TYPE interval_OBJECT_a AS OBJECT(c1 INTERVAL YEAR);
CREATE OR REPLACE TYPE interval_OBJECT_b AS OBJECT(c1 INTERVAL MONTH);
CREATE OR REPLACE TYPE interval_OBJECT_c AS OBJECT(c1 INTERVAL DAY);
CREATE OR REPLACE TYPE interval_OBJECT_d AS OBJECT(c1 INTERVAL HOUR);
CREATE OR REPLACE TYPE interval_OBJECT_e AS OBJECT(c1 INTERVAL MINUTE);
CREATE OR REPLACE TYPE interval_OBJECT_f AS OBJECT(c1 INTERVAL SECOND);
CREATE OR REPLACE TYPE interval_OBJECT_g AS OBJECT(c1 INTERVAL YEAR TO MONTH);
CREATE OR REPLACE TYPE interval_OBJECT_h AS OBJECT(c1 INTERVAL DAY TO HOUR);
CREATE OR REPLACE TYPE interval_OBJECT_i AS OBJECT(c1 INTERVAL DAY TO MINUTE);
CREATE OR REPLACE TYPE interval_OBJECT_j AS OBJECT(c1 INTERVAL DAY TO SECOND);
CREATE OR REPLACE TYPE interval_OBJECT_k AS OBJECT(c1 INTERVAL HOUR TO MINUTE);
CREATE OR REPLACE TYPE interval_OBJECT_l AS OBJECT(c1 INTERVAL HOUR TO SECOND);
CREATE OR REPLACE TYPE interval_OBJECT_m AS OBJECT(c1 INTERVAL MINUTE TO SECOND);

//创建表
CREATE TABLE t_table_006a (id INT , lenth interval_OBJECT_a);
CREATE TABLE t_table_006b (id INT , lenth interval_OBJECT_b);
CREATE TABLE t_table_006c (id INT , lenth interval_OBJECT_c);
CREATE TABLE t_table_006d (id INT , lenth interval_OBJECT_d);
CREATE TABLE t_table_006e (id INT , lenth interval_OBJECT_e);
CREATE TABLE t_table_006f (id INT , lenth interval_OBJECT_f);
CREATE TABLE t_table_006g (id INT , lenth interval_OBJECT_g);
CREATE TABLE t_table_006h (id INT , lenth interval_OBJECT_h);
CREATE TABLE t_table_006i (id INT , lenth interval_OBJECT_i);
CREATE TABLE t_table_006j (id INT , lenth interval_OBJECT_j);
CREATE TABLE t_table_006k (id INT , lenth interval_OBJECT_k);
CREATE TABLE t_table_006l (id INT , lenth interval_OBJECT_l);
CREATE TABLE t_table_006m (id INT , lenth interval_OBJECT_m);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_udt_obj_a FOR t_table_006a;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_b FOR t_table_006b;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_c FOR t_table_006c;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_d FOR t_table_006d;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_e FOR t_table_006e;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_f FOR t_table_006f;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_g FOR t_table_006g;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_h FOR t_table_006h;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_i FOR t_table_006i;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_j FOR t_table_006j;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_k FOR t_table_006k;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_l FOR t_table_006l;
CREATE OR REPLACE SYNONYM s_interval_udt_obj_m FOR t_table_006m;

INSERT INTO t_table_006a VALUES (1 , interval_OBJECT_a('9'));
INSERT INTO t_table_006b VALUES (1 , interval_OBJECT_b('9'));
INSERT INTO t_table_006c VALUES (1 , interval_OBJECT_c('9'));
INSERT INTO t_table_006d VALUES (1 , interval_OBJECT_d('9'));
INSERT INTO t_table_006e VALUES (1 , interval_OBJECT_e('9'));
INSERT INTO t_table_006f VALUES (1 , interval_OBJECT_f('9'));
INSERT INTO t_table_006g VALUES (1 , interval_OBJECT_g('9'));
INSERT INTO t_table_006h VALUES (1 , interval_OBJECT_h('9'));
INSERT INTO t_table_006i VALUES (1 , interval_OBJECT_i('9'));
INSERT INTO t_table_006j VALUES (1 , interval_OBJECT_j('9'));
INSERT INTO t_table_006k VALUES (1 , interval_OBJECT_k('9'));
INSERT INTO t_table_006l VALUES (1 , interval_OBJECT_l('9'));
INSERT INTO t_table_006m VALUES (1 , interval_OBJECT_m('9'));

//查询内容
<预期结果 : 9-0>
SELECT t.lenth.c1 FROM s_interval_udt_obj_a t;
<预期结果 : 0-9>
SELECT t.lenth.c1 FROM s_interval_udt_obj_b t;
<预期结果 : 9 0:00:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_c t;
<预期结果 : 9:00:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_d t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_e t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM s_interval_udt_obj_f t;
<预期结果 : 0-9>
SELECT t.lenth.c1 FROM s_interval_udt_obj_g t;
<预期结果 : 9:00:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_h t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_i t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM s_interval_udt_obj_j t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM s_interval_udt_obj_k t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM s_interval_udt_obj_l t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM s_interval_udt_obj_m t;

//删除同义词
DROP SYNONYM s_interval_udt_obj_a;
DROP SYNONYM s_interval_udt_obj_b;
DROP SYNONYM s_interval_udt_obj_c;
DROP SYNONYM s_interval_udt_obj_d;
DROP SYNONYM s_interval_udt_obj_e;
DROP SYNONYM s_interval_udt_obj_f;
DROP SYNONYM s_interval_udt_obj_g;
DROP SYNONYM s_interval_udt_obj_h;
DROP SYNONYM s_interval_udt_obj_i;
DROP SYNONYM s_interval_udt_obj_j;
DROP SYNONYM s_interval_udt_obj_k;
DROP SYNONYM s_interval_udt_obj_l;
DROP SYNONYM s_interval_udt_obj_m;

//删除表
DROP TABLE t_table_006a;
DROP TABLE t_table_006b;
DROP TABLE t_table_006c;
DROP TABLE t_table_006d;
DROP TABLE t_table_006e;
DROP TABLE t_table_006f;
DROP TABLE t_table_006g;
DROP TABLE t_table_006h;
DROP TABLE t_table_006i;
DROP TABLE t_table_006j;
DROP TABLE t_table_006k;
DROP TABLE t_table_006l;
DROP TABLE t_table_006m;

//删除自定义类型
DROP TYPE interval_OBJECT_a;
DROP TYPE interval_OBJECT_b;
DROP TYPE interval_OBJECT_c;
DROP TYPE interval_OBJECT_d;
DROP TYPE interval_OBJECT_e;
DROP TYPE interval_OBJECT_f;
DROP TYPE interval_OBJECT_g;
DROP TYPE interval_OBJECT_h;
DROP TYPE interval_OBJECT_i;
DROP TYPE interval_OBJECT_j;
DROP TYPE interval_OBJECT_k;
DROP TYPE interval_OBJECT_l;
DROP TYPE interval_OBJECT_m;

//创建自定义对象 VARRAY 类型
CREATE OR REPLACE TYPE interval_VARRAY_a AS VARRAY(3) OF INTERVAL YEAR;
CREATE OR REPLACE TYPE interval_VARRAY_b AS VARRAY(3) OF INTERVAL MONTH;
CREATE OR REPLACE TYPE interval_VARRAY_c AS VARRAY(3) OF INTERVAL DAY;
CREATE OR REPLACE TYPE interval_VARRAY_d AS VARRAY(3) OF INTERVAL HOUR;
CREATE OR REPLACE TYPE interval_VARRAY_e AS VARRAY(3) OF INTERVAL MINUTE;
CREATE OR REPLACE TYPE interval_VARRAY_f AS VARRAY(3) OF INTERVAL SECOND;
CREATE OR REPLACE TYPE interval_VARRAY_g AS VARRAY(3) OF INTERVAL YEAR TO MONTH;
CREATE OR REPLACE TYPE interval_VARRAY_h AS VARRAY(3) OF INTERVAL DAY TO HOUR;
CREATE OR REPLACE TYPE interval_VARRAY_i AS VARRAY(3) OF INTERVAL DAY TO MINUTE;
CREATE OR REPLACE TYPE interval_VARRAY_j AS VARRAY(3) OF INTERVAL DAY TO SECOND;
CREATE OR REPLACE TYPE interval_VARRAY_k AS VARRAY(3) OF INTERVAL HOUR TO MINUTE;
CREATE OR REPLACE TYPE interval_VARRAY_l AS VARRAY(3) OF INTERVAL HOUR TO SECOND;
CREATE OR REPLACE TYPE interval_VARRAY_m AS VARRAY(3) OF INTERVAL MINUTE TO SECOND;

//创建表
CREATE TABLE t_table_006a_1 (id INT , v_array interval_VARRAY_a);
CREATE TABLE t_table_006b_1 (id INT , v_array interval_VARRAY_b);
CREATE TABLE t_table_006c_1 (id INT , v_array interval_VARRAY_c);
CREATE TABLE t_table_006d_1 (id INT , v_array interval_VARRAY_d);
CREATE TABLE t_table_006e_1 (id INT , v_array interval_VARRAY_e);
CREATE TABLE t_table_006f_1 (id INT , v_array interval_VARRAY_f);
CREATE TABLE t_table_006g_1 (id INT , v_array interval_VARRAY_g);
CREATE TABLE t_table_006h_1 (id INT , v_array interval_VARRAY_h);
CREATE TABLE t_table_006i_1 (id INT , v_array interval_VARRAY_i);
CREATE TABLE t_table_006j_1 (id INT , v_array interval_VARRAY_j);
CREATE TABLE t_table_006k_1 (id INT , v_array interval_VARRAY_k);
CREATE TABLE t_table_006l_1 (id INT , v_array interval_VARRAY_l);
CREATE TABLE t_table_006m_1 (id INT , v_array interval_VARRAY_m);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_udt_varray_a FOR t_table_006a_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_b FOR t_table_006b_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_c FOR t_table_006c_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_d FOR t_table_006d_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_e FOR t_table_006e_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_f FOR t_table_006f_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_g FOR t_table_006g_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_h FOR t_table_006h_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_i FOR t_table_006i_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_j FOR t_table_006j_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_k FOR t_table_006k_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_l FOR t_table_006l_1;
CREATE OR REPLACE SYNONYM s_interval_udt_varray_m FOR t_table_006m_1;

//插入数据
INSERT INTO t_table_006a_1 VALUES (1 , interval_VARRAY_a('9'));
INSERT INTO t_table_006b_1 VALUES (1 , interval_VARRAY_b('9'));
INSERT INTO t_table_006c_1 VALUES (1 , interval_VARRAY_c('9'));
INSERT INTO t_table_006d_1 VALUES (1 , interval_VARRAY_d('9'));
INSERT INTO t_table_006e_1 VALUES (1 , interval_VARRAY_e('9'));
INSERT INTO t_table_006f_1 VALUES (1 , interval_VARRAY_f('9'));
INSERT INTO t_table_006g_1 VALUES (1 , interval_VARRAY_g('9'));
INSERT INTO t_table_006h_1 VALUES (1 , interval_VARRAY_h('9'));
INSERT INTO t_table_006i_1 VALUES (1 , interval_VARRAY_i('9'));
INSERT INTO t_table_006j_1 VALUES (1 , interval_VARRAY_j('9'));
INSERT INTO t_table_006k_1 VALUES (1 , interval_VARRAY_k('9'));
INSERT INTO t_table_006l_1 VALUES (1 , interval_VARRAY_l('9'));
INSERT INTO t_table_006m_1 VALUES (1 , interval_VARRAY_m('9'));

//查询内容
<预期结果 : [9-0]>
SELECT v_array FROM s_interval_udt_varray_a t;
<预期结果 : [0-9]>
SELECT v_array FROM s_interval_udt_varray_b t;
<预期结果 : [9 0:00:00]>
SELECT v_array FROM s_interval_udt_varray_c t;
<预期结果 : [9:00:00]>
SELECT v_array FROM s_interval_udt_varray_d t;
<预期结果 : [0:09:00]>
SELECT v_array FROM s_interval_udt_varray_e t;
<预期结果 : [0:00:09]>
SELECT v_array FROM s_interval_udt_varray_f t;
<预期结果 : [0-9]>
SELECT v_array FROM s_interval_udt_varray_g t;
<预期结果 : [9:00:00]>
SELECT v_array FROM s_interval_udt_varray_h t;
<预期结果 : [0:09:00]>
SELECT v_array FROM s_interval_udt_varray_i t;
<预期结果 : [0:00:09]>
SELECT v_array FROM s_interval_udt_varray_j t;
<预期结果 : [0:09:00]>
SELECT v_array FROM s_interval_udt_varray_k t;
<预期结果 : [0:00:09]>
SELECT v_array FROM s_interval_udt_varray_l t;
<预期结果 : [0:00:09]>
SELECT v_array FROM s_interval_udt_varray_m t;

//删除同义词
DROP SYNONYM s_interval_udt_varray_a;
DROP SYNONYM s_interval_udt_varray_b;
DROP SYNONYM s_interval_udt_varray_c;
DROP SYNONYM s_interval_udt_varray_d;
DROP SYNONYM s_interval_udt_varray_e;
DROP SYNONYM s_interval_udt_varray_f;
DROP SYNONYM s_interval_udt_varray_g;
DROP SYNONYM s_interval_udt_varray_h;
DROP SYNONYM s_interval_udt_varray_i;
DROP SYNONYM s_interval_udt_varray_j;
DROP SYNONYM s_interval_udt_varray_k;
DROP SYNONYM s_interval_udt_varray_l;
DROP SYNONYM s_interval_udt_varray_m;

//删除表
DROP TABLE t_table_006a_1;
DROP TABLE t_table_006b_1;
DROP TABLE t_table_006c_1;
DROP TABLE t_table_006d_1;
DROP TABLE t_table_006e_1;
DROP TABLE t_table_006f_1;
DROP TABLE t_table_006g_1;
DROP TABLE t_table_006h_1;
DROP TABLE t_table_006i_1;
DROP TABLE t_table_006j_1;
DROP TABLE t_table_006k_1;
DROP TABLE t_table_006l_1;
DROP TABLE t_table_006m_1;

//删除自定义类型
DROP TYPE interval_VARRAY_a;
DROP TYPE interval_VARRAY_b;
DROP TYPE interval_VARRAY_c;
DROP TYPE interval_VARRAY_d;
DROP TYPE interval_VARRAY_e;
DROP TYPE interval_VARRAY_f;
DROP TYPE interval_VARRAY_g;
DROP TYPE interval_VARRAY_h;
DROP TYPE interval_VARRAY_i;
DROP TYPE interval_VARRAY_j;
DROP TYPE interval_VARRAY_k;
DROP TYPE interval_VARRAY_l;
DROP TYPE interval_VARRAY_m;

//创建自定义对象 TABLE 类型
CREATE OR REPLACE TYPE interval_TABLE_a AS TABLE OF INTERVAL YEAR;
CREATE OR REPLACE TYPE interval_TABLE_b AS TABLE OF INTERVAL MONTH;
CREATE OR REPLACE TYPE interval_TABLE_c AS TABLE OF INTERVAL DAY;
CREATE OR REPLACE TYPE interval_TABLE_d AS TABLE OF INTERVAL HOUR;
CREATE OR REPLACE TYPE interval_TABLE_e AS TABLE OF INTERVAL MINUTE;
CREATE OR REPLACE TYPE interval_TABLE_f AS TABLE OF INTERVAL SECOND;
CREATE OR REPLACE TYPE interval_TABLE_g AS TABLE OF INTERVAL YEAR TO MONTH;
CREATE OR REPLACE TYPE interval_TABLE_h AS TABLE OF INTERVAL DAY TO HOUR;
CREATE OR REPLACE TYPE interval_TABLE_i AS TABLE OF INTERVAL DAY TO MINUTE;
CREATE OR REPLACE TYPE interval_TABLE_j AS TABLE OF INTERVAL DAY TO SECOND;
CREATE OR REPLACE TYPE interval_TABLE_k AS TABLE OF INTERVAL HOUR TO MINUTE;
CREATE OR REPLACE TYPE interval_TABLE_l AS TABLE OF INTERVAL HOUR TO SECOND;
CREATE OR REPLACE TYPE interval_TABLE_m AS TABLE OF INTERVAL MINUTE TO SECOND;

//创建表
CREATE TABLE t_table_006a_2 (id INT , tab interval_TABLE_a);
CREATE TABLE t_table_006b_2 (id INT , tab interval_TABLE_b);
CREATE TABLE t_table_006c_2 (id INT , tab interval_TABLE_c);
CREATE TABLE t_table_006d_2 (id INT , tab interval_TABLE_d);
CREATE TABLE t_table_006e_2 (id INT , tab interval_TABLE_e);
CREATE TABLE t_table_006f_2 (id INT , tab interval_TABLE_f);
CREATE TABLE t_table_006g_2 (id INT , tab interval_TABLE_g);
CREATE TABLE t_table_006h_2 (id INT , tab interval_TABLE_h);
CREATE TABLE t_table_006i_2 (id INT , tab interval_TABLE_i);
CREATE TABLE t_table_006j_2 (id INT , tab interval_TABLE_j);
CREATE TABLE t_table_006k_2 (id INT , tab interval_TABLE_k);
CREATE TABLE t_table_006l_2 (id INT , tab interval_TABLE_l);
CREATE TABLE t_table_006m_2 (id INT , tab interval_TABLE_m);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_udt_tab_a FOR t_table_006a_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_b FOR t_table_006b_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_c FOR t_table_006c_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_d FOR t_table_006d_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_e FOR t_table_006e_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_f FOR t_table_006f_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_g FOR t_table_006g_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_h FOR t_table_006h_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_i FOR t_table_006i_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_j FOR t_table_006j_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_k FOR t_table_006k_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_l FOR t_table_006l_2;
CREATE OR REPLACE SYNONYM s_interval_udt_tab_m FOR t_table_006m_2;

//插入数据
INSERT INTO t_table_006a_2 VALUES (1 , interval_TABLE_a('9'));
INSERT INTO t_table_006b_2 VALUES (1 , interval_TABLE_b('9'));
INSERT INTO t_table_006c_2 VALUES (1 , interval_TABLE_c('9'));
INSERT INTO t_table_006d_2 VALUES (1 , interval_TABLE_d('9'));
INSERT INTO t_table_006e_2 VALUES (1 , interval_TABLE_e('9'));
INSERT INTO t_table_006f_2 VALUES (1 , interval_TABLE_f('9'));
INSERT INTO t_table_006g_2 VALUES (1 , interval_TABLE_g('9'));
INSERT INTO t_table_006h_2 VALUES (1 , interval_TABLE_h('9'));
INSERT INTO t_table_006i_2 VALUES (1 , interval_TABLE_i('9'));
INSERT INTO t_table_006j_2 VALUES (1 , interval_TABLE_j('9'));
INSERT INTO t_table_006k_2 VALUES (1 , interval_TABLE_k('9'));
INSERT INTO t_table_006l_2 VALUES (1 , interval_TABLE_l('9'));
INSERT INTO t_table_006m_2 VALUES (1 , interval_TABLE_m('9'));

//查询内容
<预期结果 : [9-0]>
SELECT tab FROM s_interval_udt_tab_a t;
<预期结果 : [0-9]>
SELECT tab FROM s_interval_udt_tab_b t;
<预期结果 : [9 0:00:00]>
SELECT tab FROM s_interval_udt_tab_c t;
<预期结果 : [9:00:00]>
SELECT tab FROM s_interval_udt_tab_d t;
<预期结果 : [0:09:00]>
SELECT tab FROM s_interval_udt_tab_e t;
<预期结果 : [0:00:09]>
SELECT tab FROM s_interval_udt_tab_f t;
<预期结果 : [0-9]>
SELECT tab FROM s_interval_udt_tab_g t;
<预期结果 : [9:00:00]>
SELECT tab FROM s_interval_udt_tab_h t;
<预期结果 : [0:09:00]>
SELECT tab FROM s_interval_udt_tab_i t;
<预期结果 : [0:00:09]>
SELECT tab FROM s_interval_udt_tab_j t;
<预期结果 : [0:09:00]>
SELECT tab FROM s_interval_udt_tab_k t;
<预期结果 : [0:00:09]>
SELECT tab FROM s_interval_udt_tab_l t;
<预期结果 : [0:00:09]>
SELECT tab FROM s_interval_udt_tab_m t;

//删除同义词
DROP SYNONYM s_interval_udt_tab_a;
DROP SYNONYM s_interval_udt_tab_b;
DROP SYNONYM s_interval_udt_tab_c;
DROP SYNONYM s_interval_udt_tab_d;
DROP SYNONYM s_interval_udt_tab_e;
DROP SYNONYM s_interval_udt_tab_f;
DROP SYNONYM s_interval_udt_tab_g;
DROP SYNONYM s_interval_udt_tab_h;
DROP SYNONYM s_interval_udt_tab_i;
DROP SYNONYM s_interval_udt_tab_j;
DROP SYNONYM s_interval_udt_tab_k;
DROP SYNONYM s_interval_udt_tab_l;
DROP SYNONYM s_interval_udt_tab_m;

//删除表
DROP TABLE t_table_006a_2;
DROP TABLE t_table_006b_2;
DROP TABLE t_table_006c_2;
DROP TABLE t_table_006d_2;
DROP TABLE t_table_006e_2;
DROP TABLE t_table_006f_2;
DROP TABLE t_table_006g_2;
DROP TABLE t_table_006h_2;
DROP TABLE t_table_006i_2;
DROP TABLE t_table_006j_2;
DROP TABLE t_table_006k_2;
DROP TABLE t_table_006l_2;
DROP TABLE t_table_006m_2;

//删除自定义类型
DROP TYPE interval_TABLE_a;
DROP TYPE interval_TABLE_b;
DROP TYPE interval_TABLE_c;
DROP TYPE interval_TABLE_d;
DROP TYPE interval_TABLE_e;
DROP TYPE interval_TABLE_f;
DROP TYPE interval_TABLE_g;
DROP TYPE interval_TABLE_h;
DROP TYPE interval_TABLE_i;
DROP TYPE interval_TABLE_j;
DROP TYPE interval_TABLE_k;
DROP TYPE interval_TABLE_l;
DROP TYPE interval_TABLE_m;

//创建表类型为 INTERVAL[]
CREATE TABLE t_table_006a_3 (id INT , c1 INTERVAL YEAR[]);
CREATE TABLE t_table_006b_3 (id INT , c1 INTERVAL MONTH[]);
CREATE TABLE t_table_006c_3 (id INT , c1 INTERVAL DAY[]);
CREATE TABLE t_table_006d_3 (id INT , c1 INTERVAL HOUR[]);
CREATE TABLE t_table_006e_3 (id INT , c1 INTERVAL MINUTE[]);
CREATE TABLE t_table_006f_3 (id INT , c1 INTERVAL SECOND[]);
CREATE TABLE t_table_006g_3 (id INT , c1 INTERVAL YEAR TO MONTH[]);
CREATE TABLE t_table_006h_3 (id INT , c1 INTERVAL DAY TO HOUR[]);
CREATE TABLE t_table_006i_3 (id INT , c1 INTERVAL DAY TO MINUTE[]);
CREATE TABLE t_table_006j_3 (id INT , c1 INTERVAL DAY TO SECOND[]);
CREATE TABLE t_table_006k_3 (id INT , c1 INTERVAL HOUR TO MINUTE[]);
CREATE TABLE t_table_006l_3 (id INT , c1 INTERVAL HOUR TO SECOND[]);
CREATE TABLE t_table_006m_3 (id INT , c1 INTERVAL MINUTE TO SECOND[]);

//创建同义词
CREATE OR REPLACE SYNONYM s_interval_udt_arr_a FOR t_table_006a_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_b FOR t_table_006b_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_c FOR t_table_006c_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_d FOR t_table_006d_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_e FOR t_table_006e_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_f FOR t_table_006f_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_g FOR t_table_006g_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_h FOR t_table_006h_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_i FOR t_table_006i_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_j FOR t_table_006j_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_k FOR t_table_006k_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_l FOR t_table_006l_3;
CREATE OR REPLACE SYNONYM s_interval_udt_arr_m FOR t_table_006m_3;

//插入数据
INSERT INTO t_table_006a_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006b_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006c_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006d_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006e_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006f_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006g_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006h_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006i_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006j_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006k_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006l_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_006m_3 VALUES (1 , ARRAY['9']);

<预期结果 : {9-0}>
SELECT c1 FROM s_interval_udt_arr_a t;
<预期结果 : {0-9}>
SELECT c1 FROM s_interval_udt_arr_b t;
<预期结果 : {9 0:00:00}>
SELECT c1 FROM s_interval_udt_arr_c t;
<预期结果 : {9:00:00}>
SELECT c1 FROM s_interval_udt_arr_d t;
<预期结果 : {0:09:00}>
SELECT c1 FROM s_interval_udt_arr_e t;
<预期结果 : {0:00:09}>
SELECT c1 FROM s_interval_udt_arr_f t;
<预期结果 : {0-9}>
SELECT c1 FROM s_interval_udt_arr_g t;
<预期结果 : {9:00:00}>
SELECT c1 FROM s_interval_udt_arr_h t;
<预期结果 : {0:09:00}>
SELECT c1 FROM s_interval_udt_arr_i t;
<预期结果 : {0:00:09}>
SELECT c1 FROM s_interval_udt_arr_j t;
<预期结果 : {0:09:00}>
SELECT c1 FROM s_interval_udt_arr_k t;
<预期结果 : {0:00:09}>
SELECT c1 FROM s_interval_udt_arr_l t;
<预期结果 : {0:00:09}>
SELECT c1 FROM s_interval_udt_arr_m t;

//删除同义词
DROP SYNONYM s_interval_udt_arr_a;
DROP SYNONYM s_interval_udt_arr_b;
DROP SYNONYM s_interval_udt_arr_c;
DROP SYNONYM s_interval_udt_arr_d;
DROP SYNONYM s_interval_udt_arr_e;
DROP SYNONYM s_interval_udt_arr_f;
DROP SYNONYM s_interval_udt_arr_g;
DROP SYNONYM s_interval_udt_arr_h;
DROP SYNONYM s_interval_udt_arr_i;
DROP SYNONYM s_interval_udt_arr_j;
DROP SYNONYM s_interval_udt_arr_k;
DROP SYNONYM s_interval_udt_arr_l;
DROP SYNONYM s_interval_udt_arr_m;

DROP TABLE t_table_006a_3;
DROP TABLE t_table_006b_3;
DROP TABLE t_table_006c_3;
DROP TABLE t_table_006d_3;
DROP TABLE t_table_006e_3;
DROP TABLE t_table_006f_3;
DROP TABLE t_table_006g_3;
DROP TABLE t_table_006h_3;
DROP TABLE t_table_006i_3;
DROP TABLE t_table_006j_3;
DROP TABLE t_table_006k_3;
DROP TABLE t_table_006l_3;
DROP TABLE t_table_006m_3;