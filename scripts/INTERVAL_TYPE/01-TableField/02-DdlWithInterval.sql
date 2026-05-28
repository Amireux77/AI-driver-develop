!4 XG-TYPE-INTERVAL-TABLE-014 增加为默认值情况:语法与存储验证
CREATE TABLE t_table_014a (id INT , c1 INTERVAL YEAR DEFAULT '9');
CREATE TABLE t_table_014b (id INT , c1 INTERVAL MONTH DEFAULT '9');
CREATE TABLE t_table_014c (id INT , c1 INTERVAL DAY DEFAULT '9');
CREATE TABLE t_table_014d (id INT , c1 INTERVAL HOUR DEFAULT '9');
CREATE TABLE t_table_014e (id INT , c1 INTERVAL MINUTE DEFAULT '9');
CREATE TABLE t_table_014f (id INT , c1 INTERVAL SECOND DEFAULT '9');
CREATE TABLE t_table_014g (id INT , c1 INTERVAL YEAR TO MONTH DEFAULT '9');
CREATE TABLE t_table_014h (id INT , c1 INTERVAL DAY TO HOUR DEFAULT '9');
CREATE TABLE t_table_014i (id INT , c1 INTERVAL DAY TO MINUTE DEFAULT '9');
CREATE TABLE t_table_014j (id INT , c1 INTERVAL DAY TO SECOND DEFAULT '9');
CREATE TABLE t_table_014k (id INT , c1 INTERVAL HOUR TO MINUTE DEFAULT '9');
CREATE TABLE t_table_014l (id INT , c1 INTERVAL HOUR TO SECOND DEFAULT '9');
CREATE TABLE t_table_014m (id INT , c1 INTERVAL MINUTE TO SECOND DEFAULT '9');

INSERT INTO t_table_014a(id) VALUES (1);
INSERT INTO t_table_014b(id) VALUES (2);
INSERT INTO t_table_014c(id) VALUES (3);
INSERT INTO t_table_014d(id) VALUES (4);
INSERT INTO t_table_014e(id) VALUES (5);
INSERT INTO t_table_014f(id) VALUES (6);
INSERT INTO t_table_014g(id) VALUES (7);
INSERT INTO t_table_014h(id) VALUES (8);
INSERT INTO t_table_014i(id) VALUES (9);
INSERT INTO t_table_014j(id) VALUES (10);
INSERT INTO t_table_014k(id) VALUES (11);
INSERT INTO t_table_014l(id) VALUES (12);
INSERT INTO t_table_014m(id) VALUES (13);

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_014a;
<预期结果 : 2 | 0-9>
SELECT * FROM t_table_014b;
<预期结果 : 3 | 9 0:00:00>
SELECT * FROM t_table_014c;
<预期结果 : 4 | 9:00:00>
SELECT * FROM t_table_014d;
<预期结果 : 5 | 0:09:00>
SELECT * FROM t_table_014e;
<预期结果 : 6 | 0:00:09>
SELECT * FROM t_table_014f;
<预期结果 : 7 | 0-9>
SELECT * FROM t_table_014g;
<预期结果 : 8 | 9:00:00>
SELECT * FROM t_table_014h;
<预期结果 : 9 | 0:09:00>
SELECT * FROM t_table_014i;
<预期结果 : 10 | 0:00:09>
SELECT * FROM t_table_014j;
<预期结果 : 11 | 0:09:00>
SELECT * FROM t_table_014k;
<预期结果 : 12 | 0:00:09>
SELECT * FROM t_table_014l;
<预期结果 : 13 | 0:00:09>
SELECT * FROM t_table_014m;

//删除表
DROP TABLE t_table_014a;
DROP TABLE t_table_014b;
DROP TABLE t_table_014c;
DROP TABLE t_table_014d;
DROP TABLE t_table_014e;
DROP TABLE t_table_014f;
DROP TABLE t_table_014g;
DROP TABLE t_table_014h;
DROP TABLE t_table_014i;
DROP TABLE t_table_014j;
DROP TABLE t_table_014k;
DROP TABLE t_table_014l;
DROP TABLE t_table_014m;

!4 XG-TYPE-INTERVAL-TABLE-015 默认值多节点操作:一致性验证
CREATE TABLE t_table_015a (id INT , c1 INTERVAL YEAR DEFAULT '9');
CREATE TABLE t_table_015b (id INT , c1 INTERVAL MONTH DEFAULT '9');
CREATE TABLE t_table_015c (id INT , c1 INTERVAL DAY DEFAULT '9');
CREATE TABLE t_table_015d (id INT , c1 INTERVAL HOUR DEFAULT '9');
CREATE TABLE t_table_015e (id INT , c1 INTERVAL MINUTE DEFAULT '9');
CREATE TABLE t_table_015f (id INT , c1 INTERVAL SECOND DEFAULT '9');
CREATE TABLE t_table_015g (id INT , c1 INTERVAL YEAR TO MONTH DEFAULT '9');
CREATE TABLE t_table_015h (id INT , c1 INTERVAL DAY TO HOUR DEFAULT '9');
CREATE TABLE t_table_015i (id INT , c1 INTERVAL DAY TO MINUTE DEFAULT '9');
CREATE TABLE t_table_015j (id INT , c1 INTERVAL DAY TO SECOND DEFAULT '9');
CREATE TABLE t_table_015k (id INT , c1 INTERVAL HOUR TO MINUTE DEFAULT '9');
CREATE TABLE t_table_015l (id INT , c1 INTERVAL HOUR TO SECOND DEFAULT '9');
CREATE TABLE t_table_015m (id INT , c1 INTERVAL MINUTE TO SECOND DEFAULT '9');

