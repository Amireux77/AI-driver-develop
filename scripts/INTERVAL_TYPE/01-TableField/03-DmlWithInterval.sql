!4 XG-TYPE-INTERVAL-TABLE-021 手动与默认值插入
CREATE TABLE t_table_021a (id INT , c1 INTERVAL YEAR DEFAULT '9' , c2 INTERVAL YEAR);
CREATE TABLE t_table_021b (id INT , c1 INTERVAL MONTH DEFAULT '9' , c2 INTERVAL MONTH);
CREATE TABLE t_table_021c (id INT , c1 INTERVAL DAY DEFAULT '9' , c2 INTERVAL DAY);
CREATE TABLE t_table_021d (id INT , c1 INTERVAL HOUR DEFAULT '9' , c2 INTERVAL HOUR);
CREATE TABLE t_table_021e (id INT , c1 INTERVAL MINUTE DEFAULT '9' , c2 INTERVAL MINUTE);
CREATE TABLE t_table_021f (id INT , c1 INTERVAL SECOND DEFAULT '9' , c2 INTERVAL SECOND);
CREATE TABLE t_table_021g (id INT , c1 INTERVAL YEAR TO MONTH DEFAULT '9' , c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_021h (id INT , c1 INTERVAL DAY TO HOUR DEFAULT '9' , c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_021i (id INT , c1 INTERVAL DAY TO MINUTE DEFAULT '9' , c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_021j (id INT , c1 INTERVAL DAY TO SECOND DEFAULT '9' , c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_021k (id INT , c1 INTERVAL HOUR TO MINUTE DEFAULT '9' , c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_021l (id INT , c1 INTERVAL HOUR TO SECOND DEFAULT '9' , c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_021m (id INT , c1 INTERVAL MINUTE TO SECOND DEFAULT '9' , c2 INTERVAL MINUTE TO SECOND);

//为无默认值列插入数据
INSERT INTO t_table_021a(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021b(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021c(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021d(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021e(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021f(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021g(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021h(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021i(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021j(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021k(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021l(id , c2) VALUES (1 , '99');
INSERT INTO t_table_021m(id , c2) VALUES (1 , '99');

//使用 DEFAULT 插入默认值列
INSERT INTO t_table_021a(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021b(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021c(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021d(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021e(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021f(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021g(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021h(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021i(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021j(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021k(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021l(id , c1 , c2) VALUES (2 , DEFAULT , '999');
INSERT INTO t_table_021m(id , c1 , c2) VALUES (2 , DEFAULT , '999');

//查询内容
<预期结果 : 1 | 9-0 | 99-0 / 2 | 9-0 | 999-0>
SELECT * FROM t_table_021a ORDER BY id;
<预期结果 : 1 | 0-9 | 8-3 / 2 | 0-9 | 83-3>
SELECT * FROM t_table_021b ORDER BY id;
<预期结果 : 1 | 9 0:00:00 | 99 0:00:00 / 2 | 9 0:00:00 | 999 0:00:00>
SELECT * FROM t_table_021c ORDER BY id;
<预期结果 : 1 | 9:00:00 | 99:00:00 / 2 | 9:00:00 | 999:00:00>
SELECT * FROM t_table_021d ORDER BY id;
<预期结果 : 1 | 0:09:00 | 1:39:00 / 2 | 0:09:00 | 16:39:00>
SELECT * FROM t_table_021e ORDER BY id;
<预期结果 : 1 | 0:00:09 | 0:01:39 / 2 | 0:00:09 | 0:16:39>
SELECT * FROM t_table_021f ORDER BY id;
<预期结果 : 1 | 0-9 | 8-3 / 2 | 0-9 | 83-3>
SELECT * FROM t_table_021g ORDER BY id;
<预期结果 : 1 | 9:00:00 | 4 3:00:00 / 2 | 9:00:00 | 41 15:00:00>
SELECT * FROM t_table_021h ORDER BY id;
<预期结果 : 1 | 0:09:00 | 1:39:00 / 2 | 0:09:00 | 16:39:00>
SELECT * FROM t_table_021i ORDER BY id;
<预期结果 : 1 | 0:00:09 | 0:01:39 / 2 | 0:00:09 | 0:16:39>
SELECT * FROM t_table_021j ORDER BY id;
<预期结果 : 1 | 0:09:00 | 1:39:00 / 2 | 0:09:00 | 16:39:00>
SELECT * FROM t_table_021k ORDER BY id;
<预期结果 : 1 | 0:00:09 | 0:01:39 / 2 | 0:00:09 | 0:16:39>
SELECT * FROM t_table_021l ORDER BY id;
<预期结果 : 1 | 0:00:09 | 0:01:39 / 2 | 0:00:09 | 0:16:39>
SELECT * FROM t_table_021m ORDER BY id;

//删除表
DROP TABLE t_table_021a;
DROP TABLE t_table_021b;
DROP TABLE t_table_021c;
DROP TABLE t_table_021d;
DROP TABLE t_table_021e;
DROP TABLE t_table_021f;
DROP TABLE t_table_021g;
DROP TABLE t_table_021h;
DROP TABLE t_table_021i;
DROP TABLE t_table_021j;
DROP TABLE t_table_021k;
DROP TABLE t_table_021l;
DROP TABLE t_table_021m;

!4 XG-TYPE-INTERVAL-TABLE-022 批量与子查询插入
CREATE TABLE t_src_022a (c1 INTERVAL YEAR);
CREATE TABLE t_src_022b (c1 INTERVAL MONTH);
CREATE TABLE t_src_022c (c1 INTERVAL DAY);
CREATE TABLE t_src_022d (c1 INTERVAL HOUR);
CREATE TABLE t_src_022e (c1 INTERVAL MINUTE);
CREATE TABLE t_src_022f (c1 INTERVAL SECOND);
CREATE TABLE t_src_022g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_src_022h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_src_022i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_src_022j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_src_022k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_src_022l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_src_022m (c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_src_022a VALUES ('1');
INSERT INTO t_src_022b VALUES ('1');
INSERT INTO t_src_022c VALUES ('1');
INSERT INTO t_src_022d VALUES ('1');
INSERT INTO t_src_022e VALUES ('1');
INSERT INTO t_src_022f VALUES ('1');
INSERT INTO t_src_022g VALUES ('1');
INSERT INTO t_src_022h VALUES ('1');
INSERT INTO t_src_022i VALUES ('1');
INSERT INTO t_src_022j VALUES ('1');
INSERT INTO t_src_022k VALUES ('1');
INSERT INTO t_src_022l VALUES ('1');
INSERT INTO t_src_022m VALUES ('1');

//查询内容
<预期结果 : 1-0>
SELECT * FROM t_src_022a;
<预期结果 : 0-1>
SELECT * FROM t_src_022b;
<预期结果 : 1 0:00:00>
SELECT * FROM t_src_022c;
<预期结果 : 1:00:00>
SELECT * FROM t_src_022d;
<预期结果 : 0:01:00>
SELECT * FROM t_src_022e;
<预期结果 : 0:00:01>
SELECT * FROM t_src_022f;
<预期结果 : 0-1>
SELECT * FROM t_src_022g;
<预期结果 : 1:00:00>
SELECT * FROM t_src_022h;
<预期结果 : 0:01:00>
SELECT * FROM t_src_022i;
<预期结果 : 0:00:01>
SELECT * FROM t_src_022j;
<预期结果 : 0:01:00>
SELECT * FROM t_src_022k;
<预期结果 : 0:00:01>
SELECT * FROM t_src_022l;
<预期结果 : 0:00:01>
SELECT * FROM t_src_022m;

CREATE TABLE t_test_022a (c1 INTERVAL YEAR);
CREATE TABLE t_test_022b (c1 INTERVAL MONTH);
CREATE TABLE t_test_022c (c1 INTERVAL DAY);
CREATE TABLE t_test_022d (c1 INTERVAL HOUR);
CREATE TABLE t_test_022e (c1 INTERVAL MINUTE);
CREATE TABLE t_test_022f (c1 INTERVAL SECOND);
CREATE TABLE t_test_022g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_test_022h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_test_022i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_test_022j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_test_022k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_test_022l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_test_022m (c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_test_022a VALUES ('2') , ('3');
INSERT INTO t_test_022b VALUES ('2') , ('3');
INSERT INTO t_test_022c VALUES ('2') , ('3');
INSERT INTO t_test_022d VALUES ('2') , ('3');
INSERT INTO t_test_022e VALUES ('2') , ('3');
INSERT INTO t_test_022f VALUES ('2') , ('3');
INSERT INTO t_test_022g VALUES ('2') , ('3');
INSERT INTO t_test_022h VALUES ('2') , ('3');
INSERT INTO t_test_022i VALUES ('2') , ('3');
INSERT INTO t_test_022j VALUES ('2') , ('3');
INSERT INTO t_test_022k VALUES ('2') , ('3');
INSERT INTO t_test_022l VALUES ('2') , ('3');
INSERT INTO t_test_022m VALUES ('2') , ('3');

INSERT INTO t_test_022a SELECT * FROM t_src_022a;
INSERT INTO t_test_022b SELECT * FROM t_src_022b;
INSERT INTO t_test_022c SELECT * FROM t_src_022c;
INSERT INTO t_test_022d SELECT * FROM t_src_022d;
INSERT INTO t_test_022e SELECT * FROM t_src_022e;
INSERT INTO t_test_022f SELECT * FROM t_src_022f;
INSERT INTO t_test_022g SELECT * FROM t_src_022g;
INSERT INTO t_test_022h SELECT * FROM t_src_022h;
INSERT INTO t_test_022i SELECT * FROM t_src_022i;
INSERT INTO t_test_022j SELECT * FROM t_src_022j;
INSERT INTO t_test_022k SELECT * FROM t_src_022k;
INSERT INTO t_test_022l SELECT * FROM t_src_022l;
INSERT INTO t_test_022m SELECT * FROM t_src_022m;

//查询内容
<预期结果 : 2-0 / 3-0 / 1-0>
SELECT * FROM t_test_022a;
<预期结果 : 0-2 / 0-3 / 0-1>
SELECT * FROM t_test_022b;
<预期结果 : 2 0:00:00 / 3 0:00:00 / 1 0:00:00>
SELECT * FROM t_test_022c;
<预期结果 : 2:00:00 / 3:00:00 / 1:00:00>
SELECT * FROM t_test_022d;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_test_022e;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_test_022f;
<预期结果 : 0-2 / 0-3 / 0-1>
SELECT * FROM t_test_022g;
<预期结果 : 2:00:00 / 3:00:00 / 1:00:00>
SELECT * FROM t_test_022h;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_test_022i;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_test_022j;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_test_022k;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_test_022l;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_test_022m;

CREATE TABLE t_ctas_022a AS SELECT * FROM t_test_022a;
CREATE TABLE t_ctas_022b AS SELECT * FROM t_test_022b;
CREATE TABLE t_ctas_022c AS SELECT * FROM t_test_022c;
CREATE TABLE t_ctas_022d AS SELECT * FROM t_test_022d;
CREATE TABLE t_ctas_022e AS SELECT * FROM t_test_022e;
CREATE TABLE t_ctas_022f AS SELECT * FROM t_test_022f;
CREATE TABLE t_ctas_022g AS SELECT * FROM t_test_022g;
CREATE TABLE t_ctas_022h AS SELECT * FROM t_test_022h;
CREATE TABLE t_ctas_022i AS SELECT * FROM t_test_022i;
CREATE TABLE t_ctas_022j AS SELECT * FROM t_test_022j;
CREATE TABLE t_ctas_022k AS SELECT * FROM t_test_022k;
CREATE TABLE t_ctas_022l AS SELECT * FROM t_test_022l;
CREATE TABLE t_ctas_022m AS SELECT * FROM t_test_022m;

//查询内容
<预期结果 : 2-0 / 3-0 / 1-0>
SELECT * FROM t_ctas_022a;
<预期结果 : 0-2 / 0-3 / 0-1>
SELECT * FROM t_ctas_022b;
<预期结果 : 2 0:00:00 / 3 0:00:00 / 1 0:00:00>
SELECT * FROM t_ctas_022c;
<预期结果 : 2:00:00 / 3:00:00 / 1:00:00>
SELECT * FROM t_ctas_022d;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_ctas_022e;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_ctas_022f;
<预期结果 : 0-2 / 0-3 / 0-1>
SELECT * FROM t_ctas_022g;
<预期结果 : 2:00:00 / 3:00:00 / 1:00:00>
SELECT * FROM t_ctas_022h;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_ctas_022i;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_ctas_022j;
<预期结果 : 0:02:00 / 0:03:00 / 0:01:00>
SELECT * FROM t_ctas_022k;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_ctas_022l;
<预期结果 : 0:00:02 / 0:00:03 / 0:00:01>
SELECT * FROM t_ctas_022m;

//创建源表
CREATE TABLE t_import_src_022a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_import_src_022b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_import_src_022c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_import_src_022d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_import_src_022e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_import_src_022f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_import_src_022g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_import_src_022h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_import_src_022i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_import_src_022j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_import_src_022k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_import_src_022l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_import_src_022m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建目标表
CREATE TABLE t_import_tgt_022a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_import_tgt_022b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_import_tgt_022c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_import_tgt_022d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_import_tgt_022e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_import_tgt_022f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_import_tgt_022g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_import_tgt_022h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_import_tgt_022i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_import_tgt_022j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_import_tgt_022k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_import_tgt_022l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_import_tgt_022m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向源表插入数据
INSERT INTO t_import_src_022a VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022b VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022c VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022d VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022e VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022f VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022g VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022h VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022i VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022j VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022k VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022l VALUES (1 , '1') , (2 , '2');
INSERT INTO t_import_src_022m VALUES (1 , '1') , (2 , '2');

//向目标表插入数据
INSERT INTO t_import_tgt_022a VALUES (100 , '0');
INSERT INTO t_import_tgt_022b VALUES (100 , '0');
INSERT INTO t_import_tgt_022c VALUES (100 , '0');
INSERT INTO t_import_tgt_022d VALUES (100 , '0');
INSERT INTO t_import_tgt_022e VALUES (100 , '0');
INSERT INTO t_import_tgt_022f VALUES (100 , '0');
INSERT INTO t_import_tgt_022g VALUES (100 , '0');
INSERT INTO t_import_tgt_022h VALUES (100 , '0');
INSERT INTO t_import_tgt_022i VALUES (100 , '0');
INSERT INTO t_import_tgt_022j VALUES (100 , '0');
INSERT INTO t_import_tgt_022k VALUES (100 , '0');
INSERT INTO t_import_tgt_022l VALUES (100 , '0');
INSERT INTO t_import_tgt_022m VALUES (100 , '0');

//IMPORT APEEND 追加插入表
IMPORT APPEND TABLE t_import_tgt_022a FROM SELECT * FROM t_import_src_022a;
IMPORT APPEND TABLE t_import_tgt_022b FROM SELECT * FROM t_import_src_022b;
IMPORT APPEND TABLE t_import_tgt_022c FROM SELECT * FROM t_import_src_022c;
IMPORT APPEND TABLE t_import_tgt_022d FROM SELECT * FROM t_import_src_022d;
IMPORT APPEND TABLE t_import_tgt_022e FROM SELECT * FROM t_import_src_022e;
IMPORT APPEND TABLE t_import_tgt_022f FROM SELECT * FROM t_import_src_022f;
IMPORT APPEND TABLE t_import_tgt_022g FROM SELECT * FROM t_import_src_022g;
IMPORT APPEND TABLE t_import_tgt_022h FROM SELECT * FROM t_import_src_022h;
IMPORT APPEND TABLE t_import_tgt_022i FROM SELECT * FROM t_import_src_022i;
IMPORT APPEND TABLE t_import_tgt_022j FROM SELECT * FROM t_import_src_022j;
IMPORT APPEND TABLE t_import_tgt_022k FROM SELECT * FROM t_import_src_022k;
IMPORT APPEND TABLE t_import_tgt_022l FROM SELECT * FROM t_import_src_022l;
IMPORT APPEND TABLE t_import_tgt_022m FROM SELECT * FROM t_import_src_022m;

<预期结果 : 0 / 1-0 / 2-0>
SELECT c1 FROM t_import_tgt_022a;
<预期结果 : 0 / 0-1 / 0-2>
SELECT c1 FROM t_import_tgt_022b;
<预期结果 : 0 / 1 0:00:00 / 2 0:00:00>
SELECT c1 FROM t_import_tgt_022c;
<预期结果 : 0 / 1:00:00 / 2:00:00>
SELECT c1 FROM t_import_tgt_022d;
<预期结果 : 0 / 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022e;
<预期结果 : 0 / 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022f;
<预期结果 : 0 / 0-1 / 0-2>
SELECT c1 FROM t_import_tgt_022g;
<预期结果 : 0 / 1:00:00 / 2:00:00>
SELECT c1 FROM t_import_tgt_022h;
<预期结果 : 0 / 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022i;
<预期结果 : 0 / 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022j;
<预期结果 : 0 / 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022k;
<预期结果 : 0 / 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022l;
<预期结果 : 0 / 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022m;

//IMPORT REPLACE 替换插入表
IMPORT REPLACE TABLE t_import_tgt_022a FROM SELECT * FROM t_import_src_022a;
IMPORT REPLACE TABLE t_import_tgt_022b FROM SELECT * FROM t_import_src_022b;
IMPORT REPLACE TABLE t_import_tgt_022c FROM SELECT * FROM t_import_src_022c;
IMPORT REPLACE TABLE t_import_tgt_022d FROM SELECT * FROM t_import_src_022d;
IMPORT REPLACE TABLE t_import_tgt_022e FROM SELECT * FROM t_import_src_022e;
IMPORT REPLACE TABLE t_import_tgt_022f FROM SELECT * FROM t_import_src_022f;
IMPORT REPLACE TABLE t_import_tgt_022g FROM SELECT * FROM t_import_src_022g;
IMPORT REPLACE TABLE t_import_tgt_022h FROM SELECT * FROM t_import_src_022h;
IMPORT REPLACE TABLE t_import_tgt_022i FROM SELECT * FROM t_import_src_022i;
IMPORT REPLACE TABLE t_import_tgt_022j FROM SELECT * FROM t_import_src_022j;
IMPORT REPLACE TABLE t_import_tgt_022k FROM SELECT * FROM t_import_src_022k;
IMPORT REPLACE TABLE t_import_tgt_022l FROM SELECT * FROM t_import_src_022l;
IMPORT REPLACE TABLE t_import_tgt_022m FROM SELECT * FROM t_import_src_022m;

<预期结果 : 1-0 / 2-0>
SELECT c1 FROM t_import_tgt_022a;
<预期结果 : 0-1 / 0-2>
SELECT c1 FROM t_import_tgt_022b;
<预期结果 : 1 0:00:00 / 2 0:00:00>
SELECT c1 FROM t_import_tgt_022c;
<预期结果 : 1:00:00 / 2:00:00>
SELECT c1 FROM t_import_tgt_022d;
<预期结果 : 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022e;
<预期结果 : 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022f;
<预期结果 : 0-1 / 0-2>
SELECT c1 FROM t_import_tgt_022g;
<预期结果 : 1:00:00 / 2:00:00>
SELECT c1 FROM t_import_tgt_022h;
<预期结果 : 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022i;
<预期结果 : 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022j;
<预期结果 : 0:01:00 / 0:02:00>
SELECT c1 FROM t_import_tgt_022k;
<预期结果 : 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022l;
<预期结果 : 0:00:01 / 0:00:02>
SELECT c1 FROM t_import_tgt_022m;

//创建表
CREATE TABLE t_fit_batch_022a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_fit_batch_022b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_fit_batch_022c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_fit_batch_022d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_fit_batch_022e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_fit_batch_022f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_fit_batch_022g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_fit_batch_022h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_fit_batch_022i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_fit_batch_022j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_fit_batch_022k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_fit_batch_022l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_fit_batch_022m (id INT , c1 INTERVAL MINUTE TO SECOND);

//fit_batch 插入
!|Insert Batch|t_fit_batch_022a|
|id|c1|
|1|6-0|
|2|7-0|

!|Insert Batch|t_fit_batch_022b|
|id|c1|
|1|0-6|
|2|0-7|

!|Insert Batch|t_fit_batch_022c|
|id|c1|
|1|6 0:00:00|
|2|7 0:00:00|

!|Insert Batch|t_fit_batch_022d|
|id|c1|
|1|6:00:00|
|2|7:00:00|

!|Insert Batch|t_fit_batch_022e|
|id|c1|
|1|0:06:00|
|2|0:07:00|

!|Insert Batch|t_fit_batch_022f|
|id|c1|
|1|0:00:06|
|2|0:00:07|

!|Insert Batch|t_fit_batch_022g|
|id|c1|
|1|0-6|
|2|0-7|

!|Insert Batch|t_fit_batch_022h|
|id|c1|
|1|6:00:00|
|2|7:00:00|

!|Insert Batch|t_fit_batch_022i|
|id|c1|
|1|0:06:00|
|2|0:07:00|

!|Insert Batch|t_fit_batch_022j|
|id|c1|
|1|0:00:06|
|2|0:00:07|

!|Insert Batch|t_fit_batch_022k|
|id|c1|
|1|0:06:00|
|2|0:07:00|

!|Insert Batch|t_fit_batch_022l|
|id|c1|
|1|0:00:06|
|2|0:00:07|

!|Insert Batch|t_fit_batch_022m|
|id|c1|
|1|0:00:06|
|2|0:00:07|

//查询结果
<预期结果 : 6-0 / 7-0>
SELECT c1 FROM t_fit_batch_022a;
<预期结果 : 0-6 / 0-7>
SELECT c1 FROM t_fit_batch_022b;
<预期结果 : 6 0:00:00 / 7 0:00:00>
SELECT c1 FROM t_fit_batch_022c;
<预期结果 : 6:00:00 / 7:00:00>
SELECT c1 FROM t_fit_batch_022d;
<预期结果 : 0:06:00 / 0:07:00>
SELECT c1 FROM t_fit_batch_022e;
<预期结果 : 0:00:06 / 0:00:07>
SELECT c1 FROM t_fit_batch_022f;
<预期结果 : 0-6 / 0-7>
SELECT c1 FROM t_fit_batch_022g;
<预期结果 : 6:00:00 / 7:00:00>
SELECT c1 FROM t_fit_batch_022h;
<预期结果 : 0:06:00 / 0:07:00>
SELECT c1 FROM t_fit_batch_022i;
<预期结果 : 0:00:06 / 0:00:07>
SELECT c1 FROM t_fit_batch_022j;
<预期结果 : 0:06:00 / 0:07:00>
SELECT c1 FROM t_fit_batch_022k;
<预期结果 : 0:00:06 / 0:00:07>
SELECT c1 FROM t_fit_batch_022l;
<预期结果 : 0:00:06 / 0:00:07>
SELECT c1 FROM t_fit_batch_022m;

//删除表
DROP TABLE t_src_022a;
DROP TABLE t_src_022b;
DROP TABLE t_src_022c;
DROP TABLE t_src_022d;
DROP TABLE t_src_022e;
DROP TABLE t_src_022f;
DROP TABLE t_src_022g;
DROP TABLE t_src_022h;
DROP TABLE t_src_022i;
DROP TABLE t_src_022j;
DROP TABLE t_src_022k;
DROP TABLE t_src_022l;
DROP TABLE t_src_022m;
DROP TABLE t_test_022a;
DROP TABLE t_test_022b;
DROP TABLE t_test_022c;
DROP TABLE t_test_022d;
DROP TABLE t_test_022e;
DROP TABLE t_test_022f;
DROP TABLE t_test_022g;
DROP TABLE t_test_022h;
DROP TABLE t_test_022i;
DROP TABLE t_test_022j;
DROP TABLE t_test_022k;
DROP TABLE t_test_022l;
DROP TABLE t_test_022m;
DROP TABLE t_ctas_022a;
DROP TABLE t_ctas_022b;
DROP TABLE t_ctas_022c;
DROP TABLE t_ctas_022d;
DROP TABLE t_ctas_022e;
DROP TABLE t_ctas_022f;
DROP TABLE t_ctas_022g;
DROP TABLE t_ctas_022h;
DROP TABLE t_ctas_022i;
DROP TABLE t_ctas_022j;
DROP TABLE t_ctas_022k;
DROP TABLE t_ctas_022l;
DROP TABLE t_ctas_022m;
DROP TABLE t_import_src_022a;
DROP TABLE t_import_src_022b;
DROP TABLE t_import_src_022c;
DROP TABLE t_import_src_022d;
DROP TABLE t_import_src_022e;
DROP TABLE t_import_src_022f;
DROP TABLE t_import_src_022g;
DROP TABLE t_import_src_022h;
DROP TABLE t_import_src_022i;
DROP TABLE t_import_src_022j;
DROP TABLE t_import_src_022k;
DROP TABLE t_import_src_022l;
DROP TABLE t_import_src_022m;
DROP TABLE t_import_tgt_022a;
DROP TABLE t_import_tgt_022b;
DROP TABLE t_import_tgt_022c;
DROP TABLE t_import_tgt_022d;
DROP TABLE t_import_tgt_022e;
DROP TABLE t_import_tgt_022f;
DROP TABLE t_import_tgt_022g;
DROP TABLE t_import_tgt_022h;
DROP TABLE t_import_tgt_022i;
DROP TABLE t_import_tgt_022j;
DROP TABLE t_import_tgt_022k;
DROP TABLE t_import_tgt_022l;
DROP TABLE t_import_tgt_022m;
DROP TABLE t_fit_batch_022a;
DROP TABLE t_fit_batch_022b;
DROP TABLE t_fit_batch_022c;
DROP TABLE t_fit_batch_022d;
DROP TABLE t_fit_batch_022e;
DROP TABLE t_fit_batch_022f;
DROP TABLE t_fit_batch_022g;
DROP TABLE t_fit_batch_022h;
DROP TABLE t_fit_batch_022i;
DROP TABLE t_fit_batch_022j;
DROP TABLE t_fit_batch_022k;
DROP TABLE t_fit_batch_022l;
DROP TABLE t_fit_batch_022m;


!4 XG-TYPE-INTERVAL-TABLE-023 REPLACE 与 IGNORE 插入
CREATE TABLE t_table_023a (id INT PRIMARY KEY , c1 INTERVAL YEAR);
CREATE TABLE t_table_023b (id INT PRIMARY KEY , c1 INTERVAL MONTH);
CREATE TABLE t_table_023c (id INT PRIMARY KEY , c1 INTERVAL DAY);
CREATE TABLE t_table_023d (id INT PRIMARY KEY , c1 INTERVAL HOUR);
CREATE TABLE t_table_023e (id INT PRIMARY KEY , c1 INTERVAL MINUTE);
CREATE TABLE t_table_023f (id INT PRIMARY KEY , c1 INTERVAL SECOND);
CREATE TABLE t_table_023g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_023h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_023i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_023j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_023k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_023l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_023m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_023a VALUES (1 , '9');
INSERT INTO t_table_023b VALUES (1 , '9');
INSERT INTO t_table_023c VALUES (1 , '9');
INSERT INTO t_table_023d VALUES (1 , '9');
INSERT INTO t_table_023e VALUES (1 , '9');
INSERT INTO t_table_023f VALUES (1 , '9');
INSERT INTO t_table_023g VALUES (1 , '9');
INSERT INTO t_table_023h VALUES (1 , '9');
INSERT INTO t_table_023i VALUES (1 , '9');
INSERT INTO t_table_023j VALUES (1 , '9');
INSERT INTO t_table_023k VALUES (1 , '9');
INSERT INTO t_table_023l VALUES (1 , '9');
INSERT INTO t_table_023m VALUES (1 , '9');

//插入IGNORE
INSERT IGNORE INTO t_table_023a VALUES (1 , '99');
INSERT IGNORE INTO t_table_023b VALUES (1 , '99');
INSERT IGNORE INTO t_table_023c VALUES (1 , '99');
INSERT IGNORE INTO t_table_023d VALUES (1 , '99');
INSERT IGNORE INTO t_table_023e VALUES (1 , '99');
INSERT IGNORE INTO t_table_023f VALUES (1 , '99');
INSERT IGNORE INTO t_table_023g VALUES (1 , '99');
INSERT IGNORE INTO t_table_023h VALUES (1 , '99');
INSERT IGNORE INTO t_table_023i VALUES (1 , '99');
INSERT IGNORE INTO t_table_023j VALUES (1 , '99');
INSERT IGNORE INTO t_table_023k VALUES (1 , '99');
INSERT IGNORE INTO t_table_023l VALUES (1 , '99');
INSERT IGNORE INTO t_table_023m VALUES (1 , '99');

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_023a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_023b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_023c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_023d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_023e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_023f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_023g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_023h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_023i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_023j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_023k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_023l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_023m;

//REPLACE
REPLACE INTO t_table_023a VALUES (1 , '99');
REPLACE INTO t_table_023b VALUES (1 , '99');
REPLACE INTO t_table_023c VALUES (1 , '99');
REPLACE INTO t_table_023d VALUES (1 , '99');
REPLACE INTO t_table_023e VALUES (1 , '99');
REPLACE INTO t_table_023f VALUES (1 , '99');
REPLACE INTO t_table_023g VALUES (1 , '99');
REPLACE INTO t_table_023h VALUES (1 , '99');
REPLACE INTO t_table_023i VALUES (1 , '99');
REPLACE INTO t_table_023j VALUES (1 , '99');
REPLACE INTO t_table_023k VALUES (1 , '99');
REPLACE INTO t_table_023l VALUES (1 , '99');
REPLACE INTO t_table_023m VALUES (1 , '99');

//查询内容
<预期结果 : 1 | 99-0>
SELECT * FROM t_table_023a;
<预期结果 : 1 | 8-3>
SELECT * FROM t_table_023b;
<预期结果 : 1 | 99 0:00:00>
SELECT * FROM t_table_023c;
<预期结果 : 1 | 99:00:00>
SELECT * FROM t_table_023d;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_023e;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_023f;
<预期结果 : 1 | 8-3>
SELECT * FROM t_table_023g;
<预期结果 : 1 | 4 3:00:00>
SELECT * FROM t_table_023h;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_023i;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_023j;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_023k;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_023l;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_023m;

//删除表
DROP TABLE t_table_023a;
DROP TABLE t_table_023b;
DROP TABLE t_table_023c;
DROP TABLE t_table_023d;
DROP TABLE t_table_023e;
DROP TABLE t_table_023f;
DROP TABLE t_table_023g;
DROP TABLE t_table_023h;
DROP TABLE t_table_023i;
DROP TABLE t_table_023j;
DROP TABLE t_table_023k;
DROP TABLE t_table_023l;
DROP TABLE t_table_023m;

//创建表 INTERVAL 类型为主键
CREATE TABLE t_igr_023a (id INT, c1 INTERVAL YEAR PRIMARY KEY);
CREATE TABLE t_igr_023b (id INT, c1 INTERVAL MONTH PRIMARY KEY);
CREATE TABLE t_igr_023c (id INT, c1 INTERVAL DAY PRIMARY KEY);
CREATE TABLE t_igr_023d (id INT, c1 INTERVAL HOUR PRIMARY KEY);
CREATE TABLE t_igr_023e (id INT, c1 INTERVAL MINUTE PRIMARY KEY);
CREATE TABLE t_igr_023f (id INT, c1 INTERVAL SECOND PRIMARY KEY);
CREATE TABLE t_igr_023g (id INT, c1 INTERVAL YEAR TO MONTH PRIMARY KEY);
CREATE TABLE t_igr_023h (id INT, c1 INTERVAL DAY TO HOUR PRIMARY KEY);
CREATE TABLE t_igr_023i (id INT, c1 INTERVAL DAY TO MINUTE PRIMARY KEY);
CREATE TABLE t_igr_023j (id INT, c1 INTERVAL DAY TO SECOND PRIMARY KEY);
CREATE TABLE t_igr_023k (id INT, c1 INTERVAL HOUR TO MINUTE PRIMARY KEY);
CREATE TABLE t_igr_023l (id INT, c1 INTERVAL HOUR TO SECOND PRIMARY KEY);
CREATE TABLE t_igr_023m (id INT, c1 INTERVAL MINUTE TO SECOND PRIMARY KEY);

INSERT INTO t_igr_023a VALUES (1 , '9');
INSERT INTO t_igr_023b VALUES (1 , '9');
INSERT INTO t_igr_023c VALUES (1 , '9');
INSERT INTO t_igr_023d VALUES (1 , '9');
INSERT INTO t_igr_023e VALUES (1 , '9');
INSERT INTO t_igr_023f VALUES (1 , '9');
INSERT INTO t_igr_023g VALUES (1 , '9');
INSERT INTO t_igr_023h VALUES (1 , '9');
INSERT INTO t_igr_023i VALUES (1 , '9');
INSERT INTO t_igr_023j VALUES (1 , '9');
INSERT INTO t_igr_023k VALUES (1 , '9');
INSERT INTO t_igr_023l VALUES (1 , '9');
INSERT INTO t_igr_023m VALUES (1 , '9');

//插入IGNORE
INSERT IGNORE INTO t_igr_023a VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023b VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023c VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023d VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023e VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023f VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023g VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023h VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023i VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023j VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023k VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023l VALUES (2 , '9');
INSERT IGNORE INTO t_igr_023m VALUES (2 , '9');

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_igr_023a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_igr_023b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_igr_023c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_igr_023d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_igr_023e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_igr_023f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_igr_023g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_igr_023h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_igr_023i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_igr_023j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_igr_023k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_igr_023l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_igr_023m;

//REPLACE
REPLACE INTO t_igr_023a VALUES (2 , '9');
REPLACE INTO t_igr_023b VALUES (2 , '9');
REPLACE INTO t_igr_023c VALUES (2 , '9');
REPLACE INTO t_igr_023d VALUES (2 , '9');
REPLACE INTO t_igr_023e VALUES (2 , '9');
REPLACE INTO t_igr_023f VALUES (2 , '9');
REPLACE INTO t_igr_023g VALUES (2 , '9');
REPLACE INTO t_igr_023h VALUES (2 , '9');
REPLACE INTO t_igr_023i VALUES (2 , '9');
REPLACE INTO t_igr_023j VALUES (2 , '9');
REPLACE INTO t_igr_023k VALUES (2 , '9');
REPLACE INTO t_igr_023l VALUES (2 , '9');
REPLACE INTO t_igr_023m VALUES (2 , '9');

//查询内容
<预期结果 : 2 | 9-0>
SELECT * FROM t_igr_023a;
<预期结果 : 2 | 0-9>
SELECT * FROM t_igr_023b;
<预期结果 : 2 | 9 0:00:00>
SELECT * FROM t_igr_023c;
<预期结果 : 2 | 9:00:00>
SELECT * FROM t_igr_023d;
<预期结果 : 2 | 0:09:00>
SELECT * FROM t_igr_023e;
<预期结果 : 2 | 0:00:09>
SELECT * FROM t_igr_023f;
<预期结果 : 2 | 0-9>
SELECT * FROM t_igr_023g;
<预期结果 : 2 | 9:00:00>
SELECT * FROM t_igr_023h;
<预期结果 : 2 | 0:09:00>
SELECT * FROM t_igr_023i;
<预期结果 : 2 | 0:00:09>
SELECT * FROM t_igr_023j;
<预期结果 : 2 | 0:09:00>
SELECT * FROM t_igr_023k;
<预期结果 : 2 | 0:00:09>
SELECT * FROM t_igr_023l;
<预期结果 : 2 | 0:00:09>
SELECT * FROM t_igr_023m;

//删除表
DROP TABLE t_igr_023a;
DROP TABLE t_igr_023b;
DROP TABLE t_igr_023c;
DROP TABLE t_igr_023d;
DROP TABLE t_igr_023e;
DROP TABLE t_igr_023f;
DROP TABLE t_igr_023g;
DROP TABLE t_igr_023h;
DROP TABLE t_igr_023i;
DROP TABLE t_igr_023j;
DROP TABLE t_igr_023k;
DROP TABLE t_igr_023l;
DROP TABLE t_igr_023m;

!4 XG-TYPE-INTERVAL-TABLE-024 MERGE 与 PL/SQL 插入
CREATE TABLE t_target_024a (id INT, c1 INTERVAL YEAR);
CREATE TABLE t_target_024b (id INT, c1 INTERVAL MONTH);
CREATE TABLE t_target_024c (id INT, c1 INTERVAL DAY);
CREATE TABLE t_target_024d (id INT, c1 INTERVAL HOUR);
CREATE TABLE t_target_024e (id INT, c1 INTERVAL MINUTE);
CREATE TABLE t_target_024f (id INT, c1 INTERVAL SECOND);
CREATE TABLE t_target_024g (id INT, c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_target_024h (id INT, c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_target_024i (id INT, c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_target_024j (id INT, c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_target_024k (id INT, c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_target_024l (id INT, c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_target_024m (id INT, c1 INTERVAL MINUTE TO SECOND);

CREATE TABLE t_stage_024a (id INT, c1 INTERVAL YEAR);
CREATE TABLE t_stage_024b (id INT, c1 INTERVAL MONTH);
CREATE TABLE t_stage_024c (id INT, c1 INTERVAL DAY);
CREATE TABLE t_stage_024d (id INT, c1 INTERVAL HOUR);
CREATE TABLE t_stage_024e (id INT, c1 INTERVAL MINUTE);
CREATE TABLE t_stage_024f (id INT, c1 INTERVAL SECOND);
CREATE TABLE t_stage_024g (id INT, c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_stage_024h (id INT, c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_stage_024i (id INT, c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_stage_024j (id INT, c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_stage_024k (id INT, c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_stage_024l (id INT, c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_stage_024m (id INT, c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_stage_024a VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024b VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024c VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024d VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024e VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024f VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024g VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024h VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024i VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024j VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024k VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024l VALUES (1 , '9') , (2 , '99');
INSERT INTO t_stage_024m VALUES (1 , '9') , (2 , '99');

MERGE INTO t_target_024a t USING t_stage_024a s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024b t USING t_stage_024b s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024c t USING t_stage_024c s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024d t USING t_stage_024d s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024e t USING t_stage_024e s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024f t USING t_stage_024f s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024g t USING t_stage_024g s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024h t USING t_stage_024h s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024i t USING t_stage_024i s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024j t USING t_stage_024j s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024k t USING t_stage_024k s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024l t USING t_stage_024l s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);
MERGE INTO t_target_024m t USING t_stage_024m s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1 = s.c1 WHEN NOT MATCHED THEN INSERT VALUES (s.id ,  s.c1);

//查询内容
<预期结果 : 1 | 9-0 / 2 | 99-0>
SELECT * FROM t_target_024a ORDER BY id;
<预期结果 : 1 | 0-9 / 2 | 8-3>
SELECT * FROM t_target_024b ORDER BY id;
<预期结果 : 1 | 9 0:00:00 / 2 | 99 0:00:00>
SELECT * FROM t_target_024c ORDER BY id;
<预期结果 : 1 | 9:00:00 / 2 | 99:00:00>
SELECT * FROM t_target_024d ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00>
SELECT * FROM t_target_024e ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39>
SELECT * FROM t_target_024f ORDER BY id;
<预期结果 : 1 | 0-9 / 2 | 8-3>
SELECT * FROM t_target_024g ORDER BY id;
<预期结果 : 1 | 9:00:00 / 2 | 4 3:00:00>
SELECT * FROM t_target_024h ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00>
SELECT * FROM t_target_024i ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39>
SELECT * FROM t_target_024j ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00>
SELECT * FROM t_target_024k ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39>
SELECT * FROM t_target_024l ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39>
SELECT * FROM t_target_024m ORDER BY id;

// PL/SQL 声明部分定义类型与赋值数据类型匹配且数据值正常
DECLARE
val_a INTERVAL YEAR := '4';
val_b INTERVAL MONTH := '4';
val_c INTERVAL DAY := '4';
val_d INTERVAL HOUR := '4';
val_e INTERVAL MINUTE := '4';
val_f INTERVAL SECOND := '4';
val_g INTERVAL YEAR TO MONTH := '4';
val_h INTERVAL DAY TO HOUR := '4';
val_i INTERVAL DAY TO MINUTE := '4';
val_j INTERVAL DAY TO SECOND := '4';
val_k INTERVAL HOUR TO MINUTE := '4';
val_l INTERVAL HOUR TO SECOND := '4';
val_m INTERVAL MINUTE TO SECOND := '4';
BEGIN
INSERT INTO t_target_024a VALUES (11 , val_a + '1');
INSERT INTO t_target_024b VALUES (11 , val_b + '1');
INSERT INTO t_target_024c VALUES (11 , val_c + '1');
INSERT INTO t_target_024d VALUES (11 , val_d + '1');
INSERT INTO t_target_024e VALUES (11 , val_e + '1');
INSERT INTO t_target_024f VALUES (11 , val_f + '1');
INSERT INTO t_target_024g VALUES (11 , val_g + '1');
INSERT INTO t_target_024h VALUES (11 , val_h + '1');
INSERT INTO t_target_024i VALUES (11 , val_i + '1');
INSERT INTO t_target_024j VALUES (11 , val_j + '1');
INSERT INTO t_target_024k VALUES (11 , val_k + '1');
INSERT INTO t_target_024l VALUES (11 , val_l + '1');
INSERT INTO t_target_024m VALUES (11 , val_m + '1');
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 5-0>
SELECT c1 FROM t_target_024a WHERE id = 11;
<预期结果 : 0-5>
SELECT c1 FROM t_target_024b WHERE id = 11;
<预期结果 : 5 0:00:00>
SELECT c1 FROM t_target_024c WHERE id = 11;
<预期结果 : 5:00:00>
SELECT c1 FROM t_target_024d WHERE id = 11;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024e WHERE id = 11;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024f WHERE id = 11;
<预期结果 : 0-5>
SELECT c1 FROM t_target_024g WHERE id = 11;
<预期结果 : 5:00:00>
SELECT c1 FROM t_target_024h WHERE id = 11;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024i WHERE id = 11;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024j WHERE id = 11;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024k WHERE id = 11;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024l WHERE id = 11;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024m WHERE id = 11;

// PL/SQL 声明部分定义类型与赋值数据类型匹配且数据值超界
DECLARE
val_a INTERVAL YEAR := '1000000000';
val_b INTERVAL MONTH := '2147483648';
val_c INTERVAL DAY := '2147483648';
val_d INTERVAL HOUR := '1000000000';
val_e INTERVAL MINUTE := '1000000000';
val_f INTERVAL SECOND := '9223372036854.775808';
val_g_1 INTERVAL YEAR TO MONTH := '178956971-0';
val_g_2 INTERVAL YEAR TO MONTH := '0-12';
val_h_1 INTERVAL DAY TO HOUR := '89478486 0:00:00';
val_h_2 INTERVAL DAY TO HOUR := '0 2147483648:00:00';
val_i_1 INTERVAL DAY TO MINUTE := '1491309 0:00:00';
val_i_2 INTERVAL DAY TO MINUTE := '0 35791395:00:00';
val_i_3 INTERVAL DAY TO MINUTE := '0 0:60:00';
val_j_1 INTERVAL DAY TO SECOND := '106751992 0:00:00';
val_j_2 INTERVAL DAY TO SECOND := '0 2562047789:00:00';
val_j_3 INTERVAL DAY TO SECOND := '0 0:60:00';
val_j_4 INTERVAL DAY TO SECOND := '0 0:0:61';
val_k_1 INTERVAL HOUR TO MINUTE := '10000000:00:00';
val_k_2 INTERVAL HOUR TO MINUTE := '0:60:00';
val_l_1 INTERVAL HOUR TO SECOND := '2562047789:0:00';
val_l_2 INTERVAL HOUR TO SECOND := '0:60:00';
val_l_3 INTERVAL HOUR TO SECOND := '0:0:61';
val_m_1 INTERVAL MINUTE TO SECOND := '1000000000:00';
val_m_2 INTERVAL MINUTE TO SECOND := '0:61';
BEGIN
INSERT INTO t_target_024a VALUES (12 , val_a);
INSERT INTO t_target_024b VALUES (12 , val_b);
INSERT INTO t_target_024c VALUES (12 , val_c);
INSERT INTO t_target_024d VALUES (12 , val_d);
INSERT INTO t_target_024e VALUES (12 , val_e);
INSERT INTO t_target_024f VALUES (12 , val_f);
INSERT INTO t_target_024g VALUES (12 , val_g_1);
INSERT INTO t_target_024g VALUES (12 , val_g_2);
INSERT INTO t_target_024h VALUES (12 , val_h_1);
INSERT INTO t_target_024h VALUES (12 , val_h_2);
INSERT INTO t_target_024i VALUES (12 , val_i_1);
INSERT INTO t_target_024i VALUES (12 , val_i_2);
INSERT INTO t_target_024i VALUES (12 , val_i_3);
INSERT INTO t_target_024j VALUES (12 , val_j_1);
INSERT INTO t_target_024j VALUES (12 , val_j_2);
INSERT INTO t_target_024j VALUES (12 , val_j_3);
INSERT INTO t_target_024j VALUES (12 , val_j_4);
INSERT INTO t_target_024k VALUES (12 , val_k_1);
INSERT INTO t_target_024k VALUES (12 , val_k_2);
INSERT INTO t_target_024l VALUES (12 , val_l_1);
INSERT INTO t_target_024l VALUES (12 , val_l_2);
INSERT INTO t_target_024l VALUES (12 , val_l_3);
INSERT INTO t_target_024m VALUES (12 , val_m_1);
INSERT INTO t_target_024m VALUES (12 , val_m_2);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

// PL/SQL 声明部分定义类型与赋值数据类型不匹配
DECLARE
val_a INTERVAL YEAR := true;
val_b INTERVAL MONTH := true;
val_c INTERVAL DAY := true;
val_d INTERVAL HOUR := true;
val_e INTERVAL MINUTE := true;
val_f INTERVAL SECOND := true;
val_g INTERVAL YEAR TO MONTH := true;
val_h INTERVAL DAY TO HOUR := true;
val_i INTERVAL DAY TO MINUTE := true;
val_j INTERVAL DAY TO SECOND := true;
val_k INTERVAL HOUR TO MINUTE := true;
val_l INTERVAL HOUR TO SECOND := true;
val_m INTERVAL MINUTE TO SECOND := true;
BEGIN
INSERT INTO t_target_024a VALUES (13 , val_a);
INSERT INTO t_target_024b VALUES (13 , val_b);
INSERT INTO t_target_024c VALUES (13 , val_c);
INSERT INTO t_target_024d VALUES (13 , val_d);
INSERT INTO t_target_024e VALUES (13 , val_e);
INSERT INTO t_target_024f VALUES (13 , val_f);
INSERT INTO t_target_024g VALUES (13 , val_g);
INSERT INTO t_target_024h VALUES (13 , val_h);
INSERT INTO t_target_024i VALUES (13 , val_i);
INSERT INTO t_target_024j VALUES (13 , val_j);
INSERT INTO t_target_024k VALUES (13 , val_k);
INSERT INTO t_target_024l VALUES (13 , val_l);
INSERT INTO t_target_024m VALUES (13 , val_m);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

// PL/SQL 执行部分插入数据与声明数据类型一致
DECLARE
val_a INTERVAL YEAR := '4';
val_b INTERVAL MONTH := '4';
val_c INTERVAL DAY := '4';
val_d INTERVAL HOUR := '4';
val_e INTERVAL MINUTE := '4';
val_f INTERVAL SECOND := '4';
val_g INTERVAL YEAR TO MONTH := '4';
val_h INTERVAL DAY TO HOUR := '4';
val_i INTERVAL DAY TO MINUTE := '4';
val_j INTERVAL DAY TO SECOND := '4';
val_k INTERVAL HOUR TO MINUTE := '4';
val_l INTERVAL HOUR TO SECOND := '4';
val_m INTERVAL MINUTE TO SECOND := '4';
BEGIN
INSERT INTO t_target_024a VALUES (14 , val_a + '1');
INSERT INTO t_target_024b VALUES (14 , val_b + '1');
INSERT INTO t_target_024c VALUES (14 , val_c + '1');
INSERT INTO t_target_024d VALUES (14 , val_d + '1');
INSERT INTO t_target_024e VALUES (14 , val_e + '1');
INSERT INTO t_target_024f VALUES (14 , val_f + '1');
INSERT INTO t_target_024g VALUES (14 , val_g + '1');
INSERT INTO t_target_024h VALUES (14 , val_h + '1');
INSERT INTO t_target_024i VALUES (14 , val_i + '1');
INSERT INTO t_target_024j VALUES (14 , val_j + '1');
INSERT INTO t_target_024k VALUES (14 , val_k + '1');
INSERT INTO t_target_024l VALUES (14 , val_l + '1');
INSERT INTO t_target_024m VALUES (14 , val_m + '1');
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 5-0>
SELECT c1 FROM t_target_024a WHERE id = 14;
<预期结果 : 0-5>
SELECT c1 FROM t_target_024b WHERE id = 14;
<预期结果 : 5 0:00:00>
SELECT c1 FROM t_target_024c WHERE id = 14;
<预期结果 : 5:00:00>
SELECT c1 FROM t_target_024d WHERE id = 14;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024e WHERE id = 14;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024f WHERE id = 14;
<预期结果 : 0-5>
SELECT c1 FROM t_target_024g WHERE id = 14;
<预期结果 : 5:00:00>
SELECT c1 FROM t_target_024h WHERE id = 14;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024i WHERE id = 14;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024j WHERE id = 14;
<预期结果 : 0:05:00>
SELECT c1 FROM t_target_024k WHERE id = 14;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024l WHERE id = 14;
<预期结果 : 0:00:05>
SELECT c1 FROM t_target_024m WHERE id = 14;

// PL/SQL 执行部分插入数据与声明数据类型不一致但可隐式转换
DECLARE
val_a VARCHAR := '9';
val_b VARCHAR := '9';
val_c VARCHAR := '9';
val_d VARCHAR := '9';
val_e VARCHAR := '9';
val_f VARCHAR := '9';
val_g VARCHAR := '9';
val_h VARCHAR := '9';
val_i VARCHAR := '9';
val_j VARCHAR := '9';
val_k VARCHAR := '9';
val_l VARCHAR := '9';
val_m VARCHAR := '9';
BEGIN
INSERT INTO t_target_024a VALUES (15 , val_a);
INSERT INTO t_target_024b VALUES (15 , val_b);
INSERT INTO t_target_024c VALUES (15 , val_c);
INSERT INTO t_target_024d VALUES (15 , val_d);
INSERT INTO t_target_024e VALUES (15 , val_e);
INSERT INTO t_target_024f VALUES (15 , val_f);
INSERT INTO t_target_024g VALUES (15 , val_g);
INSERT INTO t_target_024h VALUES (15 , val_h);
INSERT INTO t_target_024i VALUES (15 , val_i);
INSERT INTO t_target_024j VALUES (15 , val_j);
INSERT INTO t_target_024k VALUES (15 , val_k);
INSERT INTO t_target_024l VALUES (15 , val_l);
INSERT INTO t_target_024m VALUES (15 , val_m);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 9-0>
SELECT c1 FROM t_target_024a WHERE id = 15;
<预期结果 : 0-9>
SELECT c1 FROM t_target_024b WHERE id = 15;
<预期结果 : 9 0:00:00>
SELECT c1 FROM t_target_024c WHERE id = 15;
<预期结果 : 9:00:00>
SELECT c1 FROM t_target_024d WHERE id = 15;
<预期结果 : 0:09:00>
SELECT c1 FROM t_target_024e WHERE id = 15;
<预期结果 : 0:00:09>
SELECT c1 FROM t_target_024f WHERE id = 15;
<预期结果 : 0-9>
SELECT c1 FROM t_target_024g WHERE id = 15;
<预期结果 : 9:00:00>
SELECT c1 FROM t_target_024h WHERE id = 15;
<预期结果 : 0:09:00>
SELECT c1 FROM t_target_024i WHERE id = 15;
<预期结果 : 0:00:09>
SELECT c1 FROM t_target_024j WHERE id = 15;
<预期结果 : 0:09:00>
SELECT c1 FROM t_target_024k WHERE id = 15;
<预期结果 : 0:00:09>
SELECT c1 FROM t_target_024l WHERE id = 15;
<预期结果 : 0:00:09>
SELECT c1 FROM t_target_024m WHERE id = 15;

// PL/SQL 执行部分插入数据与声明数据类型不一致不可隐式转换
DECLARE
val_a BOOLEAN := TRUE;
val_b BOOLEAN := TRUE;
val_c BOOLEAN := TRUE;
val_d BOOLEAN := TRUE;
val_e BOOLEAN := TRUE;
val_f BOOLEAN := TRUE;
val_g BOOLEAN := TRUE;
val_h BOOLEAN := TRUE;
val_i BOOLEAN := TRUE;
val_j BOOLEAN := TRUE;
val_k BOOLEAN := TRUE;
val_l BOOLEAN := TRUE;
val_m BOOLEAN := TRUE;
BEGIN
INSERT INTO t_target_024a VALUES (16 , val_a);
INSERT INTO t_target_024b VALUES (16 , val_b);
INSERT INTO t_target_024c VALUES (16 , val_c);
INSERT INTO t_target_024d VALUES (16 , val_d);
INSERT INTO t_target_024e VALUES (16 , val_e);
INSERT INTO t_target_024f VALUES (16 , val_f);
INSERT INTO t_target_024g VALUES (16 , val_g);
INSERT INTO t_target_024h VALUES (16 , val_h);
INSERT INTO t_target_024i VALUES (16 , val_i);
INSERT INTO t_target_024j VALUES (16 , val_j);
INSERT INTO t_target_024k VALUES (16 , val_k);
INSERT INTO t_target_024l VALUES (16 , val_l);
INSERT INTO t_target_024m VALUES (16 , val_m);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

DELETE FROM t_target_024a WHERE id > 10;
DELETE FROM t_target_024b WHERE id > 10;
DELETE FROM t_target_024c WHERE id > 10;
DELETE FROM t_target_024d WHERE id > 10;
DELETE FROM t_target_024e WHERE id > 10;
DELETE FROM t_target_024f WHERE id > 10;
DELETE FROM t_target_024g WHERE id > 10;
DELETE FROM t_target_024h WHERE id > 10;
DELETE FROM t_target_024i WHERE id > 10;
DELETE FROM t_target_024j WHERE id > 10;
DELETE FROM t_target_024k WHERE id > 10;
DELETE FROM t_target_024l WHERE id > 10;
DELETE FROM t_target_024m WHERE id > 10;

INSERT ALL INTO t_target_024a(id ,  c1) INTO t_stage_024a(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024b(id ,  c1) INTO t_stage_024b(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024c(id ,  c1) INTO t_stage_024c(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024d(id ,  c1) INTO t_stage_024d(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024e(id ,  c1) INTO t_stage_024e(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024f(id ,  c1) INTO t_stage_024f(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024g(id ,  c1) INTO t_stage_024g(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024h(id ,  c1) INTO t_stage_024h(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024i(id ,  c1) INTO t_stage_024i(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024j(id ,  c1) INTO t_stage_024j(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024k(id ,  c1) INTO t_stage_024k(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024l(id ,  c1) INTO t_stage_024l(id ,  c1) SELECT 3 , '999' FROM dual;
INSERT ALL INTO t_target_024m(id ,  c1) INTO t_stage_024m(id ,  c1) SELECT 3 , '999' FROM dual;

//查询内容
<预期结果 : 1 | 9-0 / 2 | 99-0 / 3 | 999-0>
SELECT * FROM t_target_024a ORDER BY id;
<预期结果 : 1 | 0-9 / 2 | 8-3 / 3 | 83-3>
SELECT * FROM t_target_024b ORDER BY id;
<预期结果 : 1 | 9 0:00:00 / 2 | 99 0:00:00 / 3 | 999 0:00:00>
SELECT * FROM t_target_024c ORDER BY id;
<预期结果 : 1 | 9:00:00 / 2 | 99:00:00 / 3 | 999:00:00>
SELECT * FROM t_target_024d ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_target_024e ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_target_024f ORDER BY id;
<预期结果 : 1 | 0-9 / 2 | 8-3 / 3 | 83-3>
SELECT * FROM t_target_024g ORDER BY id;
<预期结果 : 1 | 9:00:00 / 2 | 4 3:00:00 / 3 | 41 15:00:00>
SELECT * FROM t_target_024h ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_target_024i ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_target_024j ORDER BY id;
<预期结果 : 1 | 0:09:00 / 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_target_024k ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_target_024l ORDER BY id;
<预期结果 : 1 | 0:00:09 / 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_target_024m ORDER BY id;

//删除表
DROP TABLE t_target_024a;
DROP TABLE t_target_024b;
DROP TABLE t_target_024c;
DROP TABLE t_target_024d;
DROP TABLE t_target_024e;
DROP TABLE t_target_024f;
DROP TABLE t_target_024g;
DROP TABLE t_target_024h;
DROP TABLE t_target_024i;
DROP TABLE t_target_024j;
DROP TABLE t_target_024k;
DROP TABLE t_target_024l;
DROP TABLE t_target_024m;
DROP TABLE t_stage_024a;
DROP TABLE t_stage_024b;
DROP TABLE t_stage_024c;
DROP TABLE t_stage_024d;
DROP TABLE t_stage_024e;
DROP TABLE t_stage_024f;
DROP TABLE t_stage_024g;
DROP TABLE t_stage_024h;
DROP TABLE t_stage_024i;
DROP TABLE t_stage_024j;
DROP TABLE t_stage_024k;
DROP TABLE t_stage_024l;
DROP TABLE t_stage_024m;

!4 XG-TYPE-INTERVAL-TABLE-025 变量与传参插入
CREATE TABLE t_table_025a (c1 INTERVAL YEAR);
CREATE TABLE t_table_025b (c1 INTERVAL MONTH);
CREATE TABLE t_table_025c (c1 INTERVAL DAY);
CREATE TABLE t_table_025d (c1 INTERVAL HOUR);
CREATE TABLE t_table_025e (c1 INTERVAL MINUTE);
CREATE TABLE t_table_025f (c1 INTERVAL SECOND);
CREATE TABLE t_table_025g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_025h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_025i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_025j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_025k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_025l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_025m (c1 INTERVAL MINUTE TO SECOND);

!|Set Parameter|my_interval|'9'|

//传参插入
INSERT INTO t_table_025a VALUES (@my_interval);
INSERT INTO t_table_025b VALUES (@my_interval);
INSERT INTO t_table_025c VALUES (@my_interval);
INSERT INTO t_table_025d VALUES (@my_interval);
INSERT INTO t_table_025e VALUES (@my_interval);
INSERT INTO t_table_025f VALUES (@my_interval);
INSERT INTO t_table_025g VALUES (@my_interval);
INSERT INTO t_table_025h VALUES (@my_interval);
INSERT INTO t_table_025i VALUES (@my_interval);
INSERT INTO t_table_025j VALUES (@my_interval);
INSERT INTO t_table_025k VALUES (@my_interval);
INSERT INTO t_table_025l VALUES (@my_interval);
INSERT INTO t_table_025m VALUES (@my_interval);

//查询内容
<预期结果 : 9-0>
SELECT * FROM t_table_025a;
<预期结果 : 0-9>
SELECT * FROM t_table_025b;
<预期结果 : 9 0:00:00>
SELECT * FROM t_table_025c;
<预期结果 : 9:00:00>
SELECT * FROM t_table_025d;
<预期结果 : 0:09:00>
SELECT * FROM t_table_025e;
<预期结果 : 0:00:09>
SELECT * FROM t_table_025f;
<预期结果 : 0-9>
SELECT * FROM t_table_025g;
<预期结果 : 9:00:00>
SELECT * FROM t_table_025h;
<预期结果 : 0:09:00>
SELECT * FROM t_table_025i;
<预期结果 : 0:00:09>
SELECT * FROM t_table_025j;
<预期结果 : 0:09:00>
SELECT * FROM t_table_025k;
<预期结果 : 0:00:09>
SELECT * FROM t_table_025l;
<预期结果 : 0:00:09>
SELECT * FROM t_table_025m;

//删除表
DROP TABLE t_table_025a;
DROP TABLE t_table_025b;
DROP TABLE t_table_025c;
DROP TABLE t_table_025d;
DROP TABLE t_table_025e;
DROP TABLE t_table_025f;
DROP TABLE t_table_025g;
DROP TABLE t_table_025h;
DROP TABLE t_table_025i;
DROP TABLE t_table_025j;
DROP TABLE t_table_025k;
DROP TABLE t_table_025l;
DROP TABLE t_table_025m;

!4 XG-TYPE-INTERVAL-TABLE-026 类型混合与视图插入
//创建所有类型表
CREATE TYPE udt_type AS OBJECT(a INT,b VARCHAR);

CREATE TABLE t_all_data_type(
v_int INTEGER,
v_bigint BIGINT,
v_float FLOAT,
v_double DOUBLE,
v_tinyint TINYINT,
v_smallint SMALLINT,
v_numeric NUMERIC,
v_char CHAR,
v_varchar VARCHAR,
v_clob CLOB,
v_blob BLOB,
v_guid GUID,
v_boolean BOOLEAN,
v_binary BINARY,
v_rowversion ROWVERSION,
v_date DATE,
v_datetime DATETIME,
v_dz DATETIME WITH TIME ZONE,
v_time TIME,
v_tz TIME WITH TIME ZONE,
v_year INTERVAL YEAR,
v_month INTERVAL MONTH,
v_day INTERVAL DAY,
v_hour INTERVAL HOUR,
v_minute INTERVAL MINUTE,
v_second INTERVAL SECOND,
v_y2m INTERVAL YEAR TO MONTH,
v_d2h INTERVAL DAY TO HOUR,
v_d2m INTERVAL DAY TO MINUTE,
v_d2s INTERVAL DAY TO SECOND,
v_h2m INTERVAL HOUR TO MINUTE,
v_h2s INTERVAL HOUR TO SECOND,
v_m2s INTERVAL MINUTE TO SECOND,
v_rowid ROWID,
v_udt UDT_TYPE);

//创建混合类型视图
CREATE VIEW v_all_data_type AS SELECT * FROM t_all_data_type;

//创建会话变量
!|Set Parameter|val_year|'9'|
!|Set Parameter|val_month|'9'|
!|Set Parameter|val_day|'9'|
!|Set Parameter|val_hour|'9'|
!|Set Parameter|val_minute|'9'|
!|Set Parameter|val_second|'9'|
!|Set Parameter|val_y2m|'9'|
!|Set Parameter|val_d2h|'9'|
!|Set Parameter|val_d2m|'9'|
!|Set Parameter|val_d2s|'9'|
!|Set Parameter|val_h2m|'9'|
!|Set Parameter|val_h2s|'9'|
!|Set Parameter|val_m2s|'9'|

//插入数据
INSERT INTO v_all_data_type VALUES(
1,
2,
3.0,
5.55,
2,
5,
6.66,
'c',
'varchar',
'123455678910',
null,
sys_guid(),
true,
'123456789',
null,
'2001-1-1',
'2002-01-01 12:00:00',
'2001-1-1 12:00:00 +08:00',
'10:00:00',
'08:00:00 +08:00',
@val_year,
@val_month,
@val_day,
@val_hour,
@val_minute,
@val_second,
@val_y2m,
@val_d2h,
@val_d2m,
@val_d2s,
@val_h2m,
@val_h2s,
@val_m2s,
null,
udt_type(66,'one')
)

//查询内容
SELECT * FROM v_all_data_type;

//删除视图
DROP VIEW v_all_data_type;

//删除表
DROP TABLE t_all_data_type;

!4 XG-TYPE-INTERVAL-TABLE-027 基础赋值与默认值更新
CREATE TABLE t_table_027a (id INT PRIMARY KEY , c1 INTERVAL YEAR DEFAULT '9' , c2 INTERVAL YEAR);
CREATE TABLE t_table_027b (id INT PRIMARY KEY , c1 INTERVAL MONTH DEFAULT '9' , c2 INTERVAL MONTH);
CREATE TABLE t_table_027c (id INT PRIMARY KEY , c1 INTERVAL DAY DEFAULT '9' , c2 INTERVAL DAY);
CREATE TABLE t_table_027d (id INT PRIMARY KEY , c1 INTERVAL HOUR DEFAULT '9' , c2 INTERVAL HOUR);
CREATE TABLE t_table_027e (id INT PRIMARY KEY , c1 INTERVAL MINUTE DEFAULT '9' , c2 INTERVAL MINUTE);
CREATE TABLE t_table_027f (id INT PRIMARY KEY , c1 INTERVAL SECOND DEFAULT '9' , c2 INTERVAL SECOND);
CREATE TABLE t_table_027g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH DEFAULT '9' , c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_027h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR DEFAULT '9' , c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_027i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE DEFAULT '9' , c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_027j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND DEFAULT '9' , c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_027k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE DEFAULT '9' , c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_027l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND DEFAULT '9' , c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_027m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND DEFAULT '9' , c2 INTERVAL MINUTE TO SECOND);

//插入数据覆盖默认值
INSERT INTO t_table_027a VALUES (1 , '99' , '99');
INSERT INTO t_table_027b VALUES (1 , '99' , '99');
INSERT INTO t_table_027c VALUES (1 , '99' , '99');
INSERT INTO t_table_027d VALUES (1 , '99' , '99');
INSERT INTO t_table_027e VALUES (1 , '99' , '99');
INSERT INTO t_table_027f VALUES (1 , '99' , '99');
INSERT INTO t_table_027g VALUES (1 , '99' , '99');
INSERT INTO t_table_027h VALUES (1 , '99' , '99');
INSERT INTO t_table_027i VALUES (1 , '99' , '99');
INSERT INTO t_table_027j VALUES (1 , '99' , '99');
INSERT INTO t_table_027k VALUES (1 , '99' , '99');
INSERT INTO t_table_027l VALUES (1 , '99' , '99');
INSERT INTO t_table_027m VALUES (1 , '99' , '99');

//更新数据覆盖 c2
UPDATE t_table_027a SET c2 = '999' WHERE id = 1;
UPDATE t_table_027b SET c2 = '999' WHERE id = 1;
UPDATE t_table_027c SET c2 = '999' WHERE id = 1;
UPDATE t_table_027d SET c2 = '999' WHERE id = 1;
UPDATE t_table_027e SET c2 = '999' WHERE id = 1;
UPDATE t_table_027f SET c2 = '999' WHERE id = 1;
UPDATE t_table_027g SET c2 = '999' WHERE id = 1;
UPDATE t_table_027h SET c2 = '999' WHERE id = 1;
UPDATE t_table_027i SET c2 = '999' WHERE id = 1;
UPDATE t_table_027j SET c2 = '999' WHERE id = 1;
UPDATE t_table_027k SET c2 = '999' WHERE id = 1;
UPDATE t_table_027l SET c2 = '999' WHERE id = 1;
UPDATE t_table_027m SET c2 = '999' WHERE id = 1;

//查询内容
<预期结果 : 1 | 99-0 | 999-0>
SELECT * FROM t_table_027a;
<预期结果 : 1 | 8-3 | 83-3>
SELECT * FROM t_table_027b;
<预期结果 : 1 | 99 0:00:00 | 999 0:00:00>
SELECT * FROM t_table_027c;
<预期结果 : 1 | 99:00:00 | 999:00:00>
SELECT * FROM t_table_027d;
<预期结果 : 1 | 1:39:00 | 16:39:00>
SELECT * FROM t_table_027e;
<预期结果 : 1 | 0:01:39 | 0:16:39>
SELECT * FROM t_table_027f;
<预期结果 : 1 | 8-3 | 83-3>
SELECT * FROM t_table_027g;
<预期结果 : 1 | 4 3:00:00 | 41 15:00:00>
SELECT * FROM t_table_027h;
<预期结果 : 1 | 1:39:00 | 16:39:00>
SELECT * FROM t_table_027i;
<预期结果 : 1 | 0:01:39 | 0:16:39>
SELECT * FROM t_table_027j;
<预期结果 : 1 | 1:39:00 | 16:39:00>
SELECT * FROM t_table_027k;
<预期结果 : 1 | 0:01:39 | 0:16:39>
SELECT * FROM t_table_027l;
<预期结果 : 1 | 0:01:39 | 0:16:39>
SELECT * FROM t_table_027m;

//更新 c2 值为 NULL
UPDATE t_table_027a SET c2 = NULL WHERE id = 1;
UPDATE t_table_027b SET c2 = NULL WHERE id = 1;
UPDATE t_table_027c SET c2 = NULL WHERE id = 1;
UPDATE t_table_027d SET c2 = NULL WHERE id = 1;
UPDATE t_table_027e SET c2 = NULL WHERE id = 1;
UPDATE t_table_027f SET c2 = NULL WHERE id = 1;
UPDATE t_table_027g SET c2 = NULL WHERE id = 1;
UPDATE t_table_027h SET c2 = NULL WHERE id = 1;
UPDATE t_table_027i SET c2 = NULL WHERE id = 1;
UPDATE t_table_027j SET c2 = NULL WHERE id = 1;
UPDATE t_table_027k SET c2 = NULL WHERE id = 1;
UPDATE t_table_027l SET c2 = NULL WHERE id = 1;
UPDATE t_table_027m SET c2 = NULL WHERE id = 1;

//查询内容
<预期结果 : 1 | 99-0 | null>
SELECT * FROM t_table_027a;
<预期结果 : 1 | 8-3 | null>
SELECT * FROM t_table_027b;
<预期结果 : 1 | 99 0:00:00 | null>
SELECT * FROM t_table_027c;
<预期结果 : 1 | 99:00:00 | null>
SELECT * FROM t_table_027d;
<预期结果 : 1 | 1:39:00 | null>
SELECT * FROM t_table_027e;
<预期结果 : 1 | 0:01:39 | null>
SELECT * FROM t_table_027f;
<预期结果 : 1 | 8-3 | null>
SELECT * FROM t_table_027g;
<预期结果 : 1 | 4 3:00:00 | null>
SELECT * FROM t_table_027h;
<预期结果 : 1 | 1:39:00 | null>
SELECT * FROM t_table_027i;
<预期结果 : 1 | 0:01:39 | null>
SELECT * FROM t_table_027j;
<预期结果 : 1 | 1:39:00 | null>
SELECT * FROM t_table_027k;
<预期结果 : 1 | 0:01:39 | null>
SELECT * FROM t_table_027l;
<预期结果 : 1 | 0:01:39 | null>
SELECT * FROM t_table_027m;

//更新 c1 值为默认值
UPDATE t_table_027a SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027b SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027c SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027d SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027e SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027f SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027g SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027h SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027i SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027j SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027k SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027l SET c1 = DEFAULT WHERE id = 1;
UPDATE t_table_027m SET c1 = DEFAULT WHERE id = 1;

//查询内容
<预期结果 : 1 | 9-0 | null>
SELECT * FROM t_table_027a;
<预期结果 : 1 | 0-9 | null>
SELECT * FROM t_table_027b;
<预期结果 : 1 | 9 0:00:00 | null>
SELECT * FROM t_table_027c;
<预期结果 : 1 | 9:00:00 | null>
SELECT * FROM t_table_027d;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027e;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027f;
<预期结果 : 1 | 0-9 | null>
SELECT * FROM t_table_027g;
<预期结果 : 1 | 9:00:00 | null>
SELECT * FROM t_table_027h;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027i;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027j;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027k;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027l;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027m;

//更新 c2 值为默认值
UPDATE t_table_027a SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027b SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027c SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027d SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027e SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027f SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027g SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027h SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027i SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027j SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027k SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027l SET c2 = DEFAULT WHERE id = 1;
UPDATE t_table_027m SET c2 = DEFAULT WHERE id = 1;

//查询内容
<预期结果 : 1 | 9-0 | null>
SELECT * FROM t_table_027a;
<预期结果 : 1 | 0-9 | null>
SELECT * FROM t_table_027b;
<预期结果 : 1 | 9 0:00:00 | null>
SELECT * FROM t_table_027c;
<预期结果 : 1 | 9:00:00 | null>
SELECT * FROM t_table_027d;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027e;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027f;
<预期结果 : 1 | 0-9 | null>
SELECT * FROM t_table_027g;
<预期结果 : 1 | 9:00:00 | null>
SELECT * FROM t_table_027h;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027i;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027j;
<预期结果 : 1 | 0:09:00 | null>
SELECT * FROM t_table_027k;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027l;
<预期结果 : 1 | 0:00:09 | null>
SELECT * FROM t_table_027m;

//删除表
DROP TABLE t_table_027a;
DROP TABLE t_table_027b;
DROP TABLE t_table_027c;
DROP TABLE t_table_027d;
DROP TABLE t_table_027e;
DROP TABLE t_table_027f;
DROP TABLE t_table_027g;
DROP TABLE t_table_027h;
DROP TABLE t_table_027i;
DROP TABLE t_table_027j;
DROP TABLE t_table_027k;
DROP TABLE t_table_027l;
DROP TABLE t_table_027m;

!4 XG-TYPE-INTERVAL-TABLE-028 批量与复杂逻辑更新
//创建目标表
CREATE TABLE t_target_028a (id INT PRIMARY KEY , c1 INTERVAL YEAR);
CREATE TABLE t_target_028b (id INT PRIMARY KEY , c1 INTERVAL MONTH);
CREATE TABLE t_target_028c (id INT PRIMARY KEY , c1 INTERVAL DAY);
CREATE TABLE t_target_028d (id INT PRIMARY KEY , c1 INTERVAL HOUR);
CREATE TABLE t_target_028e (id INT PRIMARY KEY , c1 INTERVAL MINUTE);
CREATE TABLE t_target_028f (id INT PRIMARY KEY , c1 INTERVAL SECOND);
CREATE TABLE t_target_028g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_target_028h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_target_028i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_target_028j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_target_028k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_target_028l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_target_028m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND);

//创建源表
CREATE TABLE t_src_028a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_src_028b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_src_028c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_src_028d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_src_028e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_src_028f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_src_028g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_src_028h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_src_028i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_src_028j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_src_028k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_src_028l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_src_028m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向目标表插入数据
INSERT INTO t_target_028a VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028b VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028c VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028d VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028e VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028f VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028g VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028h VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028i VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028j VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028k VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028l VALUES (1 , '9') , (2 , '99');
INSERT INTO t_target_028m VALUES (1 , '9') , (2 , '99');

//向源表插入数据
INSERT INTO t_src_028a VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028b VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028c VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028d VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028e VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028f VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028g VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028h VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028i VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028j VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028k VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028l VALUES (1 , '6') , (2 , '66');
INSERT INTO t_src_028m VALUES (1 , '6') , (2 , '66');

//更新目标表 c1 值为源表 c1 值
UPDATE t_target_028a SET c1 = (SELECT c1 FROM t_src_028a WHERE t_src_028a.id = t_target_028a.id);
UPDATE t_target_028b SET c1 = (SELECT c1 FROM t_src_028b WHERE t_src_028b.id = t_target_028b.id);
UPDATE t_target_028c SET c1 = (SELECT c1 FROM t_src_028c WHERE t_src_028c.id = t_target_028c.id);
UPDATE t_target_028d SET c1 = (SELECT c1 FROM t_src_028d WHERE t_src_028d.id = t_target_028d.id);
UPDATE t_target_028e SET c1 = (SELECT c1 FROM t_src_028e WHERE t_src_028e.id = t_target_028e.id);
UPDATE t_target_028f SET c1 = (SELECT c1 FROM t_src_028f WHERE t_src_028f.id = t_target_028f.id);
UPDATE t_target_028g SET c1 = (SELECT c1 FROM t_src_028g WHERE t_src_028g.id = t_target_028g.id);
UPDATE t_target_028h SET c1 = (SELECT c1 FROM t_src_028h WHERE t_src_028h.id = t_target_028h.id);
UPDATE t_target_028i SET c1 = (SELECT c1 FROM t_src_028i WHERE t_src_028i.id = t_target_028i.id);
UPDATE t_target_028j SET c1 = (SELECT c1 FROM t_src_028j WHERE t_src_028j.id = t_target_028j.id);
UPDATE t_target_028k SET c1 = (SELECT c1 FROM t_src_028k WHERE t_src_028k.id = t_target_028k.id);
UPDATE t_target_028l SET c1 = (SELECT c1 FROM t_src_028l WHERE t_src_028l.id = t_target_028l.id);
UPDATE t_target_028m SET c1 = (SELECT c1 FROM t_src_028m WHERE t_src_028m.id = t_target_028m.id);

//查询内容
<预期结果 : 1 | 6-0 / 2 | 66-0>
SELECT * FROM t_target_028a;
<预期结果 : 1 | 0-6 / 2 | 5-6>
SELECT * FROM t_target_028b;
<预期结果 : 1 | 6 0:00:00 / 2 | 66 0:00:00>
SELECT * FROM t_target_028c;
<预期结果 : 1 | 6:00:00 / 2 | 66:00:00>
SELECT * FROM t_target_028d;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028e;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028f;
<预期结果 : 1 | 0-6 / 2 | 5-6>
SELECT * FROM t_target_028g;
<预期结果 : 1 | 6:00:00 / 2 | 2 18:00:00>
SELECT * FROM t_target_028h;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028i;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028j;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028k;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028l;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028m;

//MERGE 更新
MERGE INTO t_target_028a t USING t_src_028a s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028b t USING t_src_028b s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028c t USING t_src_028c s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028d t USING t_src_028d s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028e t USING t_src_028e s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028f t USING t_src_028f s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028g t USING t_src_028g s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028h t USING t_src_028h s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028i t USING t_src_028i s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028j t USING t_src_028j s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028k t USING t_src_028k s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028l t USING t_src_028l s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;
MERGE INTO t_target_028m t USING t_src_028m s ON (t.id = s.id) WHEN MATCHED THEN UPDATE SET t.c1=s.c1;

//查询内容
<预期结果 : 1 | 6-0 / 2 | 66-0>
SELECT * FROM t_target_028a;
<预期结果 : 1 | 0-6 / 2 | 5-6>
SELECT * FROM t_target_028b;
<预期结果 : 1 | 6 0:00:00 / 2 | 66 0:00:00>
SELECT * FROM t_target_028c;
<预期结果 : 1 | 6:00:00 / 2 | 66:00:00>
SELECT * FROM t_target_028d;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028e;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028f;
<预期结果 : 1 | 0-6 / 2 | 5-6>
SELECT * FROM t_target_028g;
<预期结果 : 1 | 6:00:00 / 2 | 2 18:00:00>
SELECT * FROM t_target_028h;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028i;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028j;
<预期结果 : 1 | 0:06:00 / 2 | 1:06:00>
SELECT * FROM t_target_028k;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028l;
<预期结果 : 1 | 0:00:06 / 2 | 0:01:06>
SELECT * FROM t_target_028m;

//UPDATE 更新
UPDATE t_target_028a SET c1 = '999' WHERE c1 = '6-0';
UPDATE t_target_028b SET c1 = '999' WHERE c1 = '0-6';
UPDATE t_target_028c SET c1 = '999' WHERE c1 = '6 0:00:00';
UPDATE t_target_028d SET c1 = '999' WHERE c1 = '6:00:00';
UPDATE t_target_028e SET c1 = '999' WHERE c1 = '0:06:00';
UPDATE t_target_028f SET c1 = '999' WHERE c1 = '0:00:06';
UPDATE t_target_028g SET c1 = '999' WHERE c1 = '0-6';
UPDATE t_target_028h SET c1 = '999' WHERE c1 = '6:00:00';
UPDATE t_target_028i SET c1 = '999' WHERE c1 = '0:06:00';
UPDATE t_target_028j SET c1 = '999' WHERE c1 = '0:00:06';
UPDATE t_target_028k SET c1 = '999' WHERE c1 = '0:06:00';
UPDATE t_target_028l SET c1 = '999' WHERE c1 = '0:00:06';
UPDATE t_target_028m SET c1 = '999' WHERE c1 = '0:00:06';

//查询内容
<预期结果 : 1 | 999-0 / 2 | 66-0>
SELECT * FROM t_target_028a;
<预期结果 : 1 | 83-3 / 2 | 5-6>
SELECT * FROM t_target_028b;
<预期结果 : 1 | 999 0:00:00 / 2 | 66 0:00:00>
SELECT * FROM t_target_028c;
<预期结果 : 1 | 999:00:00 / 2 | 66:00:00>
SELECT * FROM t_target_028d;
<预期结果 : 1 | 16:39:00 / 2 | 1:06:00>
SELECT * FROM t_target_028e;
<预期结果 : 1 | 0:16:39 / 2 | 0:01:06>
SELECT * FROM t_target_028f;
<预期结果 : 1 | 83-3 / 2 | 5-6>
SELECT * FROM t_target_028g;
<预期结果 : 1 | 41 15:00:00 / 2 | 2 18:00:00>
SELECT * FROM t_target_028h;
<预期结果 : 1 | 16:39:00 / 2 | 1:06:00>
SELECT * FROM t_target_028i;
<预期结果 : 1 | 0:16:39 / 2 | 0:01:06>
SELECT * FROM t_target_028j;
<预期结果 : 1 | 16:39:00 / 2 | 1:06:00>
SELECT * FROM t_target_028k;
<预期结果 : 1 | 0:16:39 / 2 | 0:01:06>
SELECT * FROM t_target_028l;
<预期结果 : 1 | 0:16:39 / 2 | 0:01:06>
SELECT * FROM t_target_028m;

//删除表
DROP TABLE t_target_028a;
DROP TABLE t_target_028b;
DROP TABLE t_target_028c;
DROP TABLE t_target_028d;
DROP TABLE t_target_028e;
DROP TABLE t_target_028f;
DROP TABLE t_target_028g;
DROP TABLE t_target_028h;
DROP TABLE t_target_028i;
DROP TABLE t_target_028j;
DROP TABLE t_target_028k;
DROP TABLE t_target_028l;
DROP TABLE t_target_028m;
DROP TABLE t_src_028a;
DROP TABLE t_src_028b;
DROP TABLE t_src_028c;
DROP TABLE t_src_028d;
DROP TABLE t_src_028e;
DROP TABLE t_src_028f;
DROP TABLE t_src_028g;
DROP TABLE t_src_028h;
DROP TABLE t_src_028i;
DROP TABLE t_src_028j;
DROP TABLE t_src_028k;
DROP TABLE t_src_028l;
DROP TABLE t_src_028m;

!4 XG-TYPE-INTERVAL-TABLE-029 变量传参与pl/sql更新
CREATE TABLE t_table_029a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_029b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_029c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_029d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_029e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_029f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_029g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_029h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_029i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_029j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_029k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_029l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_029m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_029a VALUES (1 , '9');
INSERT INTO t_table_029b VALUES (1 , '9');
INSERT INTO t_table_029c VALUES (1 , '9');
INSERT INTO t_table_029d VALUES (1 , '9');
INSERT INTO t_table_029e VALUES (1 , '9');
INSERT INTO t_table_029f VALUES (1 , '9');
INSERT INTO t_table_029g VALUES (1 , '9');
INSERT INTO t_table_029h VALUES (1 , '9');
INSERT INTO t_table_029i VALUES (1 , '9');
INSERT INTO t_table_029j VALUES (1 , '9');
INSERT INTO t_table_029k VALUES (1 , '9');
INSERT INTO t_table_029l VALUES (1 , '9');
INSERT INTO t_table_029m VALUES (1 , '9');

!|Set Parameter|target_interval|'99'|

//传参更新
UPDATE t_table_029a SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029b SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029c SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029d SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029e SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029f SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029g SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029h SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029i SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029j SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029k SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029l SET c1 = @target_interval WHERE id = 1; 
UPDATE t_table_029m SET c1 = @target_interval WHERE id = 1; 

//查询内容
<预期结果 : 1 | 99-0>
SELECT * FROM t_table_029a;
<预期结果 : 1 | 8-3>
SELECT * FROM t_table_029b;
<预期结果 : 1 | 99 0:00:00>
SELECT * FROM t_table_029c;
<预期结果 : 1 | 99:00:00>
SELECT * FROM t_table_029d;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_029e;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_029f;
<预期结果 : 1 | 8-3>
SELECT * FROM t_table_029g;
<预期结果 : 1 | 4 3:00:00>
SELECT * FROM t_table_029h;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_029i;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_029j;
<预期结果 : 1 | 1:39:00>
SELECT * FROM t_table_029k;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_029l;
<预期结果 : 1 | 0:01:39>
SELECT * FROM t_table_029m;

// PL/SQL 声明部分定义类型与赋值数据类型匹配且数据值正常
DECLARE
val_a INTERVAL YEAR := '4';
val_b INTERVAL MONTH := '4';
val_c INTERVAL DAY := '4';
val_d INTERVAL HOUR := '4';
val_e INTERVAL MINUTE := '4';
val_f INTERVAL SECOND := '4';
val_g INTERVAL YEAR TO MONTH := '4';
val_h INTERVAL DAY TO HOUR := '4';
val_i INTERVAL DAY TO MINUTE := '4';
val_j INTERVAL DAY TO SECOND := '4';
val_k INTERVAL HOUR TO MINUTE := '4';
val_l INTERVAL HOUR TO SECOND := '4';
val_m INTERVAL MINUTE TO SECOND := '4';
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 4-0>
SELECT c1 FROM t_table_029a WHERE id = 1;
<预期结果 : 0-4>
SELECT c1 FROM t_table_029b WHERE id = 1;
<预期结果 : 4 0:00:00>
SELECT c1 FROM t_table_029c WHERE id = 1;
<预期结果 : 4:00:00>
SELECT c1 FROM t_table_029d WHERE id = 1;
<预期结果 : 0:04:00>
SELECT c1 FROM t_table_029e WHERE id = 1;
<预期结果 : 0:00:04>
SELECT c1 FROM t_table_029f WHERE id = 1;
<预期结果 : 0-4>
SELECT c1 FROM t_table_029g WHERE id = 1;
<预期结果 : 4:00:00>
SELECT c1 FROM t_table_029h WHERE id = 1;
<预期结果 : 0:04:00>
SELECT c1 FROM t_table_029i WHERE id = 1;
<预期结果 : 0:00:04>
SELECT c1 FROM t_table_029j WHERE id = 1;
<预期结果 : 0:04:00>
SELECT c1 FROM t_table_029k WHERE id = 1;
<预期结果 : 0:00:04>
SELECT c1 FROM t_table_029l WHERE id = 1;
<预期结果 : 0:00:04>
SELECT c1 FROM t_table_029m WHERE id = 1;

// PL/SQL 声明部分定义类型与赋值数据类型匹配且数据值超界
DECLARE
val_a INTERVAL YEAR := '1000000000';
val_b INTERVAL MONTH := '2147483648';
val_c INTERVAL DAY := '2147483648';
val_d INTERVAL HOUR := '1000000000';
val_e INTERVAL MINUTE := '1000000000';
val_f INTERVAL SECOND := '9223372036854.775808';
val_g_1 INTERVAL YEAR TO MONTH := '178956971-0';
val_g_2 INTERVAL YEAR TO MONTH := '0-12';
val_h_1 INTERVAL DAY TO HOUR := '89478486 0:00:00';
val_h_2 INTERVAL DAY TO HOUR := '0 2147483648:00:00';
val_i_1 INTERVAL DAY TO MINUTE := '1491309 0:00:00';
val_i_2 INTERVAL DAY TO MINUTE := '0 35791395:00:00';
val_i_3 INTERVAL DAY TO MINUTE := '0 0:60:00';
val_j_1 INTERVAL DAY TO SECOND := '106751992 0:00:00';
val_j_2 INTERVAL DAY TO SECOND := '0 2562047789:00:00';
val_j_3 INTERVAL DAY TO SECOND := '0 0:60:00';
val_j_4 INTERVAL DAY TO SECOND := '0 0:0:61';
val_k_1 INTERVAL HOUR TO MINUTE := '10000000:00:00';
val_k_2 INTERVAL HOUR TO MINUTE := '0:60:00';
val_l_1 INTERVAL HOUR TO SECOND := '2562047789:0:00';
val_l_2 INTERVAL HOUR TO SECOND := '0:60:00';
val_l_3 INTERVAL HOUR TO SECOND := '0:0:61';
val_m_1 INTERVAL MINUTE TO SECOND := '1000000000:00';
val_m_2 INTERVAL MINUTE TO SECOND := '0:61';
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g_1 WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g_2 WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h_1 WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h_2 WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i_1 WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i_2 WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i_3 WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j_1 WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j_2 WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j_3 WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j_4 WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k_1 WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k_2 WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l_1 WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l_2 WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l_3 WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m_1 WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m_2 WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

// PL/SQL 声明部分定义类型与赋值数据类型不匹配
DECLARE
val_a INTERVAL YEAR := true;
val_b INTERVAL MONTH := true;
val_c INTERVAL DAY := true;
val_d INTERVAL HOUR := true;
val_e INTERVAL MINUTE := true;
val_f INTERVAL SECOND := true;
val_g INTERVAL YEAR TO MONTH := true;
val_h INTERVAL DAY TO HOUR := true;
val_i INTERVAL DAY TO MINUTE := true;
val_j INTERVAL DAY TO SECOND := true;
val_k INTERVAL HOUR TO MINUTE := true;
val_l INTERVAL HOUR TO SECOND := true;
val_m INTERVAL MINUTE TO SECOND := true;
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

// PL/SQL 执行部分插入数据与声明数据类型一致
DECLARE
val_a INTERVAL YEAR := '5';
val_b INTERVAL MONTH := '5';
val_c INTERVAL DAY := '5';
val_d INTERVAL HOUR := '5';
val_e INTERVAL MINUTE := '5';
val_f INTERVAL SECOND := '5';
val_g INTERVAL YEAR TO MONTH := '5';
val_h INTERVAL DAY TO HOUR := '5';
val_i INTERVAL DAY TO MINUTE := '5';
val_j INTERVAL DAY TO SECOND := '5';
val_k INTERVAL HOUR TO MINUTE := '5';
val_l INTERVAL HOUR TO SECOND := '5';
val_m INTERVAL MINUTE TO SECOND := '5';
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 5-0>
SELECT c1 FROM t_table_029a WHERE id = 1;
<预期结果 : 0-5>
SELECT c1 FROM t_table_029b WHERE id = 1;
<预期结果 : 5 0:00:00>
SELECT c1 FROM t_table_029c WHERE id = 1;
<预期结果 : 5:00:00>
SELECT c1 FROM t_table_029d WHERE id = 1;
<预期结果 : 0:05:00>
SELECT c1 FROM t_table_029e WHERE id = 1;
<预期结果 : 0:00:05>
SELECT c1 FROM t_table_029f WHERE id = 1;
<预期结果 : 0-5>
SELECT c1 FROM t_table_029g WHERE id = 1;
<预期结果 : 5:00:00>
SELECT c1 FROM t_table_029h WHERE id = 1;
<预期结果 : 0:05:00>
SELECT c1 FROM t_table_029i WHERE id = 1;
<预期结果 : 0:00:05>
SELECT c1 FROM t_table_029j WHERE id = 1;
<预期结果 : 0:05:00>
SELECT c1 FROM t_table_029k WHERE id = 1;
<预期结果 : 0:00:05>
SELECT c1 FROM t_table_029l WHERE id = 1;
<预期结果 : 0:00:05>
SELECT c1 FROM t_table_029m WHERE id = 1;

// PL/SQL 执行部分插入数据与声明数据类型不一致但可隐式转换
DECLARE
val_a VARCHAR := '9';
val_b VARCHAR := '9';
val_c VARCHAR := '9';
val_d VARCHAR := '9';
val_e VARCHAR := '9';
val_f VARCHAR := '9';
val_g VARCHAR := '9';
val_h VARCHAR := '9';
val_i VARCHAR := '9';
val_j VARCHAR := '9';
val_k VARCHAR := '9';
val_l VARCHAR := '9';
val_m VARCHAR := '9';
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//查询内容
<预期结果 : 9-0>
SELECT c1 FROM t_table_029a WHERE id = 1;
<预期结果 : 0-9>
SELECT c1 FROM t_table_029b WHERE id = 1;
<预期结果 : 9 0:00:00>
SELECT c1 FROM t_table_029c WHERE id = 1;
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_029d WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_029e WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_029f WHERE id = 1;
<预期结果 : 0-9>
SELECT c1 FROM t_table_029g WHERE id = 1;
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_029h WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_029i WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_029j WHERE id = 1;
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_029k WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_029l WHERE id = 1;
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_029m WHERE id = 1;

// PL/SQL 执行部分插入数据与声明数据类型不一致不可隐式转换
DECLARE
val_a BOOLEAN := TRUE;
val_b BOOLEAN := TRUE;
val_c BOOLEAN := TRUE;
val_d BOOLEAN := TRUE;
val_e BOOLEAN := TRUE;
val_f BOOLEAN := TRUE;
val_g BOOLEAN := TRUE;
val_h BOOLEAN := TRUE;
val_i BOOLEAN := TRUE;
val_j BOOLEAN := TRUE;
val_k BOOLEAN := TRUE;
val_l BOOLEAN := TRUE;
val_m BOOLEAN := TRUE;
BEGIN
UPDATE t_table_029a SET c1 = val_a WHERE id = 1;
UPDATE t_table_029b SET c1 = val_b WHERE id = 1;
UPDATE t_table_029c SET c1 = val_c WHERE id = 1;
UPDATE t_table_029d SET c1 = val_d WHERE id = 1;
UPDATE t_table_029e SET c1 = val_e WHERE id = 1;
UPDATE t_table_029f SET c1 = val_f WHERE id = 1;
UPDATE t_table_029g SET c1 = val_g WHERE id = 1;
UPDATE t_table_029h SET c1 = val_h WHERE id = 1;
UPDATE t_table_029i SET c1 = val_i WHERE id = 1;
UPDATE t_table_029j SET c1 = val_j WHERE id = 1;
UPDATE t_table_029k SET c1 = val_k WHERE id = 1;
UPDATE t_table_029l SET c1 = val_l WHERE id = 1;
UPDATE t_table_029m SET c1 = val_m WHERE id = 1;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

//删除表
DROP TABLE t_table_029a;
DROP TABLE t_table_029b;
DROP TABLE t_table_029c;
DROP TABLE t_table_029d;
DROP TABLE t_table_029e;
DROP TABLE t_table_029f;
DROP TABLE t_table_029g;
DROP TABLE t_table_029h;
DROP TABLE t_table_029i;
DROP TABLE t_table_029j;
DROP TABLE t_table_029k;
DROP TABLE t_table_029l;
DROP TABLE t_table_029m;

!4 XG-TYPE-INTERVAL-TABLE-030 多表关联与节点同步验证
//创建主表
CREATE TABLE t_main_030a (id INT PRIMARY KEY , c1 INTERVAL YEAR);
CREATE TABLE t_main_030b (id INT PRIMARY KEY , c1 INTERVAL MONTH);
CREATE TABLE t_main_030c (id INT PRIMARY KEY , c1 INTERVAL DAY);
CREATE TABLE t_main_030d (id INT PRIMARY KEY , c1 INTERVAL HOUR);
CREATE TABLE t_main_030e (id INT PRIMARY KEY , c1 INTERVAL MINUTE);
CREATE TABLE t_main_030f (id INT PRIMARY KEY , c1 INTERVAL SECOND);
CREATE TABLE t_main_030g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_main_030h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_main_030i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_main_030j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_main_030k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_main_030l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_main_030m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND);

//创建子表
CREATE TABLE t_sub_030a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_sub_030b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_sub_030c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_sub_030d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_sub_030e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_sub_030f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_sub_030g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_sub_030h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_sub_030i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_sub_030j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_sub_030k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_sub_030l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_sub_030m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向主表插入数据
INSERT INTO t_main_030a VALUES (1 , '9');
INSERT INTO t_main_030b VALUES (1 , '9');
INSERT INTO t_main_030c VALUES (1 , '9');
INSERT INTO t_main_030d VALUES (1 , '9');
INSERT INTO t_main_030e VALUES (1 , '9');
INSERT INTO t_main_030f VALUES (1 , '9');
INSERT INTO t_main_030g VALUES (1 , '9');
INSERT INTO t_main_030h VALUES (1 , '9');
INSERT INTO t_main_030i VALUES (1 , '9');
INSERT INTO t_main_030j VALUES (1 , '9');
INSERT INTO t_main_030k VALUES (1 , '9');
INSERT INTO t_main_030l VALUES (1 , '9');
INSERT INTO t_main_030m VALUES (1 , '9');

//向子表插入数据
INSERT INTO t_sub_030a VALUES (1 , '6');
INSERT INTO t_sub_030b VALUES (1 , '6');
INSERT INTO t_sub_030c VALUES (1 , '6');
INSERT INTO t_sub_030d VALUES (1 , '6');
INSERT INTO t_sub_030e VALUES (1 , '6');
INSERT INTO t_sub_030f VALUES (1 , '6');
INSERT INTO t_sub_030g VALUES (1 , '6');
INSERT INTO t_sub_030h VALUES (1 , '6');
INSERT INTO t_sub_030i VALUES (1 , '6');
INSERT INTO t_sub_030j VALUES (1 , '6');
INSERT INTO t_sub_030k VALUES (1 , '6');
INSERT INTO t_sub_030l VALUES (1 , '6');
INSERT INTO t_sub_030m VALUES (1 , '6');

//更新数据
UPDATE t_main_030a SET c1 = t_sub_030a.c1 FROM t_sub_030a WHERE t_main_030a.id = t_sub_030a.id;
UPDATE t_main_030b SET c1 = t_sub_030b.c1 FROM t_sub_030b WHERE t_main_030b.id = t_sub_030b.id;
UPDATE t_main_030c SET c1 = t_sub_030c.c1 FROM t_sub_030c WHERE t_main_030c.id = t_sub_030c.id;
UPDATE t_main_030d SET c1 = t_sub_030d.c1 FROM t_sub_030d WHERE t_main_030d.id = t_sub_030d.id;
UPDATE t_main_030e SET c1 = t_sub_030e.c1 FROM t_sub_030e WHERE t_main_030e.id = t_sub_030e.id;
UPDATE t_main_030f SET c1 = t_sub_030f.c1 FROM t_sub_030f WHERE t_main_030f.id = t_sub_030f.id;
UPDATE t_main_030g SET c1 = t_sub_030g.c1 FROM t_sub_030g WHERE t_main_030g.id = t_sub_030g.id;
UPDATE t_main_030h SET c1 = t_sub_030h.c1 FROM t_sub_030h WHERE t_main_030h.id = t_sub_030h.id;
UPDATE t_main_030i SET c1 = t_sub_030i.c1 FROM t_sub_030i WHERE t_main_030i.id = t_sub_030i.id;
UPDATE t_main_030j SET c1 = t_sub_030j.c1 FROM t_sub_030j WHERE t_main_030j.id = t_sub_030j.id;
UPDATE t_main_030k SET c1 = t_sub_030k.c1 FROM t_sub_030k WHERE t_main_030k.id = t_sub_030k.id;
UPDATE t_main_030l SET c1 = t_sub_030l.c1 FROM t_sub_030l WHERE t_main_030l.id = t_sub_030l.id;
UPDATE t_main_030m SET c1 = t_sub_030m.c1 FROM t_sub_030m WHERE t_main_030m.id = t_sub_030m.id;

//切换节点
!|commit|

!|bind current db connect|node2|

//查询内容
<预期结果 : 6-0>
SELECT c1 FROM t_main_030a WHERE id = 1;
<预期结果 : 0-6>
SELECT c1 FROM t_main_030b WHERE id = 1;
<预期结果 : 6 0:00:00>
SELECT c1 FROM t_main_030c WHERE id = 1;
<预期结果 : 6:00:00>
SELECT c1 FROM t_main_030d WHERE id = 1;
<预期结果 : 0:06:00>
SELECT c1 FROM t_main_030e WHERE id = 1;
<预期结果 : 0:00:06>
SELECT c1 FROM t_main_030f WHERE id = 1;
<预期结果 : 0-6>
SELECT c1 FROM t_main_030g WHERE id = 1;
<预期结果 : 6:00:00>
SELECT c1 FROM t_main_030h WHERE id = 1;
<预期结果 : 0:06:00>
SELECT c1 FROM t_main_030i WHERE id = 1;
<预期结果 : 0:00:06>
SELECT c1 FROM t_main_030j WHERE id = 1;
<预期结果 : 0:06:00>
SELECT c1 FROM t_main_030k WHERE id = 1;
<预期结果 : 0:00:06>
SELECT c1 FROM t_main_030l WHERE id = 1;
<预期结果 : 0:00:06>
SELECT c1 FROM t_main_030m WHERE id = 1;

//切回默认节点
!|commit|

!|bind current db connect|default|

//删除表
DROP TABLE t_main_030a;
DROP TABLE t_main_030b;
DROP TABLE t_main_030c;
DROP TABLE t_main_030d;
DROP TABLE t_main_030e;
DROP TABLE t_main_030f;
DROP TABLE t_main_030g;
DROP TABLE t_main_030h;
DROP TABLE t_main_030i;
DROP TABLE t_main_030j;
DROP TABLE t_main_030k;
DROP TABLE t_main_030l;
DROP TABLE t_main_030m;
DROP TABLE t_sub_030a;
DROP TABLE t_sub_030b;
DROP TABLE t_sub_030c;
DROP TABLE t_sub_030d;
DROP TABLE t_sub_030e;
DROP TABLE t_sub_030f;
DROP TABLE t_sub_030g;
DROP TABLE t_sub_030h;
DROP TABLE t_sub_030i;
DROP TABLE t_sub_030j;
DROP TABLE t_sub_030k;
DROP TABLE t_sub_030l;
DROP TABLE t_sub_030m;

!4 XG-TYPE-INTERVAL-TABLE-031 基础过滤与整表删除
CREATE TABLE t_table_031a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_031b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_031c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_031d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_031e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_031f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_031g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_031h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_031i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_031j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_031k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_031l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_031m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_031a VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031b VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031c VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031d VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031e VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031f VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031g VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031h VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031i VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031j VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031k VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031l VALUES (1 , '9') , (2 , '99') , (3 , '999');
INSERT INTO t_table_031m VALUES (1 , '9') , (2 , '99') , (3 , '999');

//删除 id = 1 的数据
DELETE FROM t_table_031a WHERE c1 = '9-0';
DELETE FROM t_table_031b WHERE c1 = '0-9';
DELETE FROM t_table_031c WHERE c1 = '9 0:00:00';
DELETE FROM t_table_031d WHERE c1 = '9:00:00';
DELETE FROM t_table_031e WHERE c1 = '0:09:00';
DELETE FROM t_table_031f WHERE c1 = '0:00:09';
DELETE FROM t_table_031g WHERE c1 = '0-9';
DELETE FROM t_table_031h WHERE c1 = '9:00:00';
DELETE FROM t_table_031i WHERE c1 = '0:09:00';
DELETE FROM t_table_031j WHERE c1 = '0:00:09';
DELETE FROM t_table_031k WHERE c1 = '0:09:00';
DELETE FROM t_table_031l WHERE c1 = '0:00:09';
DELETE FROM t_table_031m WHERE c1 = '0:00:09';

//查询内容
<预期结果 : 2 | 99-0 / 3 | 999-0>
SELECT * FROM t_table_031a;
<预期结果 : 2 | 8-3 / 3 | 83-3>
SELECT * FROM t_table_031b;
<预期结果 : 2 | 99 0:00:00 / 3 | 999 0:00:00>
SELECT * FROM t_table_031c;
<预期结果 : 2 | 99:00:00 / 3 | 999:00:00>
SELECT * FROM t_table_031d;
<预期结果 : 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_table_031e;
<预期结果 : 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_table_031f;
<预期结果 : 2 | 8-3 / 3 | 83-3>
SELECT * FROM t_table_031g;
<预期结果 : 2 | 4 3:00:00 / 3 | 41 15:00:00>
SELECT * FROM t_table_031h;
<预期结果 : 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_table_031i;
<预期结果 : 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_table_031j;
<预期结果 : 2 | 1:39:00 / 3 | 16:39:00>
SELECT * FROM t_table_031k;
<预期结果 : 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_table_031l;
<预期结果 : 2 | 0:01:39 / 3 | 0:16:39>
SELECT * FROM t_table_031m;

//删除表无条件
DELETE FROM t_table_031a;
DELETE FROM t_table_031b;
DELETE FROM t_table_031c;
DELETE FROM t_table_031d;
DELETE FROM t_table_031e;
DELETE FROM t_table_031f;
DELETE FROM t_table_031g;
DELETE FROM t_table_031h;
DELETE FROM t_table_031i;
DELETE FROM t_table_031j;
DELETE FROM t_table_031k;
DELETE FROM t_table_031l;
DELETE FROM t_table_031m;

//查询数据量
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031a;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031b;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031c;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031d;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031e;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031f;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031g;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031h;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031i;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031j;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031k;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031l;
<预期结果 : 0>
SELECT COUNT(*) FROM t_table_031m;

DROP TABLE t_table_031a;
DROP TABLE t_table_031b;
DROP TABLE t_table_031c;
DROP TABLE t_table_031d;
DROP TABLE t_table_031e;
DROP TABLE t_table_031f;
DROP TABLE t_table_031g;
DROP TABLE t_table_031h;
DROP TABLE t_table_031i;
DROP TABLE t_table_031j;
DROP TABLE t_table_031k;
DROP TABLE t_table_031l;
DROP TABLE t_table_031m;

!4 XG-TYPE-INTERVAL-TABLE-032 变量与传参删除
CREATE TABLE t_table_032a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_032b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_032c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_032d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_032e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_032f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_032g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_032h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_032i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_032j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_032k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_032l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_032m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_032a VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032b VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032c VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032d VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032e VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032f VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032g VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032h VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032i VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032j VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032k VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032l VALUES (1 , '9') , (2 , '99');
INSERT INTO t_table_032m VALUES (1 , '9') , (2 , '99');

//设置参数 del_a
!|Set Parameter|del_a|9-0|
//设置参数 del_b
!|Set Parameter|del_b|0-9|
//设置参数 del_c
!|Set Parameter|del_c|9 0:00:00|
//设置参数 del_d
!|Set Parameter|del_d|9:00:00|
//设置参数 del_e
!|Set Parameter|del_e|0:09:00|
//设置参数 del_f
!|Set Parameter|del_f|0:00:09|
//设置参数 del_g
!|Set Parameter|del_g|0-9|
//设置参数 del_h
!|Set Parameter|del_h|9:00:00|
//设置参数 del_i
!|Set Parameter|del_i|0:09:00|
//设置参数 del_j
!|Set Parameter|del_j|0:00:09|
//设置参数 del_k
!|Set Parameter|del_k|0:09:00|
//设置参数 del_l
!|Set Parameter|del_l|0:00:09|
//设置参数 del_m
!|Set Parameter|del_m|0:00:09|

//通过传参删除
DELETE FROM t_table_032a WHERE c1 = @del_a;
DELETE FROM t_table_032b WHERE c1 = @del_b;
DELETE FROM t_table_032c WHERE c1 = @del_c;
DELETE FROM t_table_032d WHERE c1 = @del_d;
DELETE FROM t_table_032e WHERE c1 = @del_e;
DELETE FROM t_table_032f WHERE c1 = @del_f;
DELETE FROM t_table_032g WHERE c1 = @del_g;
DELETE FROM t_table_032h WHERE c1 = @del_h;
DELETE FROM t_table_032i WHERE c1 = @del_i;
DELETE FROM t_table_032j WHERE c1 = @del_j;
DELETE FROM t_table_032k WHERE c1 = @del_k;
DELETE FROM t_table_032l WHERE c1 = @del_l;
DELETE FROM t_table_032m WHERE c1 = @del_m;

//查询数据量
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032a;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032b;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032c;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032d;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032e;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032f;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032g;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032h;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032i;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032j;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032k;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032l;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_032m;

//删除表
DROP TABLE t_table_032a;
DROP TABLE t_table_032b;
DROP TABLE t_table_032c;
DROP TABLE t_table_032d;
DROP TABLE t_table_032e;
DROP TABLE t_table_032f;
DROP TABLE t_table_032g;
DROP TABLE t_table_032h;
DROP TABLE t_table_032i;
DROP TABLE t_table_032j;
DROP TABLE t_table_032k;
DROP TABLE t_table_032l;
DROP TABLE t_table_032m;

!4 XG-TYPE-INTERVAL-TABLE-033 混合类型删除
CREATE TABLE t_table_033a (id INT PRIMARY KEY , c1 INTERVAL YEAR , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033b (id INT PRIMARY KEY , c1 INTERVAL MONTH , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033c (id INT PRIMARY KEY , c1 INTERVAL DAY , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033d (id INT PRIMARY KEY , c1 INTERVAL HOUR , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033e (id INT PRIMARY KEY , c1 INTERVAL MINUTE , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033f (id INT PRIMARY KEY , c1 INTERVAL SECOND , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));
CREATE TABLE t_table_033m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND , c_text VARCHAR(20) , c_dec DECIMAL(10 , 2));

INSERT INTO t_table_033a VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033b VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033c VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033d VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033e VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033f VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033g VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033h VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033i VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033j VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033k VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033l VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);
INSERT INTO t_table_033m VALUES (1 , '9' , 'test' , 10.0) , (2 , '99' , 'demo' , 20.0);

DELETE FROM t_table_033a WHERE c1 = '9-0' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033b WHERE c1 = '0-9' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033c WHERE c1 = '9 0:00:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033d WHERE c1 = '9:00:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033e WHERE c1 = '0:09:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033f WHERE c1 = '0:00:09' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033g WHERE c1 = '0-9' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033h WHERE c1 = '9:00:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033i WHERE c1 = '0:09:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033j WHERE c1 = '0:00:09' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033k WHERE c1 = '0:09:00' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033l WHERE c1 = '0:00:09' AND c_text = 'test' AND c_dec > 5;
DELETE FROM t_table_033m WHERE c1 = '0:00:09' AND c_text = 'test' AND c_dec > 5;

//查询数据
<预期结果 : 2 | 99-0 | demo | 20>
SELECT * FROM t_table_033a;
<预期结果 : 2 | 8-3 | demo | 20>
SELECT * FROM t_table_033b;
<预期结果 : 2 | 99 0:00:00 | demo | 20>
SELECT * FROM t_table_033c;
<预期结果 : 2 | 99:00:00 | demo | 20>
SELECT * FROM t_table_033d;
<预期结果 : 2 | 1:39:00 | demo | 20>
SELECT * FROM t_table_033e;
<预期结果 : 2 | 0:01:39 | demo | 20>
SELECT * FROM t_table_033f;
<预期结果 : 2 | 8-3 | demo | 20>
SELECT * FROM t_table_033g;
<预期结果 : 2 | 4 3:00:00 | demo | 20>
SELECT * FROM t_table_033h;
<预期结果 : 2 | 1:39:00 | demo | 20>
SELECT * FROM t_table_033i;
<预期结果 : 2 | 0:01:39 | demo | 20>
SELECT * FROM t_table_033j;
<预期结果 : 2 | 1:39:00 | demo | 20>
SELECT * FROM t_table_033k;
<预期结果 : 2 | 0:01:39 | demo | 20>
SELECT * FROM t_table_033l;
<预期结果 : 2 | 0:01:39 | demo | 20>
SELECT * FROM t_table_033m;

//删除表
DROP TABLE t_table_033a;
DROP TABLE t_table_033b;
DROP TABLE t_table_033c;
DROP TABLE t_table_033d;
DROP TABLE t_table_033e;
DROP TABLE t_table_033f;
DROP TABLE t_table_033g;
DROP TABLE t_table_033h;
DROP TABLE t_table_033i;
DROP TABLE t_table_033j;
DROP TABLE t_table_033k;
DROP TABLE t_table_033l;
DROP TABLE t_table_033m;

!4 XG-TYPE-INTERVAL-TABLE-034 REPLACE INTO SELECT: 唯一冲突覆盖
//创建目标表
CREATE TABLE t_target_034a (id INT PRIMARY KEY , c1 INTERVAL YEAR);
CREATE TABLE t_target_034b (id INT PRIMARY KEY , c1 INTERVAL MONTH);
CREATE TABLE t_target_034c (id INT PRIMARY KEY , c1 INTERVAL DAY);
CREATE TABLE t_target_034d (id INT PRIMARY KEY , c1 INTERVAL HOUR);
CREATE TABLE t_target_034e (id INT PRIMARY KEY , c1 INTERVAL MINUTE);
CREATE TABLE t_target_034f (id INT PRIMARY KEY , c1 INTERVAL SECOND);
CREATE TABLE t_target_034g (id INT PRIMARY KEY , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_target_034h (id INT PRIMARY KEY , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_target_034i (id INT PRIMARY KEY , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_target_034j (id INT PRIMARY KEY , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_target_034k (id INT PRIMARY KEY , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_target_034l (id INT PRIMARY KEY , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_target_034m (id INT PRIMARY KEY , c1 INTERVAL MINUTE TO SECOND);

//创建源表
CREATE TABLE t_src_034a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_src_034b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_src_034c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_src_034d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_src_034e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_src_034f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_src_034g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_src_034h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_src_034i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_src_034j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_src_034k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_src_034l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_src_034m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向目标表插入数据
INSERT INTO t_target_034a VALUES (1 , '6');
INSERT INTO t_target_034b VALUES (1 , '6');
INSERT INTO t_target_034c VALUES (1 , '6');
INSERT INTO t_target_034d VALUES (1 , '6');
INSERT INTO t_target_034e VALUES (1 , '6');
INSERT INTO t_target_034f VALUES (1 , '6');
INSERT INTO t_target_034g VALUES (1 , '6');
INSERT INTO t_target_034h VALUES (1 , '6');
INSERT INTO t_target_034i VALUES (1 , '6');
INSERT INTO t_target_034j VALUES (1 , '6');
INSERT INTO t_target_034k VALUES (1 , '6');
INSERT INTO t_target_034l VALUES (1 , '6');
INSERT INTO t_target_034m VALUES (1 , '6');

//向源表插入数据
INSERT INTO t_src_034a VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034b VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034c VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034d VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034e VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034f VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034g VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034h VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034i VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034j VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034k VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034l VALUES (1 , '7') , (2 , '9');
INSERT INTO t_src_034m VALUES (1 , '7') , (2 , '9');

// REPLACE INTO
REPLACE INTO t_target_034a SELECT id , c1 FROM t_src_034a;
REPLACE INTO t_target_034b SELECT id , c1 FROM t_src_034b;
REPLACE INTO t_target_034c SELECT id , c1 FROM t_src_034c;
REPLACE INTO t_target_034d SELECT id , c1 FROM t_src_034d;
REPLACE INTO t_target_034e SELECT id , c1 FROM t_src_034e;
REPLACE INTO t_target_034f SELECT id , c1 FROM t_src_034f;
REPLACE INTO t_target_034g SELECT id , c1 FROM t_src_034g;
REPLACE INTO t_target_034h SELECT id , c1 FROM t_src_034h;
REPLACE INTO t_target_034i SELECT id , c1 FROM t_src_034i;
REPLACE INTO t_target_034j SELECT id , c1 FROM t_src_034j;
REPLACE INTO t_target_034k SELECT id , c1 FROM t_src_034k;
REPLACE INTO t_target_034l SELECT id , c1 FROM t_src_034l;
REPLACE INTO t_target_034m SELECT id , c1 FROM t_src_034m;

//查询内容
<预期结果 : 1 | 7-0 / 2 | 9-0>
SELECT * FROM t_target_034a ORDER BY id;
<预期结果 : 1 | 0-7 / 2 | 0-9>
SELECT * FROM t_target_034b ORDER BY id;
<预期结果 : 1 | 7 0:00:00 / 2 | 9 0:00:00>
SELECT * FROM t_target_034c ORDER BY id;
<预期结果 : 1 | 7:00:00 / 2 | 9:00:00>
SELECT * FROM t_target_034d ORDER BY id;
<预期结果 : 1 | 0:07:00 / 2 | 0:09:00>
SELECT * FROM t_target_034e ORDER BY id;
<预期结果 : 1 | 0:00:07 / 2 | 0:00:09>
SELECT * FROM t_target_034f ORDER BY id;
<预期结果 : 1 | 0-7 / 2 | 0-9>
SELECT * FROM t_target_034g ORDER BY id;
<预期结果 : 1 | 7:00:00 / 2 | 9:00:00>
SELECT * FROM t_target_034h ORDER BY id;
<预期结果 : 1 | 0:07:00 / 2 | 0:09:00>
SELECT * FROM t_target_034i ORDER BY id;
<预期结果 : 1 | 0:00:07 / 2 | 0:00:09>
SELECT * FROM t_target_034j ORDER BY id;
<预期结果 : 1 | 0:07:00 / 2 | 0:09:00>
SELECT * FROM t_target_034k ORDER BY id;
<预期结果 : 1 | 0:00:07 / 2 | 0:00:09>
SELECT * FROM t_target_034l ORDER BY id;
<预期结果 : 1 | 0:00:07 / 2 | 0:00:09>
SELECT * FROM t_target_034m ORDER BY id;

//删除表
DROP TABLE t_src_034a;
DROP TABLE t_src_034b;
DROP TABLE t_src_034c;
DROP TABLE t_src_034d;
DROP TABLE t_src_034e;
DROP TABLE t_src_034f;
DROP TABLE t_src_034g;
DROP TABLE t_src_034h;
DROP TABLE t_src_034i;
DROP TABLE t_src_034j;
DROP TABLE t_src_034k;
DROP TABLE t_src_034l;
DROP TABLE t_src_034m;
DROP TABLE t_target_034a;
DROP TABLE t_target_034b;
DROP TABLE t_target_034c;
DROP TABLE t_target_034d;
DROP TABLE t_target_034e;
DROP TABLE t_target_034f;
DROP TABLE t_target_034g;
DROP TABLE t_target_034h;
DROP TABLE t_target_034i;
DROP TABLE t_target_034j;
DROP TABLE t_target_034k;
DROP TABLE t_target_034l;
DROP TABLE t_target_034m;

!4 XG-TYPE-INTERVAL-TABLE-035 INSERT INTO SELECT: 计算后插入
//创建源表
CREATE TABLE t_src_035a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_src_035b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_src_035c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_src_035d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_src_035e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_src_035f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_src_035g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_src_035h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_src_035i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_src_035j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_src_035k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_src_035l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_src_035m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建目标表
CREATE TABLE t_target_035a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_target_035b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_target_035c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_target_035d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_target_035e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_target_035f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_target_035g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_target_035h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_target_035i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_target_035j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_target_035k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_target_035l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_target_035m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向源表插入数据
INSERT INTO t_src_035a VALUES (1 , '6');
INSERT INTO t_src_035b VALUES (1 , '6');
INSERT INTO t_src_035c VALUES (1 , '6');
INSERT INTO t_src_035d VALUES (1 , '6');
INSERT INTO t_src_035e VALUES (1 , '6');
INSERT INTO t_src_035f VALUES (1 , '6');
INSERT INTO t_src_035g VALUES (1 , '6');
INSERT INTO t_src_035h VALUES (1 , '6');
INSERT INTO t_src_035i VALUES (1 , '6');
INSERT INTO t_src_035j VALUES (1 , '6');
INSERT INTO t_src_035k VALUES (1 , '6');
INSERT INTO t_src_035l VALUES (1 , '6');
INSERT INTO t_src_035m VALUES (1 , '6');

//向目标表插入数据
INSERT INTO t_target_035a SELECT id , c1 + '3' FROM t_src_035a;
INSERT INTO t_target_035b SELECT id , c1 + '3' FROM t_src_035b;
INSERT INTO t_target_035c SELECT id , c1 + '3' FROM t_src_035c;
INSERT INTO t_target_035d SELECT id , c1 + '3' FROM t_src_035d;
INSERT INTO t_target_035e SELECT id , c1 + '3' FROM t_src_035e;
INSERT INTO t_target_035f SELECT id , c1 + '3' FROM t_src_035f;
INSERT INTO t_target_035g SELECT id , c1 + '3' FROM t_src_035g;
INSERT INTO t_target_035h SELECT id , c1 + '3' FROM t_src_035h;
INSERT INTO t_target_035i SELECT id , c1 + '3' FROM t_src_035i;
INSERT INTO t_target_035j SELECT id , c1 + '3' FROM t_src_035j;
INSERT INTO t_target_035k SELECT id , c1 + '3' FROM t_src_035k;
INSERT INTO t_target_035l SELECT id , c1 + '3' FROM t_src_035l;
INSERT INTO t_target_035m SELECT id , c1 + '3' FROM t_src_035m;

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_target_035a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_target_035b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_target_035c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_target_035d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_target_035e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_target_035f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_target_035g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_target_035h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_target_035i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_target_035j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_target_035k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_target_035l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_target_035m;

//删除表
DROP TABLE t_src_035a;
DROP TABLE t_src_035b;
DROP TABLE t_src_035c;
DROP TABLE t_src_035d;
DROP TABLE t_src_035e;
DROP TABLE t_src_035f;
DROP TABLE t_src_035g;
DROP TABLE t_src_035h;
DROP TABLE t_src_035i;
DROP TABLE t_src_035j;
DROP TABLE t_src_035k;
DROP TABLE t_src_035l;
DROP TABLE t_src_035m;
DROP TABLE t_target_035a;
DROP TABLE t_target_035b;
DROP TABLE t_target_035c;
DROP TABLE t_target_035d;
DROP TABLE t_target_035e;
DROP TABLE t_target_035f;
DROP TABLE t_target_035g;
DROP TABLE t_target_035h;
DROP TABLE t_target_035i;
DROP TABLE t_target_035j;
DROP TABLE t_target_035k;
DROP TABLE t_target_035l;
DROP TABLE t_target_035m;

!4 XG-TYPE-INTERVAL-TABLE-036 INSERT INTO SELECT: 异常拦截测试
//创建源表
CREATE TABLE t_src_036a (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036b (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036c (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036d (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036e (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036f (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036g (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036h (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036i (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036j (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036k (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036l (id INT , col_err VARCHAR(30));
CREATE TABLE t_src_036m (id INT , col_err VARCHAR(30));

//创建目标表
CREATE TABLE t_target_036a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_target_036b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_target_036c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_target_036d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_target_036e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_target_036f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_target_036g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_target_036h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_target_036i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_target_036j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_target_036k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_target_036l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_target_036m (id INT , c1 INTERVAL MINUTE TO SECOND);

//向源表插入数据
INSERT INTO t_src_036a VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036b VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036c VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036d VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036e VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036f VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036g VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036h VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036i VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036j VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036k VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036l VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');
INSERT INTO t_src_036m VALUES (1 , 'A') , (2 , 'NOT_INTERVAL');

//向目标表插入数据
<预期结果 : 报错>
INSERT INTO t_target_036a SELECT id , col_err FROM t_src_036a;
<预期结果 : 报错>
INSERT INTO t_target_036b SELECT id , col_err FROM t_src_036b;
<预期结果 : 报错>
INSERT INTO t_target_036c SELECT id , col_err FROM t_src_036c;
<预期结果 : 报错>
INSERT INTO t_target_036d SELECT id , col_err FROM t_src_036d;
<预期结果 : 报错>
INSERT INTO t_target_036e SELECT id , col_err FROM t_src_036e;
<预期结果 : 报错>
INSERT INTO t_target_036f SELECT id , col_err FROM t_src_036f;
<预期结果 : 报错>
INSERT INTO t_target_036g SELECT id , col_err FROM t_src_036g;
<预期结果 : 报错>
INSERT INTO t_target_036h SELECT id , col_err FROM t_src_036h;
<预期结果 : 报错>
INSERT INTO t_target_036i SELECT id , col_err FROM t_src_036i;
<预期结果 : 报错>
INSERT INTO t_target_036j SELECT id , col_err FROM t_src_036j;
<预期结果 : 报错>
INSERT INTO t_target_036k SELECT id , col_err FROM t_src_036k;
<预期结果 : 报错>
INSERT INTO t_target_036l SELECT id , col_err FROM t_src_036l;
<预期结果 : 报错>
INSERT INTO t_target_036m SELECT id , col_err FROM t_src_036m;

//删除表
DROP TABLE t_src_036a;
DROP TABLE t_src_036b;
DROP TABLE t_src_036c;
DROP TABLE t_src_036d;
DROP TABLE t_src_036e;
DROP TABLE t_src_036f;
DROP TABLE t_src_036g;
DROP TABLE t_src_036h;
DROP TABLE t_src_036i;
DROP TABLE t_src_036j;
DROP TABLE t_src_036k;
DROP TABLE t_src_036l;
DROP TABLE t_src_036m;
DROP TABLE t_target_036a;
DROP TABLE t_target_036b;
DROP TABLE t_target_036c;
DROP TABLE t_target_036d;
DROP TABLE t_target_036e;
DROP TABLE t_target_036f;
DROP TABLE t_target_036g;
DROP TABLE t_target_036h;
DROP TABLE t_target_036i;
DROP TABLE t_target_036j;
DROP TABLE t_target_036k;
DROP TABLE t_target_036l;
DROP TABLE t_target_036m;