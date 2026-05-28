!4 XG-TYPE-INTERVAL-FUNC-001 基础视图字段映射
//创建表
CREATE TABLE t_table_001a (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL YEAR);
CREATE TABLE t_table_001b (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MONTH);
CREATE TABLE t_table_001c (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY);
CREATE TABLE t_table_001d (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR);
CREATE TABLE t_table_001e (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MINUTE);
CREATE TABLE t_table_001f (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL SECOND);
CREATE TABLE t_table_001g (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_001h (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_001i (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_001j (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_001k (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_001l (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_001m (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MINUTE TO SECOND);

//插入表数据
INSERT INTO t_table_001a VALUES (1 , 'Alice' , '9-0');
INSERT INTO t_table_001b VALUES (1 , 'Alice' , '0-9');
INSERT INTO t_table_001c VALUES (1 , 'Alice' , '9 0:00:00');
INSERT INTO t_table_001d VALUES (1 , 'Alice' , '9:00:00');
INSERT INTO t_table_001e VALUES (1 , 'Alice' , '0:09:00');
INSERT INTO t_table_001f VALUES (1 , 'Alice' , '0:00:09');
INSERT INTO t_table_001g VALUES (1 , 'Alice' , '0-9');
INSERT INTO t_table_001h VALUES (1 , 'Alice' , '9:00:00');
INSERT INTO t_table_001i VALUES (1 , 'Alice' , '0:09:00');
INSERT INTO t_table_001j VALUES (1 , 'Alice' , '0:00:09');
INSERT INTO t_table_001k VALUES (1 , 'Alice' , '0:09:00');
INSERT INTO t_table_001l VALUES (1 , 'Alice' , '0:00:09');
INSERT INTO t_table_001m VALUES (1 , 'Alice' , '0:00:09');

//创建视图
CREATE OR REPLACE VIEW v_view_001a AS SELECT * FROM t_table_001a;
CREATE OR REPLACE VIEW v_view_001b AS SELECT * FROM t_table_001b;
CREATE OR REPLACE VIEW v_view_001c AS SELECT * FROM t_table_001c;
CREATE OR REPLACE VIEW v_view_001d AS SELECT * FROM t_table_001d;
CREATE OR REPLACE VIEW v_view_001e AS SELECT * FROM t_table_001e;
CREATE OR REPLACE VIEW v_view_001f AS SELECT * FROM t_table_001f;
CREATE OR REPLACE VIEW v_view_001g AS SELECT * FROM t_table_001g;
CREATE OR REPLACE VIEW v_view_001h AS SELECT * FROM t_table_001h;
CREATE OR REPLACE VIEW v_view_001i AS SELECT * FROM t_table_001i;
CREATE OR REPLACE VIEW v_view_001j AS SELECT * FROM t_table_001j;
CREATE OR REPLACE VIEW v_view_001k AS SELECT * FROM t_table_001k;
CREATE OR REPLACE VIEW v_view_001l AS SELECT * FROM t_table_001l;
CREATE OR REPLACE VIEW v_view_001m AS SELECT * FROM t_table_001m;

//查询视图内容
<预期结果 : 1 | Alice | 9-0>
SELECT * FROM v_view_001a WHERE id = 1;
<预期结果 : 1 | Alice | 0-9>
SELECT * FROM v_view_001b WHERE id = 1;
<预期结果 : 1 | Alice | 9 0:00:00>
SELECT * FROM v_view_001c WHERE id = 1;
<预期结果 : 1 | Alice | 9:00:00>
SELECT * FROM v_view_001d WHERE id = 1;
<预期结果 : 1 | Alice | 0:09:00>
SELECT * FROM v_view_001e WHERE id = 1;
<预期结果 : 1 | Alice | 0:00:09>
SELECT * FROM v_view_001f WHERE id = 1;
<预期结果 : 1 | Alice | 0-9>
SELECT * FROM v_view_001g WHERE id = 1;
<预期结果 : 1 | Alice | 9:00:00>
SELECT * FROM v_view_001h WHERE id = 1;
<预期结果 : 1 | Alice | 0:09:00>
SELECT * FROM v_view_001i WHERE id = 1;
<预期结果 : 1 | Alice | 0:00:09>
SELECT * FROM v_view_001j WHERE id = 1;
<预期结果 : 1 | Alice | 0:09:00>
SELECT * FROM v_view_001k WHERE id = 1;
<预期结果 : 1 | Alice | 0:00:09>
SELECT * FROM v_view_001l WHERE id = 1;
<预期结果 : 1 | Alice | 0:00:09>
SELECT * FROM v_view_001m WHERE id = 1;

//删除视图
DROP VIEW v_view_001a;
DROP VIEW v_view_001b;
DROP VIEW v_view_001c;
DROP VIEW v_view_001d;
DROP VIEW v_view_001e;
DROP VIEW v_view_001f;
DROP VIEW v_view_001g;
DROP VIEW v_view_001h;
DROP VIEW v_view_001i;
DROP VIEW v_view_001j;
DROP VIEW v_view_001k;
DROP VIEW v_view_001l;
DROP VIEW v_view_001m;

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

!4 XG-TYPE-INTERVAL-VIEW-002 通过视图更新/插入表数据
//创建表
CREATE TABLE t_table_002a (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL YEAR);
CREATE TABLE t_table_002b (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MONTH);
CREATE TABLE t_table_002c (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY);
CREATE TABLE t_table_002d (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR);
CREATE TABLE t_table_002e (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MINUTE);
CREATE TABLE t_table_002f (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL SECOND);
CREATE TABLE t_table_002g (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_002h (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_002i (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_002j (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_002k (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_002l (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_002m (id INT PRIMARY KEY , name VARCHAR(20) , c1 INTERVAL MINUTE TO SECOND);

//创建视图
CREATE OR REPLACE VIEW v_view_002a AS SELECT * FROM t_table_002a;
CREATE OR REPLACE VIEW v_view_002b AS SELECT * FROM t_table_002b;
CREATE OR REPLACE VIEW v_view_002c AS SELECT * FROM t_table_002c;
CREATE OR REPLACE VIEW v_view_002d AS SELECT * FROM t_table_002d;
CREATE OR REPLACE VIEW v_view_002e AS SELECT * FROM t_table_002e;
CREATE OR REPLACE VIEW v_view_002f AS SELECT * FROM t_table_002f;
CREATE OR REPLACE VIEW v_view_002g AS SELECT * FROM t_table_002g;
CREATE OR REPLACE VIEW v_view_002h AS SELECT * FROM t_table_002h;
CREATE OR REPLACE VIEW v_view_002i AS SELECT * FROM t_table_002i;
CREATE OR REPLACE VIEW v_view_002j AS SELECT * FROM t_table_002j;
CREATE OR REPLACE VIEW v_view_002k AS SELECT * FROM t_table_002k;
CREATE OR REPLACE VIEW v_view_002l AS SELECT * FROM t_table_002l;
CREATE OR REPLACE VIEW v_view_002m AS SELECT * FROM t_table_002m;

//插入视图数据
INSERT INTO v_view_002a VALUES (2 , 'Bob' , '8-0');
INSERT INTO v_view_002b VALUES (2 , 'Bob' , '0-8');
INSERT INTO v_view_002c VALUES (2 , 'Bob' , '8 0:00:00');
INSERT INTO v_view_002d VALUES (2 , 'Bob' , '8:00:00');
INSERT INTO v_view_002e VALUES (2 , 'Bob' , '0:08:00');
INSERT INTO v_view_002f VALUES (2 , 'Bob' , '0:00:08');
INSERT INTO v_view_002g VALUES (2 , 'Bob' , '0-8');
INSERT INTO v_view_002h VALUES (2 , 'Bob' , '8:00:00');
INSERT INTO v_view_002i VALUES (2 , 'Bob' , '0:08:00');
INSERT INTO v_view_002j VALUES (2 , 'Bob' , '0:00:08');
INSERT INTO v_view_002k VALUES (2 , 'Bob' , '0:08:00');
INSERT INTO v_view_002l VALUES (2 , 'Bob' , '0:00:08');
INSERT INTO v_view_002m VALUES (2 , 'Bob' , '0:00:08');

//查询视图与表内容
<预期结果 : Bob | Bob | 8-0 | 8-0>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002a v JOIN t_table_002a t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0-8 | 0-8>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002b v JOIN t_table_002b t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 8 0:00:00 | 8 0:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002c v JOIN t_table_002c t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 8:00:00 | 8:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002d v JOIN t_table_002d t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:08:00 | 0:08:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002e v JOIN t_table_002e t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:08 | 0:00:08>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002f v JOIN t_table_002f t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0-8 | 0-8>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002g v JOIN t_table_002g t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 8:00:00 | 8:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002h v JOIN t_table_002h t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:08:00 | 0:08:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002i v JOIN t_table_002i t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:08 | 0:00:08>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002j v JOIN t_table_002j t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:08:00 | 0:08:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002k v JOIN t_table_002k t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:08 | 0:00:08>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002l v JOIN t_table_002l t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:08 | 0:00:08>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002m v JOIN t_table_002m t ON v.id = t.id WHERE v.id = 2;

//更新视图内容
UPDATE v_view_002a SET c1 = '6-0';
UPDATE v_view_002b SET c1 = '0-6';
UPDATE v_view_002c SET c1 = '6 0:00:00';
UPDATE v_view_002d SET c1 = '6:00:00';
UPDATE v_view_002e SET c1 = '0:06:00';
UPDATE v_view_002f SET c1 = '0:00:06';
UPDATE v_view_002g SET c1 = '0-6';
UPDATE v_view_002h SET c1 = '6:00:00';
UPDATE v_view_002i SET c1 = '0:06:00';
UPDATE v_view_002j SET c1 = '0:00:06';
UPDATE v_view_002k SET c1 = '0:06:00';
UPDATE v_view_002l SET c1 = '0:00:06';
UPDATE v_view_002m SET c1 = '0:00:06';

//查询视图与表内容
<预期结果 : Bob | Bob | 6-0 | 6-0>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002a v JOIN t_table_002a t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0-6 | 0-6>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002b v JOIN t_table_002b t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 6 0:00:00 | 6 0:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002c v JOIN t_table_002c t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 6:00:00 | 6:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002d v JOIN t_table_002d t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:06:00 | 0:06:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002e v JOIN t_table_002e t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:06 | 0:00:06>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002f v JOIN t_table_002f t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0-6 | 0-6>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002g v JOIN t_table_002g t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 6:00:00 | 6:00:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002h v JOIN t_table_002h t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:06:00 | 0:06:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002i v JOIN t_table_002i t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:06 | 0:00:06>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002j v JOIN t_table_002j t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:06:00 | 0:06:00>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002k v JOIN t_table_002k t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:06 | 0:00:06>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002l v JOIN t_table_002l t ON v.id = t.id WHERE v.id = 2;
<预期结果 : Bob | Bob | 0:00:06 | 0:00:06>
SELECT v.name AS v_name , t.name AS t_name , v.c1 AS v_c1 , t.c1 AS t_c1 FROM v_view_002m v JOIN t_table_002m t ON v.id = t.id WHERE v.id = 2;


//删除视图
DROP VIEW v_view_002a;
DROP VIEW v_view_002b;
DROP VIEW v_view_002c;
DROP VIEW v_view_002d;
DROP VIEW v_view_002e;
DROP VIEW v_view_002f;
DROP VIEW v_view_002g;
DROP VIEW v_view_002h;
DROP VIEW v_view_002i;
DROP VIEW v_view_002j;
DROP VIEW v_view_002k;
DROP VIEW v_view_002l;
DROP VIEW v_view_002m;

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

!4 XG-TYPE-INTERVAL-VIEW-003 WITH CHECK OPTION interval 值约束
//创建表
CREATE TABLE t_table_003a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_003b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_003c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_003d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_003e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_003f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_003g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_003h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_003i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_003j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_003k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_003l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_003m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建值约束视图
CREATE OR REPLACE VIEW v_view_003a AS SELECT * FROM t_table_003a WHERE c1 = '9-0' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003b AS SELECT * FROM t_table_003b WHERE c1 = '0-9' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003c AS SELECT * FROM t_table_003c WHERE c1 = '9 0:00:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003d AS SELECT * FROM t_table_003d WHERE c1 = '9:00:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003e AS SELECT * FROM t_table_003e WHERE c1 = '0:09:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003f AS SELECT * FROM t_table_003f WHERE c1 = '0:00:09' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003g AS SELECT * FROM t_table_003g WHERE c1 = '0-9' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003h AS SELECT * FROM t_table_003h WHERE c1 = '9:00:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003i AS SELECT * FROM t_table_003i WHERE c1 = '0:09:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003j AS SELECT * FROM t_table_003j WHERE c1 = '0:00:09' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003k AS SELECT * FROM t_table_003k WHERE c1 = '0:09:00' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003l AS SELECT * FROM t_table_003l WHERE c1 = '0:00:09' WITH CHECK OPTION;
CREATE OR REPLACE VIEW v_view_003m AS SELECT * FROM t_table_003m WHERE c1 = '0:00:09' WITH CHECK OPTION;

//插入合法值
INSERT INTO v_view_003a VALUES (1 , '9');
INSERT INTO v_view_003b VALUES (1 , '9');
INSERT INTO v_view_003c VALUES (1 , '9');
INSERT INTO v_view_003d VALUES (1 , '9');
INSERT INTO v_view_003e VALUES (1 , '9');
INSERT INTO v_view_003f VALUES (1 , '9');
INSERT INTO v_view_003g VALUES (1 , '9');
INSERT INTO v_view_003h VALUES (1 , '9');
INSERT INTO v_view_003i VALUES (1 , '9');
INSERT INTO v_view_003j VALUES (1 , '9');
INSERT INTO v_view_003k VALUES (1 , '9');
INSERT INTO v_view_003l VALUES (1 , '9');
INSERT INTO v_view_003m VALUES (1 , '9');

//查询视图内容
<预期结果 : 1 | 9-0>
SELECT * FROM v_view_003a;
<预期结果 : 1 | 0-9>
SELECT * FROM v_view_003b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM v_view_003c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM v_view_003d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM v_view_003e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM v_view_003f;
<预期结果 : 1 | 0-9>
SELECT * FROM v_view_003g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM v_view_003h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM v_view_003i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM v_view_003j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM v_view_003k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM v_view_003l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM v_view_003m;

//插入非法值
<预期结果 : 报错>
INSERT INTO v_view_003a VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003b VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003c VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003d VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003e VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003f VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003g VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003h VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003i VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003j VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003k VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003l VALUES (1 , '6');
<预期结果 : 报错>
INSERT INTO v_view_003m VALUES (1 , '6');

//删除视图
DROP VIEW v_view_003a;
DROP VIEW v_view_003b;
DROP VIEW v_view_003c;
DROP VIEW v_view_003d;
DROP VIEW v_view_003e;
DROP VIEW v_view_003f;
DROP VIEW v_view_003g;
DROP VIEW v_view_003h;
DROP VIEW v_view_003i;
DROP VIEW v_view_003j;
DROP VIEW v_view_003k;
DROP VIEW v_view_003l;
DROP VIEW v_view_003m;

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

!4 XG-TYPE-INTERVAL-VIEW-004 多表连接视图中的 interval
//创建 base 表
CREATE TABLE t_table_004_base_a (id INT , name VARCHAR(20) , c1 INTERVAL YEAR);
CREATE TABLE t_table_004_base_b (id INT , name VARCHAR(20) , c1 INTERVAL MONTH);
CREATE TABLE t_table_004_base_c (id INT , name VARCHAR(20) , c1 INTERVAL DAY);
CREATE TABLE t_table_004_base_d (id INT , name VARCHAR(20) , c1 INTERVAL HOUR);
CREATE TABLE t_table_004_base_e (id INT , name VARCHAR(20) , c1 INTERVAL MINUTE);
CREATE TABLE t_table_004_base_f (id INT , name VARCHAR(20) , c1 INTERVAL SECOND);
CREATE TABLE t_table_004_base_g (id INT , name VARCHAR(20) , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_004_base_h (id INT , name VARCHAR(20) , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_004_base_i (id INT , name VARCHAR(20) , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_004_base_j (id INT , name VARCHAR(20) , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_004_base_k (id INT , name VARCHAR(20) , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_004_base_l (id INT , name VARCHAR(20) , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_004_base_m (id INT , name VARCHAR(20) , c1 INTERVAL MINUTE TO SECOND);

//创建 ext 表
CREATE TABLE t_table_004_ext (id INT , event_tz TIME WITH TIME ZONE , memo VARCHAR(50));

//向 base 表插入数据
INSERT INTO t_table_004_base_a VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_b VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_c VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_d VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_e VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_f VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_g VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_h VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_i VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_j VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_k VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_l VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);
INSERT INTO t_table_004_base_m VALUES (1 , 'Alice' , '9') , (2 , 'Bob' , '8') , (3 , 'Charlie' , NULL);

//向 ext 表插入数据
INSERT INTO t_table_004_ext VALUES (1 , '08:30:00+08:00' , 'Shift Start') , (4 , '12:00:00+00:00' , 'Orphan Memo');

//创建联查视图
CREATE OR REPLACE VIEW v_view_join_a AS SELECT a.id , a.name , a.c1 , z.event_tz , z.memo FROM t_table_004_base_a a LEFT JOIN t_table_004_ext z ON a.id = z.id;
CREATE OR REPLACE VIEW v_view_join_b AS SELECT b.id , b.name , b.c1 , z.event_tz , z.memo FROM t_table_004_base_b b LEFT JOIN t_table_004_ext z ON b.id = z.id;
CREATE OR REPLACE VIEW v_view_join_c AS SELECT c.id , c.name , c.c1 , z.event_tz , z.memo FROM t_table_004_base_c c LEFT JOIN t_table_004_ext z ON c.id = z.id;
CREATE OR REPLACE VIEW v_view_join_d AS SELECT d.id , d.name , d.c1 , z.event_tz , z.memo FROM t_table_004_base_d d LEFT JOIN t_table_004_ext z ON d.id = z.id;
CREATE OR REPLACE VIEW v_view_join_e AS SELECT e.id , e.name , e.c1 , z.event_tz , z.memo FROM t_table_004_base_e e LEFT JOIN t_table_004_ext z ON e.id = z.id;
CREATE OR REPLACE VIEW v_view_join_f AS SELECT f.id , f.name , f.c1 , z.event_tz , z.memo FROM t_table_004_base_f f LEFT JOIN t_table_004_ext z ON f.id = z.id;
CREATE OR REPLACE VIEW v_view_join_g AS SELECT g.id , g.name , g.c1 , z.event_tz , z.memo FROM t_table_004_base_g g LEFT JOIN t_table_004_ext z ON g.id = z.id;
CREATE OR REPLACE VIEW v_view_join_h AS SELECT h.id , h.name , h.c1 , z.event_tz , z.memo FROM t_table_004_base_h h LEFT JOIN t_table_004_ext z ON h.id = z.id;
CREATE OR REPLACE VIEW v_view_join_i AS SELECT i.id , i.name , i.c1 , z.event_tz , z.memo FROM t_table_004_base_i i LEFT JOIN t_table_004_ext z ON i.id = z.id;
CREATE OR REPLACE VIEW v_view_join_j AS SELECT j.id , j.name , j.c1 , z.event_tz , z.memo FROM t_table_004_base_j j LEFT JOIN t_table_004_ext z ON j.id = z.id;
CREATE OR REPLACE VIEW v_view_join_k AS SELECT k.id , k.name , k.c1 , z.event_tz , z.memo FROM t_table_004_base_k k LEFT JOIN t_table_004_ext z ON k.id = z.id;
CREATE OR REPLACE VIEW v_view_join_l AS SELECT l.id , l.name , l.c1 , z.event_tz , z.memo FROM t_table_004_base_l l LEFT JOIN t_table_004_ext z ON l.id = z.id;
CREATE OR REPLACE VIEW v_view_join_m AS SELECT m.id , m.name , m.c1 , z.event_tz , z.memo FROM t_table_004_base_m m LEFT JOIN t_table_004_ext z ON m.id = z.id;

//查询视图内容
<预期结果 : 三行结果>
SELECT * FROM v_view_join_a ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_b ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_c ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_d ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_e ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_f ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_g ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_h ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_i ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_j ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_k ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_l ORDER BY id;
<预期结果 : 三行结果>
SELECT * FROM v_view_join_m ORDER BY id;

//条件查询
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_a WHERE c1 = '9-0';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_b WHERE c1 = '0-9';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_c WHERE c1 = '9 0:00:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_d WHERE c1 = '9:00:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_e WHERE c1 = '0:09:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_f WHERE c1 = '0:00:09';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_g WHERE c1 = '0-9';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_h WHERE c1 = '9:00:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_i WHERE c1 = '0:09:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_j WHERE c1 = '0:00:09';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_k WHERE c1 = '0:09:00';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_l WHERE c1 = '0:00:09';
<预期结果 : Alice | Shift Start>
SELECT name , memo FROM v_view_join_m WHERE c1 = '0:00:09';

//查询最大值
<预期结果 : 9-0>
SELECT MAX(c1) FROM v_view_join_a;
<预期结果 : 0-9>
SELECT MAX(c1) FROM v_view_join_b;
<预期结果 : 9 0:00:00>
SELECT MAX(c1) FROM v_view_join_c;
<预期结果 : 9:00:00>
SELECT MAX(c1) FROM v_view_join_d;
<预期结果 : 0:09:00>
SELECT MAX(c1) FROM v_view_join_e;
<预期结果 : 0:00:09>
SELECT MAX(c1) FROM v_view_join_f;
<预期结果 : 0-9>
SELECT MAX(c1) FROM v_view_join_g;
<预期结果 : 9:00:00>
SELECT MAX(c1) FROM v_view_join_h;
<预期结果 : 0:09:00>
SELECT MAX(c1) FROM v_view_join_i;
<预期结果 : 0:00:09>
SELECT MAX(c1) FROM v_view_join_j;
<预期结果 : 0:09:00>
SELECT MAX(c1) FROM v_view_join_k;
<预期结果 : 0:00:09>
SELECT MAX(c1) FROM v_view_join_l;
<预期结果 : 0:00:09>
SELECT MAX(c1) FROM v_view_join_m;

//删除视图
DROP VIEW v_view_join_a;
DROP VIEW v_view_join_b;
DROP VIEW v_view_join_c;
DROP VIEW v_view_join_d;
DROP VIEW v_view_join_e;
DROP VIEW v_view_join_f;
DROP VIEW v_view_join_g;
DROP VIEW v_view_join_h;
DROP VIEW v_view_join_i;
DROP VIEW v_view_join_j;
DROP VIEW v_view_join_k;
DROP VIEW v_view_join_l;
DROP VIEW v_view_join_m;

//删除表
DROP TABLE t_table_004_base_a;
DROP TABLE t_table_004_base_b;
DROP TABLE t_table_004_base_c;
DROP TABLE t_table_004_base_d;
DROP TABLE t_table_004_base_e;
DROP TABLE t_table_004_base_f;
DROP TABLE t_table_004_base_g;
DROP TABLE t_table_004_base_h;
DROP TABLE t_table_004_base_i;
DROP TABLE t_table_004_base_j;
DROP TABLE t_table_004_base_k;
DROP TABLE t_table_004_base_l;
DROP TABLE t_table_004_base_m;
DROP TABLE t_table_004_ext;