INSERT INTO t_table_015a(id) VALUES (1);
INSERT INTO t_table_015b(id) VALUES (2);
INSERT INTO t_table_015c(id) VALUES (3);
INSERT INTO t_table_015d(id) VALUES (4);
INSERT INTO t_table_015e(id) VALUES (5);
INSERT INTO t_table_015f(id) VALUES (6);
INSERT INTO t_table_015g(id) VALUES (7);
INSERT INTO t_table_015h(id) VALUES (8);
INSERT INTO t_table_015i(id) VALUES (9);
INSERT INTO t_table_015j(id) VALUES (10);
INSERT INTO t_table_015k(id) VALUES (11);
INSERT INTO t_table_015l(id) VALUES (12);
INSERT INTO t_table_015m(id) VALUES (13);

//切换节点
!|commit|

!|bind current db connect|node2|

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_015a;
<预期结果 : 2 | 0-9>
SELECT * FROM t_table_015b;
<预期结果 : 3 | 9 0:00:00>
SELECT * FROM t_table_015c;
<预期结果 : 4 | 9:00:00>
SELECT * FROM t_table_015d;
<预期结果 : 5 | 0:09:00>
SELECT * FROM t_table_015e;
<预期结果 : 6 | 0:00:09>
SELECT * FROM t_table_015f;
<预期结果 : 7 | 0-9>
SELECT * FROM t_table_015g;
<预期结果 : 8 | 9:00:00>
SELECT * FROM t_table_015h;
<预期结果 : 9 | 0:09:00>
SELECT * FROM t_table_015i;
<预期结果 : 10 | 0:00:09>
SELECT * FROM t_table_015j;
<预期结果 : 11 | 0:09:00>
SELECT * FROM t_table_015k;
<预期结果 : 12 | 0:00:09>
SELECT * FROM t_table_015l;
<预期结果 : 13 | 0:00:09>
SELECT * FROM t_table_015m;

//切回默认节点
!|commit|

!|bind current db connect|default|

//删除表
DROP TABLE t_table_015a;
DROP TABLE t_table_015b;
DROP TABLE t_table_015c;
DROP TABLE t_table_015d;
DROP TABLE t_table_015e;
DROP TABLE t_table_015f;
DROP TABLE t_table_015g;
DROP TABLE t_table_015h;
DROP TABLE t_table_015i;
DROP TABLE t_table_015j;
DROP TABLE t_table_015k;
DROP TABLE t_table_015l;
DROP TABLE t_table_015m;

!4 XG-TYPE-INTERVAL-TABLE-016 动态增删默认值字段
CREATE TABLE t_table_016a (id INT);
CREATE TABLE t_table_016b (id INT);
CREATE TABLE t_table_016c (id INT);
CREATE TABLE t_table_016d (id INT);
CREATE TABLE t_table_016e (id INT);
CREATE TABLE t_table_016f (id INT);
CREATE TABLE t_table_016g (id INT);
CREATE TABLE t_table_016h (id INT);
CREATE TABLE t_table_016i (id INT);
CREATE TABLE t_table_016j (id INT);
CREATE TABLE t_table_016k (id INT);
CREATE TABLE t_table_016l (id INT);
CREATE TABLE t_table_016m (id INT);

//修改表
ALTER TABLE t_table_016a ADD COLUMN col_new INTERVAL YEAR DEFAULT '9';
ALTER TABLE t_table_016b ADD COLUMN col_new INTERVAL MONTH DEFAULT '9';
ALTER TABLE t_table_016c ADD COLUMN col_new INTERVAL DAY DEFAULT '9';
ALTER TABLE t_table_016d ADD COLUMN col_new INTERVAL HOUR DEFAULT '9';
ALTER TABLE t_table_016e ADD COLUMN col_new INTERVAL MINUTE DEFAULT '9';
ALTER TABLE t_table_016f ADD COLUMN col_new INTERVAL SECOND DEFAULT '9';
ALTER TABLE t_table_016g ADD COLUMN col_new INTERVAL YEAR TO MONTH DEFAULT '9';
ALTER TABLE t_table_016h ADD COLUMN col_new INTERVAL DAY TO HOUR DEFAULT '9';
ALTER TABLE t_table_016i ADD COLUMN col_new INTERVAL DAY TO MINUTE DEFAULT '9';
ALTER TABLE t_table_016j ADD COLUMN col_new INTERVAL DAY TO SECOND DEFAULT '9';
ALTER TABLE t_table_016k ADD COLUMN col_new INTERVAL HOUR TO MINUTE DEFAULT '9';
ALTER TABLE t_table_016l ADD COLUMN col_new INTERVAL HOUR TO SECOND DEFAULT '9';
ALTER TABLE t_table_016m ADD COLUMN col_new INTERVAL MINUTE TO SECOND DEFAULT '9';

