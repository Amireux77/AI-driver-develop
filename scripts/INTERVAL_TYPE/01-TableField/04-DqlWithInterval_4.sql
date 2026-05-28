!4 XG-TYPE-INTERVAL-001 BETWEEN 与 IN 比较
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

INSERT INTO t_table_001a VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001b VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001c VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001d VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001e VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001f VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001g VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001h VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001i VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001j VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001k VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001l VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_001m VALUES (1 , '7') , (2 , '8') , (3 , '9');

//查询 IN
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001a WHERE c1 IN ('7-0' , '8-0' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001b WHERE c1 IN ('0-7' , '0-8' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001c WHERE c1 IN ('7 0:00:00' , '8 0:00:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001d WHERE c1 IN ('7:00:00' , '8:00:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001e WHERE c1 IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001f WHERE c1 IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001g WHERE c1 IN ('0-7' , '0-8' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001h WHERE c1 IN ('7:00:00' , '8:00:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001i WHERE c1 IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001j WHERE c1 IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001k WHERE c1 IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001l WHERE c1 IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : 1 / 2> 
SELECT id FROM t_table_001m WHERE c1 IN ('0:00:07' , '0:00:08' , NULL);

//查询 NOT IN
<预期结果 : 3> 
SELECT id FROM t_table_001a WHERE c1 NOT IN ('7-0' , '8-0');
<预期结果 : 3> 
SELECT id FROM t_table_001b WHERE c1 NOT IN ('0-7' , '0-8');
<预期结果 : 3> 
SELECT id FROM t_table_001c WHERE c1 NOT IN ('7 0:00:00' , '8 0:00:00');
<预期结果 : 3> 
SELECT id FROM t_table_001d WHERE c1 NOT IN ('7:00:00' , '8:00:00');
<预期结果 : 3> 
SELECT id FROM t_table_001e WHERE c1 NOT IN ('0:07:00' , '0:08:00');
<预期结果 : 3> 
SELECT id FROM t_table_001f WHERE c1 NOT IN ('0:00:07' , '0:00:08');
<预期结果 : 3> 
SELECT id FROM t_table_001g WHERE c1 NOT IN ('0-7' , '0-8');
<预期结果 : 3> 
SELECT id FROM t_table_001h WHERE c1 NOT IN ('7:00:00' , '8:00:00');
<预期结果 : 3> 
SELECT id FROM t_table_001i WHERE c1 NOT IN ('0:07:00' , '0:08:00');
<预期结果 : 3> 
SELECT id FROM t_table_001j WHERE c1 NOT IN ('0:00:07' , '0:00:08');
<预期结果 : 3> 
SELECT id FROM t_table_001k WHERE c1 NOT IN ('0:07:00' , '0:08:00');
<预期结果 : 3> 
SELECT id FROM t_table_001l WHERE c1 NOT IN ('0:00:07' , '0:00:08');
<预期结果 : 3> 
SELECT id FROM t_table_001m WHERE c1 NOT IN ('0:00:07' , '0:00:08');

//查询 NOT IN
<预期结果 : > 
SELECT id FROM t_table_001a WHERE c1 NOT IN ('7-0' , '8-0' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001b WHERE c1 NOT IN ('0-7' , '0-8' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001c WHERE c1 NOT IN ('7 0:00:00' , '8 0:00:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001d WHERE c1 NOT IN ('7:00:00' , '8:00:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001e WHERE c1 NOT IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001f WHERE c1 NOT IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001g WHERE c1 NOT IN ('0-7' , '0-8' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001h WHERE c1 NOT IN ('7:00:00' , '8:00:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001i WHERE c1 NOT IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001j WHERE c1 NOT IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001k WHERE c1 NOT IN ('0:07:00' , '0:08:00' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001l WHERE c1 NOT IN ('0:00:07' , '0:00:08' , NULL);
<预期结果 : > 
SELECT id FROM t_table_001m WHERE c1 NOT IN ('0:00:07' , '0:00:08' , NULL);

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

!4 XG-TYPE-INTERVAL-002 LIKE 的使用
CREATE TABLE t_table_002a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_002b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_002c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_002d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_002e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_002f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_002g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_002h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_002i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_002j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_002k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_002l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_002m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_002a VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002b VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002c VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002d VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002e VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002f VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002g VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002h VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002i VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002j VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002k VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002l VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_002m VALUES (1 , '7') , (2 , '8') , (3 , '9');

//查询 LIKE
<预期结果 : 1> 
SELECT id FROM t_table_002a WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002b WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002c WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002d WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002e WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002f WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002g WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002h WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002i WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002j WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002k WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002l WHERE c1 LIKE '%7%';
<预期结果 : 1> 
SELECT id FROM t_table_002m WHERE c1 LIKE '%7%';

//查询 NOT LIKE
<预期结果 : 报错> 
SELECT id FROM t_table_002a WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002b WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002c WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002d WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002e WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002f WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002g WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002h WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002i WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002j WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002k WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002l WHERE c1 NOT LIKE '%7%';
<预期结果 : 报错> 
SELECT id FROM t_table_002m WHERE c1 NOT LIKE '%7%';

//查询 LIKE...ESCAPE
<预期结果 : 1> 
SELECT id FROM t_table_002a WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002b WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002c WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002d WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002e WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002f WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002g WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002h WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002i WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002j WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002k WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002l WHERE c1 LIKE '%7%' ESCAPE '!';
<预期结果 : 1> 
SELECT id FROM t_table_002m WHERE c1 LIKE '%7%' ESCAPE '!';

//查询 NOT LIKE...ESCAPE
<预期结果 : 报错> 
SELECT id FROM t_table_002a WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002b WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002c WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002d WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002e WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002f WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002g WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002h WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002i WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002j WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002k WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002l WHERE c1 NOT LIKE '%7%' ESCAPE '!';
<预期结果 : 报错> 
SELECT id FROM t_table_002m WHERE c1 NOT LIKE '%7%' ESCAPE '!';

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

!4 XG-TYPE-INTERVAL-003 NULL值与多值比较
CREATE TABLE t_table_003a (id INT , c1 INTERVAL YEAR , c2 INTERVAL YEAR);
CREATE TABLE t_table_003b (id INT , c1 INTERVAL MONTH , c2 INTERVAL MONTH);
CREATE TABLE t_table_003c (id INT , c1 INTERVAL DAY , c2 INTERVAL DAY);
CREATE TABLE t_table_003d (id INT , c1 INTERVAL HOUR , c2 INTERVAL HOUR);
CREATE TABLE t_table_003e (id INT , c1 INTERVAL MINUTE , c2 INTERVAL MINUTE);
CREATE TABLE t_table_003f (id INT , c1 INTERVAL SECOND , c2 INTERVAL SECOND);
CREATE TABLE t_table_003g (id INT , c1 INTERVAL YEAR TO MONTH , c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_003h (id INT , c1 INTERVAL DAY TO HOUR , c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_003i (id INT , c1 INTERVAL DAY TO MINUTE , c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_003j (id INT , c1 INTERVAL DAY TO SECOND , c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_003k (id INT , c1 INTERVAL HOUR TO MINUTE , c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_003l (id INT , c1 INTERVAL HOUR TO SECOND , c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_003m (id INT , c1 INTERVAL MINUTE TO SECOND , c2 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_003a VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003b VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003c VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003d VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003e VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003f VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003g VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003h VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003i VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003j VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003k VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003l VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_003m VALUES (1 , '8' , NULL) , (2 , '8' , '9');

//查询 NULL
<预期结果 : 2>
SELECT id FROM t_table_003a WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003b WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003c WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003d WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003e WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003f WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003g WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003h WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003i WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003j WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003k WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003l WHERE c2 IS NOT NULL;
<预期结果 : 2>
SELECT id FROM t_table_003m WHERE c2 IS NOT NULL;

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

!4 XG-TYPE-INTERVAL-004 集合操作与聚合分析
CREATE TABLE t_one_004a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_one_004b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_one_004c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_one_004d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_one_004e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_one_004f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_one_004g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_one_004h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_one_004i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_one_004j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_one_004k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_one_004l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_one_004m (id INT , c1 INTERVAL MINUTE TO SECOND);
CREATE TABLE t_two_004a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_two_004b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_two_004c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_two_004d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_two_004e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_two_004f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_two_004g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_two_004h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_two_004i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_two_004j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_two_004k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_two_004l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_two_004m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_one_004a VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004b VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004c VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004d VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004e VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004f VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004g VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004h VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004i VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004j VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004k VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004l VALUES (1 , '6') , (2 , '7');
INSERT INTO t_one_004m VALUES (1 , '6') , (2 , '7');
INSERT INTO t_two_004a VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004b VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004c VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004d VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004e VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004f VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004g VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004h VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004i VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004j VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004k VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004l VALUES (1 , '6') , (3 , '9');
INSERT INTO t_two_004m VALUES (1 , '6') , (3 , '9');

// 不同 INTERVAL 类型表带隐式转换的 UNION 连接
SELECT c1 FROM t_one_004a UNION SELECT c1 FROM t_two_004a;
SELECT c1 FROM t_one_004a UNION SELECT c1 FROM t_two_004b;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004c;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004d;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004e;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004f;
SELECT c1 FROM t_one_004a UNION SELECT c1 FROM t_two_004g;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004h;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004i;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004j;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004k;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004l;
SELECT c1 FROM t_one_004f UNION SELECT c1 FROM t_two_004m;

// 不同 INTERVAL 类型表带隐式转换的 UNION ALL 连接
SELECT c1 FROM t_one_004a UNION ALL SELECT c1 FROM t_two_004a;
SELECT c1 FROM t_one_004a UNION ALL SELECT c1 FROM t_two_004b;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004c;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004d;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004e;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004f;
SELECT c1 FROM t_one_004a UNION ALL SELECT c1 FROM t_two_004g;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004h;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004i;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004j;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004k;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004l;
SELECT c1 FROM t_one_004f UNION ALL SELECT c1 FROM t_two_004m;

// 左外连接
SELECT * FROM t_one_004a t1 LEFT JOIN t_two_004a t2 ON t1.id = t2.id;
SELECT * FROM t_one_004b t1 LEFT JOIN t_two_004b t2 ON t1.id = t2.id;
SELECT * FROM t_one_004c t1 LEFT JOIN t_two_004c t2 ON t1.id = t2.id;
SELECT * FROM t_one_004d t1 LEFT JOIN t_two_004d t2 ON t1.id = t2.id;
SELECT * FROM t_one_004e t1 LEFT JOIN t_two_004e t2 ON t1.id = t2.id;
SELECT * FROM t_one_004f t1 LEFT JOIN t_two_004f t2 ON t1.id = t2.id;
SELECT * FROM t_one_004g t1 LEFT JOIN t_two_004g t2 ON t1.id = t2.id;
SELECT * FROM t_one_004h t1 LEFT JOIN t_two_004h t2 ON t1.id = t2.id;
SELECT * FROM t_one_004i t1 LEFT JOIN t_two_004i t2 ON t1.id = t2.id;
SELECT * FROM t_one_004j t1 LEFT JOIN t_two_004j t2 ON t1.id = t2.id;
SELECT * FROM t_one_004k t1 LEFT JOIN t_two_004k t2 ON t1.id = t2.id;
SELECT * FROM t_one_004l t1 LEFT JOIN t_two_004l t2 ON t1.id = t2.id;
SELECT * FROM t_one_004m t1 LEFT JOIN t_two_004m t2 ON t1.id = t2.id;

// 右外连接
SELECT * FROM t_one_004a t1 RIGHT JOIN t_two_004a t2 ON t1.id = t2.id;
SELECT * FROM t_one_004b t1 RIGHT JOIN t_two_004b t2 ON t1.id = t2.id;
SELECT * FROM t_one_004c t1 RIGHT JOIN t_two_004c t2 ON t1.id = t2.id;
SELECT * FROM t_one_004d t1 RIGHT JOIN t_two_004d t2 ON t1.id = t2.id;
SELECT * FROM t_one_004e t1 RIGHT JOIN t_two_004e t2 ON t1.id = t2.id;
SELECT * FROM t_one_004f t1 RIGHT JOIN t_two_004f t2 ON t1.id = t2.id;
SELECT * FROM t_one_004g t1 RIGHT JOIN t_two_004g t2 ON t1.id = t2.id;
SELECT * FROM t_one_004h t1 RIGHT JOIN t_two_004h t2 ON t1.id = t2.id;
SELECT * FROM t_one_004i t1 RIGHT JOIN t_two_004i t2 ON t1.id = t2.id;
SELECT * FROM t_one_004j t1 RIGHT JOIN t_two_004j t2 ON t1.id = t2.id;
SELECT * FROM t_one_004k t1 RIGHT JOIN t_two_004k t2 ON t1.id = t2.id;
SELECT * FROM t_one_004l t1 RIGHT JOIN t_two_004l t2 ON t1.id = t2.id;
SELECT * FROM t_one_004m t1 RIGHT JOIN t_two_004m t2 ON t1.id = t2.id;

// 全外连接
SELECT * FROM t_one_004a t1 FULL JOIN t_two_004a t2 ON t1.id = t2.id;
SELECT * FROM t_one_004b t1 FULL JOIN t_two_004b t2 ON t1.id = t2.id;
SELECT * FROM t_one_004c t1 FULL JOIN t_two_004c t2 ON t1.id = t2.id;
SELECT * FROM t_one_004d t1 FULL JOIN t_two_004d t2 ON t1.id = t2.id;
SELECT * FROM t_one_004e t1 FULL JOIN t_two_004e t2 ON t1.id = t2.id;
SELECT * FROM t_one_004f t1 FULL JOIN t_two_004f t2 ON t1.id = t2.id;
SELECT * FROM t_one_004g t1 FULL JOIN t_two_004g t2 ON t1.id = t2.id;
SELECT * FROM t_one_004h t1 FULL JOIN t_two_004h t2 ON t1.id = t2.id;
SELECT * FROM t_one_004i t1 FULL JOIN t_two_004i t2 ON t1.id = t2.id;
SELECT * FROM t_one_004j t1 FULL JOIN t_two_004j t2 ON t1.id = t2.id;
SELECT * FROM t_one_004k t1 FULL JOIN t_two_004k t2 ON t1.id = t2.id;
SELECT * FROM t_one_004l t1 FULL JOIN t_two_004l t2 ON t1.id = t2.id;
SELECT * FROM t_one_004m t1 FULL JOIN t_two_004m t2 ON t1.id = t2.id;

//删除表
DROP TABLE t_one_004a;
DROP TABLE t_one_004b;
DROP TABLE t_one_004c;
DROP TABLE t_one_004d;
DROP TABLE t_one_004e;
DROP TABLE t_one_004f;
DROP TABLE t_one_004g;
DROP TABLE t_one_004h;
DROP TABLE t_one_004i;
DROP TABLE t_one_004j;
DROP TABLE t_one_004k;
DROP TABLE t_one_004l;
DROP TABLE t_one_004m;
DROP TABLE t_two_004a;
DROP TABLE t_two_004b;
DROP TABLE t_two_004c;
DROP TABLE t_two_004d;
DROP TABLE t_two_004e;
DROP TABLE t_two_004f;
DROP TABLE t_two_004g;
DROP TABLE t_two_004h;
DROP TABLE t_two_004i;
DROP TABLE t_two_004j;
DROP TABLE t_two_004k;
DROP TABLE t_two_004l;
DROP TABLE t_two_004m;