INSERT INTO t_table_016a(id) VALUES (1);
INSERT INTO t_table_016b(id) VALUES (2);
INSERT INTO t_table_016c(id) VALUES (3);
INSERT INTO t_table_016d(id) VALUES (4);
INSERT INTO t_table_016e(id) VALUES (5);
INSERT INTO t_table_016f(id) VALUES (6);
INSERT INTO t_table_016g(id) VALUES (7);
INSERT INTO t_table_016h(id) VALUES (8);
INSERT INTO t_table_016i(id) VALUES (9);
INSERT INTO t_table_016j(id) VALUES (10);
INSERT INTO t_table_016k(id) VALUES (11);
INSERT INTO t_table_016l(id) VALUES (12);
INSERT INTO t_table_016m(id) VALUES (13);

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_016a;
<预期结果 : 2 | 0-9>
SELECT * FROM t_table_016b;
<预期结果 : 3 | 9 0:00:00>
SELECT * FROM t_table_016c;
<预期结果 : 4 | 9:00:00>
SELECT * FROM t_table_016d;
<预期结果 : 5 | 0:09:00>
SELECT * FROM t_table_016e;
<预期结果 : 6 | 0:00:09>
SELECT * FROM t_table_016f;
<预期结果 : 7 | 0-9>
SELECT * FROM t_table_016g;
<预期结果 : 8 | 9:00:00>
SELECT * FROM t_table_016h;
<预期结果 : 9 | 0:09:00>
SELECT * FROM t_table_016i;
<预期结果 : 10 | 0:00:09>
SELECT * FROM t_table_016j;
<预期结果 : 11 | 0:09:00>
SELECT * FROM t_table_016k;
<预期结果 : 12 | 0:00:09>
SELECT * FROM t_table_016l;
<预期结果 : 13 | 0:00:09>
SELECT * FROM t_table_016m;

//修改表
ALTER TABLE t_table_016a DROP COLUMN col_new;
ALTER TABLE t_table_016b DROP COLUMN col_new;
ALTER TABLE t_table_016c DROP COLUMN col_new;
ALTER TABLE t_table_016d DROP COLUMN col_new;
ALTER TABLE t_table_016e DROP COLUMN col_new;
ALTER TABLE t_table_016f DROP COLUMN col_new;
ALTER TABLE t_table_016g DROP COLUMN col_new;
ALTER TABLE t_table_016h DROP COLUMN col_new;
ALTER TABLE t_table_016i DROP COLUMN col_new;
ALTER TABLE t_table_016j DROP COLUMN col_new;
ALTER TABLE t_table_016k DROP COLUMN col_new;
ALTER TABLE t_table_016l DROP COLUMN col_new;
ALTER TABLE t_table_016m DROP COLUMN col_new;

//查询内容
<预期结果 : 1>
SELECT * FROM t_table_016a;
<预期结果 : 2>
SELECT * FROM t_table_016b;
<预期结果 : 3>
SELECT * FROM t_table_016c;
<预期结果 : 4>
SELECT * FROM t_table_016d;
<预期结果 : 5>
SELECT * FROM t_table_016e;
<预期结果 : 6>
SELECT * FROM t_table_016f;
<预期结果 : 7>
SELECT * FROM t_table_016g;
<预期结果 : 8>
SELECT * FROM t_table_016h;
<预期结果 : 9>
SELECT * FROM t_table_016i;
<预期结果 : 10>
SELECT * FROM t_table_016j;
<预期结果 : 11>
SELECT * FROM t_table_016k;
<预期结果 : 12>
SELECT * FROM t_table_016l;
<预期结果 : 13>
SELECT * FROM t_table_016m;

//删除表
DROP TABLE t_table_016a;
DROP TABLE t_table_016b;
DROP TABLE t_table_016c;
DROP TABLE t_table_016d;
DROP TABLE t_table_016e;
DROP TABLE t_table_016f;
DROP TABLE t_table_016g;
DROP TABLE t_table_016h;
DROP TABLE t_table_016i;
DROP TABLE t_table_016j;
DROP TABLE t_table_016k;
DROP TABLE t_table_016l;
DROP TABLE t_table_016m;

!4 XG-TYPE-INTERVAL-TABLE-017 无数据修改类型为 INTERVAL
CREATE TABLE t_table_017a (c1 VARCHAR);
CREATE TABLE t_table_017b (c1 VARCHAR);
CREATE TABLE t_table_017c (c1 VARCHAR);
CREATE TABLE t_table_017d (c1 VARCHAR);
CREATE TABLE t_table_017e (c1 VARCHAR);
CREATE TABLE t_table_017f (c1 VARCHAR);
CREATE TABLE t_table_017g (c1 VARCHAR);
CREATE TABLE t_table_017h (c1 VARCHAR);
CREATE TABLE t_table_017i (c1 VARCHAR);
CREATE TABLE t_table_017j (c1 VARCHAR);
CREATE TABLE t_table_017k (c1 VARCHAR);
CREATE TABLE t_table_017l (c1 VARCHAR);
CREATE TABLE t_table_017m (c1 VARCHAR);

//修改列属性
ALTER TABLE t_table_017a MODIFY c1 INTERVAL YEAR;
ALTER TABLE t_table_017b MODIFY c1 INTERVAL MONTH;
ALTER TABLE t_table_017c MODIFY c1 INTERVAL DAY;
ALTER TABLE t_table_017d MODIFY c1 INTERVAL HOUR;
ALTER TABLE t_table_017e MODIFY c1 INTERVAL MINUTE;
ALTER TABLE t_table_017f MODIFY c1 INTERVAL SECOND;
ALTER TABLE t_table_017g MODIFY c1 INTERVAL YEAR TO MONTH;
ALTER TABLE t_table_017h MODIFY c1 INTERVAL DAY TO HOUR;
ALTER TABLE t_table_017i MODIFY c1 INTERVAL DAY TO MINUTE;
ALTER TABLE t_table_017j MODIFY c1 INTERVAL DAY TO SECOND;
ALTER TABLE t_table_017k MODIFY c1 INTERVAL HOUR TO MINUTE;
ALTER TABLE t_table_017l MODIFY c1 INTERVAL HOUR TO SECOND;
ALTER TABLE t_table_017m MODIFY c1 INTERVAL MINUTE TO SECOND;

//插入数据
INSERT INTO t_table_017a VALUES ('9');
INSERT INTO t_table_017b VALUES ('9');
INSERT INTO t_table_017c VALUES ('9');
INSERT INTO t_table_017d VALUES ('9');
INSERT INTO t_table_017e VALUES ('9');
INSERT INTO t_table_017f VALUES ('9');
INSERT INTO t_table_017g VALUES ('9');
INSERT INTO t_table_017h VALUES ('9');
INSERT INTO t_table_017i VALUES ('9');
INSERT INTO t_table_017j VALUES ('9');
INSERT INTO t_table_017k VALUES ('9');
INSERT INTO t_table_017l VALUES ('9');
INSERT INTO t_table_017m VALUES ('9');

//查询内容
<预期结果 : 9-0>
SELECT * FROM t_table_017a;
<预期结果 : 0-9>
SELECT * FROM t_table_017b;
<预期结果 : 9 0:00:00>
SELECT * FROM t_table_017c;
<预期结果 : 9:00:00>
SELECT * FROM t_table_017d;
<预期结果 : 0:09:00>
SELECT * FROM t_table_017e;
<预期结果 : 0:00:09>
SELECT * FROM t_table_017f;
<预期结果 : 0-9>
SELECT * FROM t_table_017g;
<预期结果 : 9:00:00>
SELECT * FROM t_table_017h;
<预期结果 : 0:09:00>
SELECT * FROM t_table_017i;
<预期结果 : 0:00:09>
SELECT * FROM t_table_017j;
<预期结果 : 0:09:00>
SELECT * FROM t_table_017k;
<预期结果 : 0:00:09>
SELECT * FROM t_table_017l;
<预期结果 : 0:00:09>
SELECT * FROM t_table_017m;

//删除表
DROP TABLE t_table_017a;
DROP TABLE t_table_017b;
DROP TABLE t_table_017c;
DROP TABLE t_table_017d;
DROP TABLE t_table_017e;
DROP TABLE t_table_017f;
DROP TABLE t_table_017g;
DROP TABLE t_table_017h;
DROP TABLE t_table_017i;
DROP TABLE t_table_017j;
DROP TABLE t_table_017k;
DROP TABLE t_table_017l;
DROP TABLE t_table_017m;

!4 XG-TYPE-INTERVAL-TABLE-018 有数据修改类型为 INTERVAL
CREATE TABLE t_table_018a (c1 VARCHAR);
CREATE TABLE t_table_018b (c1 VARCHAR);
CREATE TABLE t_table_018c (c1 VARCHAR);
CREATE TABLE t_table_018d (c1 VARCHAR);
CREATE TABLE t_table_018e (c1 VARCHAR);
CREATE TABLE t_table_018f (c1 VARCHAR);
CREATE TABLE t_table_018g (c1 VARCHAR);
CREATE TABLE t_table_018h (c1 VARCHAR);
CREATE TABLE t_table_018i (c1 VARCHAR);
CREATE TABLE t_table_018j (c1 VARCHAR);
CREATE TABLE t_table_018k (c1 VARCHAR);
CREATE TABLE t_table_018l (c1 VARCHAR);
CREATE TABLE t_table_018m (c1 VARCHAR);

INSERT INTO t_table_018a VALUES ('9');
INSERT INTO t_table_018b VALUES ('9');
INSERT INTO t_table_018c VALUES ('9');
INSERT INTO t_table_018d VALUES ('9');
INSERT INTO t_table_018e VALUES ('9');
INSERT INTO t_table_018f VALUES ('9');
INSERT INTO t_table_018g VALUES ('9');
INSERT INTO t_table_018h VALUES ('9');
INSERT INTO t_table_018i VALUES ('9');
INSERT INTO t_table_018j VALUES ('9');
INSERT INTO t_table_018k VALUES ('9');
INSERT INTO t_table_018l VALUES ('9');
INSERT INTO t_table_018m VALUES ('9');

//修改有数据的列属性 : 报错
ALTER TABLE t_table_018a MODIFY c1 INTERVAL YEAR;
ALTER TABLE t_table_018b MODIFY c1 INTERVAL MONTH;
ALTER TABLE t_table_018c MODIFY c1 INTERVAL DAY;
ALTER TABLE t_table_018d MODIFY c1 INTERVAL HOUR;
ALTER TABLE t_table_018e MODIFY c1 INTERVAL MINUTE;
ALTER TABLE t_table_018f MODIFY c1 INTERVAL SECOND;
ALTER TABLE t_table_018g MODIFY c1 INTERVAL YEAR TO MONTH;
ALTER TABLE t_table_018h MODIFY c1 INTERVAL DAY TO HOUR;
ALTER TABLE t_table_018i MODIFY c1 INTERVAL DAY TO MINUTE;
ALTER TABLE t_table_018j MODIFY c1 INTERVAL DAY TO SECOND;
ALTER TABLE t_table_018k MODIFY c1 INTERVAL HOUR TO MINUTE;
ALTER TABLE t_table_018l MODIFY c1 INTERVAL HOUR TO SECOND;
ALTER TABLE t_table_018m MODIFY c1 INTERVAL MINUTE TO SECOND;

//查询内容
<预期结果 : 9>
SELECT * FROM t_table_018a;
<预期结果 : 9>
SELECT * FROM t_table_018b;
<预期结果 : 9>
SELECT * FROM t_table_018c;
<预期结果 : 9>
SELECT * FROM t_table_018d;
<预期结果 : 9>
SELECT * FROM t_table_018e;
<预期结果 : 9>
SELECT * FROM t_table_018f;
<预期结果 : 9>
SELECT * FROM t_table_018g;
<预期结果 : 9>
SELECT * FROM t_table_018h;
<预期结果 : 9>
SELECT * FROM t_table_018i;
<预期结果 : 9>
SELECT * FROM t_table_018j;
<预期结果 : 9>
SELECT * FROM t_table_018k;
<预期结果 : 9>
SELECT * FROM t_table_018l;
<预期结果 : 9>
SELECT * FROM t_table_018m;

//删除表
DROP TABLE t_table_018a;
DROP TABLE t_table_018b;
DROP TABLE t_table_018c;
DROP TABLE t_table_018d;
DROP TABLE t_table_018e;
DROP TABLE t_table_018f;
DROP TABLE t_table_018g;
DROP TABLE t_table_018h;
DROP TABLE t_table_018i;
DROP TABLE t_table_018j;
DROP TABLE t_table_018k;
DROP TABLE t_table_018l;
DROP TABLE t_table_018m;

!4 XG-TYPE-INTERVAL-TABLE-019 大数据量增加/删除列 (带/不带默认值)
CREATE TABLE t_table_019a (id INT);
CREATE TABLE t_table_019b (id INT);
CREATE TABLE t_table_019c (id INT);
CREATE TABLE t_table_019d (id INT);
CREATE TABLE t_table_019e (id INT);
CREATE TABLE t_table_019f (id INT);
CREATE TABLE t_table_019g (id INT);
CREATE TABLE t_table_019h (id INT);
CREATE TABLE t_table_019i (id INT);
CREATE TABLE t_table_019j (id INT);
CREATE TABLE t_table_019k (id INT);
CREATE TABLE t_table_019l (id INT);
CREATE TABLE t_table_019m (id INT);

//插入数据
INSERT INTO t_table_019a VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019b VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019c VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019d VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019e VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019f VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019g VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019h VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019i VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019j VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019k VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019l VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);
INSERT INTO t_table_019m VALUES (0) , (1) , (2) , (3) , (4) , (5) , (6) , (7) , (8) , (9);

//创建临时表
CREATE TABLE t_temp_a AS SELECT aa.id FROM t_table_019a aa , t_table_019a ab , t_table_019a ac , t_table_019a ad;
CREATE TABLE t_temp_b AS SELECT ba.id FROM t_table_019b ba , t_table_019b bb , t_table_019b bc , t_table_019b bd;
CREATE TABLE t_temp_c AS SELECT ca.id FROM t_table_019c ca , t_table_019c cb , t_table_019c cc , t_table_019c cd;
CREATE TABLE t_temp_d AS SELECT da.id FROM t_table_019d da , t_table_019d db , t_table_019d dc , t_table_019d dd;
CREATE TABLE t_temp_e AS SELECT ea.id FROM t_table_019e ea , t_table_019e eb , t_table_019e ec , t_table_019e ed;
CREATE TABLE t_temp_f AS SELECT fa.id FROM t_table_019f fa , t_table_019f fb , t_table_019f fc , t_table_019f fd;
CREATE TABLE t_temp_g AS SELECT ga.id FROM t_table_019g ga , t_table_019g gb , t_table_019g gc , t_table_019g gd;
CREATE TABLE t_temp_h AS SELECT ha.id FROM t_table_019h ha , t_table_019h hb , t_table_019h hc , t_table_019h hd;
CREATE TABLE t_temp_i AS SELECT ia.id FROM t_table_019i ia , t_table_019i ib , t_table_019i ic , t_table_019i id;
CREATE TABLE t_temp_j AS SELECT ja.id FROM t_table_019j ja , t_table_019j jb , t_table_019j jc , t_table_019j jd;
CREATE TABLE t_temp_k AS SELECT ka.id FROM t_table_019k ka , t_table_019k kb , t_table_019k kc , t_table_019k kd;
CREATE TABLE t_temp_l AS SELECT la.id FROM t_table_019l la , t_table_019l lb , t_table_019l lc , t_table_019l ld;
CREATE TABLE t_temp_m AS SELECT ma.id FROM t_table_019m ma , t_table_019m mb , t_table_019m mc , t_table_019m md;

//清空旧表
TRUNCATE TABLE t_table_019a;
TRUNCATE TABLE t_table_019b;
TRUNCATE TABLE t_table_019c;
TRUNCATE TABLE t_table_019d;
TRUNCATE TABLE t_table_019e;
TRUNCATE TABLE t_table_019f;
TRUNCATE TABLE t_table_019g;
TRUNCATE TABLE t_table_019h;
TRUNCATE TABLE t_table_019i;
TRUNCATE TABLE t_table_019j;
TRUNCATE TABLE t_table_019k;
TRUNCATE TABLE t_table_019l;
TRUNCATE TABLE t_table_019m;

//将临时表数据插入到旧表中
INSERT INTO t_table_019a SELECT * FROM t_temp_a;
INSERT INTO t_table_019b SELECT * FROM t_temp_b;
INSERT INTO t_table_019c SELECT * FROM t_temp_c;
INSERT INTO t_table_019d SELECT * FROM t_temp_d;
INSERT INTO t_table_019e SELECT * FROM t_temp_e;
INSERT INTO t_table_019f SELECT * FROM t_temp_f;
INSERT INTO t_table_019g SELECT * FROM t_temp_g;
INSERT INTO t_table_019h SELECT * FROM t_temp_h;
INSERT INTO t_table_019i SELECT * FROM t_temp_i;
INSERT INTO t_table_019j SELECT * FROM t_temp_j;
INSERT INTO t_table_019k SELECT * FROM t_temp_k;
INSERT INTO t_table_019l SELECT * FROM t_temp_l;
INSERT INTO t_table_019m SELECT * FROM t_temp_m;

//删除临时表
DROP TABLE t_temp_a;
DROP TABLE t_temp_b;
DROP TABLE t_temp_c;
DROP TABLE t_temp_d;
DROP TABLE t_temp_e;
DROP TABLE t_temp_f;
DROP TABLE t_temp_g;
DROP TABLE t_temp_h;
DROP TABLE t_temp_i;
DROP TABLE t_temp_j;
DROP TABLE t_temp_k;
DROP TABLE t_temp_l;
DROP TABLE t_temp_m;

//查询数据量
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019a;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019b;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019c;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019d;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019e;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019f;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019g;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019h;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019i;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019j;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019k;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019l;
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019m;

//增加列带默认值
ALTER TABLE t_table_019a ADD COLUMN c_default INTERVAL YEAR DEFAULT '9';
ALTER TABLE t_table_019b ADD COLUMN c_default INTERVAL MONTH DEFAULT '9';
ALTER TABLE t_table_019c ADD COLUMN c_default INTERVAL DAY DEFAULT '9';
ALTER TABLE t_table_019d ADD COLUMN c_default INTERVAL HOUR DEFAULT '9';
ALTER TABLE t_table_019e ADD COLUMN c_default INTERVAL MINUTE DEFAULT '9';
ALTER TABLE t_table_019f ADD COLUMN c_default INTERVAL SECOND DEFAULT '9';
ALTER TABLE t_table_019g ADD COLUMN c_default INTERVAL YEAR TO MONTH DEFAULT '9';
ALTER TABLE t_table_019h ADD COLUMN c_default INTERVAL DAY TO HOUR DEFAULT '9';
ALTER TABLE t_table_019i ADD COLUMN c_default INTERVAL DAY TO MINUTE DEFAULT '9';
ALTER TABLE t_table_019j ADD COLUMN c_default INTERVAL DAY TO SECOND DEFAULT '9';
ALTER TABLE t_table_019k ADD COLUMN c_default INTERVAL HOUR TO MINUTE DEFAULT '9';
ALTER TABLE t_table_019l ADD COLUMN c_default INTERVAL HOUR TO SECOND DEFAULT '9';
ALTER TABLE t_table_019m ADD COLUMN c_default INTERVAL MINUTE TO SECOND DEFAULT '9';

//查询数据量
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019a WHERE c_default = '9-0';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019b WHERE c_default = '0-9';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019c WHERE c_default = '9 0:00:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019d WHERE c_default = '9:00:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019e WHERE c_default = '0:09:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019f WHERE c_default = '0:00:09';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019g WHERE c_default = '0-9';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019h WHERE c_default = '9:00:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019i WHERE c_default = '0:09:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019j WHERE c_default = '0:00:09';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019k WHERE c_default = '0:09:00';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019l WHERE c_default = '0:00:09';
<预期结果 : 10000>
SELECT COUNT(*) FROM t_table_019m WHERE c_default = '0:00:09';

//增加列不带默认值
ALTER TABLE t_table_019a ADD COLUMN c_no_default INTERVAL YEAR;
ALTER TABLE t_table_019b ADD COLUMN c_no_default INTERVAL MONTH;
ALTER TABLE t_table_019c ADD COLUMN c_no_default INTERVAL DAY;
ALTER TABLE t_table_019d ADD COLUMN c_no_default INTERVAL HOUR;
ALTER TABLE t_table_019e ADD COLUMN c_no_default INTERVAL MINUTE;
ALTER TABLE t_table_019f ADD COLUMN c_no_default INTERVAL SECOND;
ALTER TABLE t_table_019g ADD COLUMN c_no_default INTERVAL YEAR TO MONTH;
ALTER TABLE t_table_019h ADD COLUMN c_no_default INTERVAL DAY TO HOUR;
ALTER TABLE t_table_019i ADD COLUMN c_no_default INTERVAL DAY TO MINUTE;
ALTER TABLE t_table_019j ADD COLUMN c_no_default INTERVAL DAY TO SECOND;
ALTER TABLE t_table_019k ADD COLUMN c_no_default INTERVAL HOUR TO MINUTE;
ALTER TABLE t_table_019l ADD COLUMN c_no_default INTERVAL HOUR TO SECOND;
ALTER TABLE t_table_019m ADD COLUMN c_no_default INTERVAL MINUTE TO SECOND;

//查询内容 : 预期结果共两列 , 第一列为 c_no_default | 第二列为时间间隔类型
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019a') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019b') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019c') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019d') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019e') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019f') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019g') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019h') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019i') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019j') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019k') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019l') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019m') and col_name like 'c_no_default%';

//修改列属性
ALTER TABLE t_table_019a MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019b MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019c MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019d MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019e MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019f MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019g MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019h MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019i MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019j MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019k MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019l MODIFY c_no_default VARCHAR(30);
ALTER TABLE t_table_019m MODIFY c_no_default VARCHAR(30);

//查询内容 : 预期结果共两列 , 第一列为 C_NO_DEFAULT | 第二列为 CHAR
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019a') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019b') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019c') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019d') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019e') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019f') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019g') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019h') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019i') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019j') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019k') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019l') and col_name like 'c_no_default%';
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019m') and col_name like 'c_no_default%';

//删除列
ALTER TABLE t_table_019a DROP COLUMN c_default;
ALTER TABLE t_table_019b DROP COLUMN c_default;
ALTER TABLE t_table_019c DROP COLUMN c_default;
ALTER TABLE t_table_019d DROP COLUMN c_default;
ALTER TABLE t_table_019e DROP COLUMN c_default;
ALTER TABLE t_table_019f DROP COLUMN c_default;
ALTER TABLE t_table_019g DROP COLUMN c_default;
ALTER TABLE t_table_019h DROP COLUMN c_default;
ALTER TABLE t_table_019i DROP COLUMN c_default;
ALTER TABLE t_table_019j DROP COLUMN c_default;
ALTER TABLE t_table_019k DROP COLUMN c_default;
ALTER TABLE t_table_019l DROP COLUMN c_default;
ALTER TABLE t_table_019m DROP COLUMN c_default;

//查询内容 : 预期结果两行两列，分明为 ID , INTEGER 和 C_NO_DEFAULT , CHAR
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019a');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019b');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019c');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019d');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019e');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019f');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019g');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019h');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019i');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019j');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019k');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019l');
SELECT col_name ,  type_name from dba_columns where table_id = (select table_ID from dba_tables where table_name = 't_table_019m');

//删除表
DROP TABLE t_table_019a;
DROP TABLE t_table_019b;
DROP TABLE t_table_019c;
DROP TABLE t_table_019d;
DROP TABLE t_table_019e;
DROP TABLE t_table_019f;
DROP TABLE t_table_019g;
DROP TABLE t_table_019h;
DROP TABLE t_table_019i;
DROP TABLE t_table_019j;
DROP TABLE t_table_019k;
DROP TABLE t_table_019l;
DROP TABLE t_table_019m;

!4 XG-TYPE-INTERVAL-TABLE-020 增加修改列带附加信息 (NOT NULL ,  FOREIGN KEY)
//创建父表
CREATE TABLE t_parent_020a (c1 INTERVAL YEAR PRIMARY KEY);
CREATE TABLE t_parent_020b (c1 INTERVAL MONTH PRIMARY KEY);
CREATE TABLE t_parent_020c (c1 INTERVAL DAY PRIMARY KEY);
CREATE TABLE t_parent_020d (c1 INTERVAL HOUR PRIMARY KEY);
CREATE TABLE t_parent_020e (c1 INTERVAL MINUTE PRIMARY KEY);
CREATE TABLE t_parent_020f (c1 INTERVAL SECOND PRIMARY KEY);
CREATE TABLE t_parent_020g (c1 INTERVAL YEAR TO MONTH PRIMARY KEY);
CREATE TABLE t_parent_020h (c1 INTERVAL DAY TO HOUR PRIMARY KEY);
CREATE TABLE t_parent_020i (c1 INTERVAL DAY TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_020j (c1 INTERVAL DAY TO SECOND PRIMARY KEY);
CREATE TABLE t_parent_020k (c1 INTERVAL HOUR TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_020l (c1 INTERVAL HOUR TO SECOND PRIMARY KEY);
CREATE TABLE t_parent_020m (c1 INTERVAL MINUTE TO SECOND PRIMARY KEY);

//父表插入数据
INSERT INTO t_parent_020a VALUES ('9');
INSERT INTO t_parent_020b VALUES ('9');
INSERT INTO t_parent_020c VALUES ('9');
INSERT INTO t_parent_020d VALUES ('9');
INSERT INTO t_parent_020e VALUES ('9');
INSERT INTO t_parent_020f VALUES ('9');
INSERT INTO t_parent_020g VALUES ('9');
INSERT INTO t_parent_020h VALUES ('9');
INSERT INTO t_parent_020i VALUES ('9');
INSERT INTO t_parent_020j VALUES ('9');
INSERT INTO t_parent_020k VALUES ('9');
INSERT INTO t_parent_020l VALUES ('9');
INSERT INTO t_parent_020m VALUES ('9');

//创建子表
CREATE TABLE t_table_020a (c1 INTERVAL YEAR);
CREATE TABLE t_table_020b (c1 INTERVAL MONTH);
CREATE TABLE t_table_020c (c1 INTERVAL DAY);
CREATE TABLE t_table_020d (c1 INTERVAL HOUR);
CREATE TABLE t_table_020e (c1 INTERVAL MINUTE);
CREATE TABLE t_table_020f (c1 INTERVAL SECOND);
CREATE TABLE t_table_020g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_020h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_020i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_020j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_020k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_020l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_020m (c1 INTERVAL MINUTE TO SECOND);

//子表增加非空带默认值列
ALTER TABLE t_table_020a ADD COLUMN col_nn INTERVAL YEAR NOT NULL DEFAULT '99';
ALTER TABLE t_table_020b ADD COLUMN col_nn INTERVAL MONTH NOT NULL DEFAULT '99';
ALTER TABLE t_table_020c ADD COLUMN col_nn INTERVAL DAY NOT NULL DEFAULT '99';
ALTER TABLE t_table_020d ADD COLUMN col_nn INTERVAL HOUR NOT NULL DEFAULT '99';
ALTER TABLE t_table_020e ADD COLUMN col_nn INTERVAL MINUTE NOT NULL DEFAULT '99';
ALTER TABLE t_table_020f ADD COLUMN col_nn INTERVAL SECOND NOT NULL DEFAULT '99';
ALTER TABLE t_table_020g ADD COLUMN col_nn INTERVAL YEAR TO MONTH NOT NULL DEFAULT '99';
ALTER TABLE t_table_020h ADD COLUMN col_nn INTERVAL DAY TO HOUR NOT NULL DEFAULT '99';
ALTER TABLE t_table_020i ADD COLUMN col_nn INTERVAL DAY TO MINUTE NOT NULL DEFAULT '99';
ALTER TABLE t_table_020j ADD COLUMN col_nn INTERVAL DAY TO SECOND NOT NULL DEFAULT '99';
ALTER TABLE t_table_020k ADD COLUMN col_nn INTERVAL HOUR TO MINUTE NOT NULL DEFAULT '99';
ALTER TABLE t_table_020l ADD COLUMN col_nn INTERVAL HOUR TO SECOND NOT NULL DEFAULT '99';
ALTER TABLE t_table_020m ADD COLUMN col_nn INTERVAL MINUTE TO SECOND NOT NULL DEFAULT '99';

//子表增加外键引用列
ALTER TABLE t_table_020a ADD COLUMN col_fk INTERVAL YEAR REFERENCES t_parent_020a(c1);
ALTER TABLE t_table_020b ADD COLUMN col_fk INTERVAL MONTH REFERENCES t_parent_020b(c1);
ALTER TABLE t_table_020c ADD COLUMN col_fk INTERVAL DAY REFERENCES t_parent_020c(c1);
ALTER TABLE t_table_020d ADD COLUMN col_fk INTERVAL HOUR REFERENCES t_parent_020d(c1);
ALTER TABLE t_table_020e ADD COLUMN col_fk INTERVAL MINUTE REFERENCES t_parent_020e(c1);
ALTER TABLE t_table_020f ADD COLUMN col_fk INTERVAL SECOND REFERENCES t_parent_020f(c1);
ALTER TABLE t_table_020g ADD COLUMN col_fk INTERVAL YEAR TO MONTH REFERENCES t_parent_020g(c1);
ALTER TABLE t_table_020h ADD COLUMN col_fk INTERVAL DAY TO HOUR REFERENCES t_parent_020h(c1);
ALTER TABLE t_table_020i ADD COLUMN col_fk INTERVAL DAY TO MINUTE REFERENCES t_parent_020i(c1);
ALTER TABLE t_table_020j ADD COLUMN col_fk INTERVAL DAY TO SECOND REFERENCES t_parent_020j(c1);
ALTER TABLE t_table_020k ADD COLUMN col_fk INTERVAL HOUR TO MINUTE REFERENCES t_parent_020k(c1);
ALTER TABLE t_table_020l ADD COLUMN col_fk INTERVAL HOUR TO SECOND REFERENCES t_parent_020l(c1);
ALTER TABLE t_table_020m ADD COLUMN col_fk INTERVAL MINUTE TO SECOND REFERENCES t_parent_020m(c1);

//子表插入不违反约束的值
INSERT INTO t_table_020a(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020b(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020c(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020d(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020e(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020f(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020g(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020h(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020i(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020j(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020k(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020l(c1 , col_fk) VALUES ('1' , '9');
INSERT INTO t_table_020m(c1 , col_fk) VALUES ('1' , '9');

//子表插入违反约束的值
INSERT INTO t_table_020a(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020b(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020c(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020d(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020e(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020f(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020g(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020h(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020i(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020j(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020k(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020l(c1 , col_fk) VALUES ('1' , '0');
INSERT INTO t_table_020m(c1 , col_fk) VALUES ('1' , '0');

//查询内容
<预期结果 : 1-0 | 99-0 | 9-0 | 约束成功>
SELECT * FROM t_table_020a;
<预期结果 : 0-1 | 8-3 | 0-9 | 约束成功>
SELECT * FROM t_table_020b;
<预期结果 : 1 0:00:00 | 99 0:00:00 | 9 0:00:00 | 约束成功>
SELECT * FROM t_table_020c;
<预期结果 : 1:00:00 | 99:00:00 | 9:00:00 | 约束成功>
SELECT * FROM t_table_020d;
<预期结果 : 0:01:00 | 1:39:00 | 0:09:00 | 约束成功>
SELECT * FROM t_table_020e;
<预期结果 : 0:00:01 | 0:01:39 | 0:00:09 | 约束成功>
SELECT * FROM t_table_020f;
<预期结果 : 0-1 | 8-3 | 0-9 | 约束成功>
SELECT * FROM t_table_020g;
<预期结果 : 1:00:00 | 4 3:00:00 | 9:00:00 | 约束成功>
SELECT * FROM t_table_020h;
<预期结果 : 0:01:00 | 1:39:00 | 0:09:00 | 约束成功>
SELECT * FROM t_table_020i;
<预期结果 : 0:00:01 | 0:01:39 | 0:00:09 | 约束成功>
SELECT * FROM t_table_020j;
<预期结果 : 0:01:00 | 1:39:00 | 0:09:00 | 约束成功>
SELECT * FROM t_table_020k;
<预期结果 : 0:00:01 | 0:01:39 | 0:00:09 | 约束成功>
SELECT * FROM t_table_020l;
<预期结果 : 0:00:01 | 0:01:39 | 0:00:09 | 约束成功>
SELECT * FROM t_table_020m;

//删除表
DROP TABLE t_table_020a;
DROP TABLE t_table_020b;
DROP TABLE t_table_020c;
DROP TABLE t_table_020d;
DROP TABLE t_table_020e;
DROP TABLE t_table_020f;
DROP TABLE t_table_020g;
DROP TABLE t_table_020h;
DROP TABLE t_table_020i;
DROP TABLE t_table_020j;
DROP TABLE t_table_020k;
DROP TABLE t_table_020l;
DROP TABLE t_table_020m;
DROP TABLE t_parent_020a;
DROP TABLE t_parent_020b;
DROP TABLE t_parent_020c;
DROP TABLE t_parent_020d;
DROP TABLE t_parent_020e;
DROP TABLE t_parent_020f;
DROP TABLE t_parent_020g;
DROP TABLE t_parent_020h;
DROP TABLE t_parent_020i;
DROP TABLE t_parent_020j;
DROP TABLE t_parent_020k;
DROP TABLE t_parent_020l;
DROP TABLE t_parent_020m;