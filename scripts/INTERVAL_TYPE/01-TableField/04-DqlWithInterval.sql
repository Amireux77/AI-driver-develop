!4 XG-TYPE-INTERVAL-TABLE-037 基础比较运算符验证
CREATE TABLE t_table_037a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_037b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_037c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_037d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_037e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_037f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_037g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_037h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_037i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_037j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_037k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_037l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_037m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_037a VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037b VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037c VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037d VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037e VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037f VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037g VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037h VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037i VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037j VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037k VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037l VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');
INSERT INTO t_table_037m VALUES (1 , '6') , (2 , '7') , (3 , '8') , (4 , '9');

// '=' 运算符
<预期结果 : 4>
SELECT id FROM t_table_037a WHERE c1 = '9-0';
<预期结果 : 4>
SELECT id FROM t_table_037b WHERE c1 = '0-9';
<预期结果 : 4>
SELECT id FROM t_table_037c WHERE c1 = '9 0:00:00';
<预期结果 : 4>
SELECT id FROM t_table_037d WHERE c1 = '9:00:00';
<预期结果 : 4>
SELECT id FROM t_table_037e WHERE c1 = '0:09:00';
<预期结果 : 4>
SELECT id FROM t_table_037f WHERE c1 = '0:00:09';
<预期结果 : 4>
SELECT id FROM t_table_037g WHERE c1 = '0-9';
<预期结果 : 4>
SELECT id FROM t_table_037h WHERE c1 = '9:00:00';
<预期结果 : 4>
SELECT id FROM t_table_037i WHERE c1 = '0:09:00';
<预期结果 : 4>
SELECT id FROM t_table_037j WHERE c1 = '0:00:09';
<预期结果 : 4>
SELECT id FROM t_table_037k WHERE c1 = '0:09:00';
<预期结果 : 4>
SELECT id FROM t_table_037l WHERE c1 = '0:00:09';
<预期结果 : 4>
SELECT id FROM t_table_037m WHERE c1 = '0:00:09';

// '!=' 运算符
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037a WHERE c1 != '9-0' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037b WHERE c1 != '0-9' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037c WHERE c1 != '9 0:00:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037d WHERE c1 != '9:00:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037e WHERE c1 != '0:09:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037f WHERE c1 != '0:00:09' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037g WHERE c1 != '0-9' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037h WHERE c1 != '9:00:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037i WHERE c1 != '0:09:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037j WHERE c1 != '0:00:09' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037k WHERE c1 != '0:09:00' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037l WHERE c1 != '0:00:09' ORDER BY id;
<预期结果 : 1 | 2 | 3>
SELECT id FROM t_table_037m WHERE c1 != '0:00:09' ORDER BY id;

// '>' 运算符
<预期结果 : 4>
SELECT id FROM t_table_037a WHERE c1 > '8-0' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037b WHERE c1 > '0-8' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037c WHERE c1 > '8 0:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037d WHERE c1 > '8:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037e WHERE c1 > '0:08:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037f WHERE c1 > '0:00:08' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037g WHERE c1 > '0-8' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037h WHERE c1 > '8:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037i WHERE c1 > '0:08:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037j WHERE c1 > '0:00:08' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037k WHERE c1 > '0:08:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037l WHERE c1 > '0:00:08' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037m WHERE c1 > '0:00:08' ORDER BY id;

// '>=' 运算符
<预期结果 : 4>
SELECT id FROM t_table_037a WHERE c1 >= '9-0' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037b WHERE c1 >= '0-9' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037c WHERE c1 >= '9 0:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037d WHERE c1 >= '9:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037e WHERE c1 >= '0:09:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037f WHERE c1 >= '0:00:09' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037g WHERE c1 >= '0-9' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037h WHERE c1 >= '9:00:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037i WHERE c1 >= '0:09:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037j WHERE c1 >= '0:00:09' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037k WHERE c1 >= '0:09:00' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037l WHERE c1 >= '0:00:09' ORDER BY id;
<预期结果 : 4>
SELECT id FROM t_table_037m WHERE c1 >= '0:00:09' ORDER BY id;

// '<' 运算符
<预期结果 : 1>
SELECT id FROM t_table_037a WHERE c1 < '7-0' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037b WHERE c1 < '0-7' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037c WHERE c1 < '7 0:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037d WHERE c1 < '7:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037e WHERE c1 < '0:07:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037f WHERE c1 < '0:00:07' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037g WHERE c1 < '0-7' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037h WHERE c1 < '7:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037i WHERE c1 < '0:07:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037j WHERE c1 < '0:00:07' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037k WHERE c1 < '0:07:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037l WHERE c1 < '0:00:07' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037m WHERE c1 < '0:00:07' ORDER BY id;

// '<=' 运算符
<预期结果 : 1>
SELECT id FROM t_table_037a WHERE c1 <= '6-0' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037b WHERE c1 <= '0-6' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037c WHERE c1 <= '6 0:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037d WHERE c1 <= '6:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037e WHERE c1 <= '0:06:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037f WHERE c1 <= '0:00:06' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037g WHERE c1 <= '0-6' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037h WHERE c1 <= '6:00:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037i WHERE c1 <= '0:06:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037j WHERE c1 <= '0:00:06' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037k WHERE c1 <= '0:06:00' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037l WHERE c1 <= '0:00:06' ORDER BY id;
<预期结果 : 1>
SELECT id FROM t_table_037m WHERE c1 <= '0:00:06' ORDER BY id;

//删除表
DROP TABLE t_table_037a;
DROP TABLE t_table_037b;
DROP TABLE t_table_037c;
DROP TABLE t_table_037d;
DROP TABLE t_table_037e;
DROP TABLE t_table_037f;
DROP TABLE t_table_037g;
DROP TABLE t_table_037h;
DROP TABLE t_table_037i;
DROP TABLE t_table_037j;
DROP TABLE t_table_037k;
DROP TABLE t_table_037l;
DROP TABLE t_table_037m;

!4 XG-TYPE-INTERVAL-TABLE-038 BETWEEN 与 IN 比较
CREATE TABLE t_table_038a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_038b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_038c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_038d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_038e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_038f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_038g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_038h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_038i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_038j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_038k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_038l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_038m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_038a VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038b VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038c VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038d VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038e VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038f VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038g VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038h VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038i VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038j VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038k VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038l VALUES (1 , '7') , (2 , '8') , (3 , '9');
INSERT INTO t_table_038m VALUES (1 , '7') , (2 , '8') , (3 , '9');

//查询 BETWEEN AND
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038a WHERE c1 BETWEEN '7-0' AND '8-0';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038b WHERE c1 BETWEEN '0-7' AND '0-8';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038c WHERE c1 BETWEEN '7 0:00:00' AND '8 0:00:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038d WHERE c1 BETWEEN '7:00:00' AND '8:00:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038e WHERE c1 BETWEEN '0:07:00' AND '0:08:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038f WHERE c1 BETWEEN '0:00:07' AND '0:00:08';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038g WHERE c1 BETWEEN '0-7' AND '0-8';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038h WHERE c1 BETWEEN '7:00:00' AND '8:00:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038i WHERE c1 BETWEEN '0:07:00' AND '0:08:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038j WHERE c1 BETWEEN '0:00:07' AND '0:00:08';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038k WHERE c1 BETWEEN '0:07:00' AND '0:08:00';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038l WHERE c1 BETWEEN '0:00:07' AND '0:00:08';
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038m WHERE c1 BETWEEN '0:00:07' AND '0:00:08';

//查询 IN
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038a WHERE c1 IN ('7-0' , '8-0');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038b WHERE c1 IN ('0-7' , '0-8');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038c WHERE c1 IN ('7 0:00:00' , '8 0:00:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038d WHERE c1 IN ('7:00:00' , '8:00:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038e WHERE c1 IN ('0:07:00' , '0:08:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038f WHERE c1 IN ('0:00:07' , '0:00:08');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038g WHERE c1 IN ('0-7' , '0-8');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038h WHERE c1 IN ('7:00:00' , '8:00:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038i WHERE c1 IN ('0:07:00' , '0:08:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038j WHERE c1 IN ('0:00:07' , '0:00:08');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038k WHERE c1 IN ('0:07:00' , '0:08:00');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038l WHERE c1 IN ('0:00:07' , '0:00:08');
<预期结果 : 1 | 2> 
SELECT id FROM t_table_038m WHERE c1 IN ('0:00:07' , '0:00:08');

//删除表
DROP TABLE t_table_038a;
DROP TABLE t_table_038b;
DROP TABLE t_table_038c;
DROP TABLE t_table_038d;
DROP TABLE t_table_038e;
DROP TABLE t_table_038f;
DROP TABLE t_table_038g;
DROP TABLE t_table_038h;
DROP TABLE t_table_038i;
DROP TABLE t_table_038j;
DROP TABLE t_table_038k;
DROP TABLE t_table_038l;
DROP TABLE t_table_038m;

!4 XG-TYPE-INTERVAL-TABLE-039 NULL 值与多值比较
CREATE TABLE t_table_039a (id INT , c1 INTERVAL YEAR , c2 INTERVAL YEAR);
CREATE TABLE t_table_039b (id INT , c1 INTERVAL MONTH , c2 INTERVAL MONTH);
CREATE TABLE t_table_039c (id INT , c1 INTERVAL DAY , c2 INTERVAL DAY);
CREATE TABLE t_table_039d (id INT , c1 INTERVAL HOUR , c2 INTERVAL HOUR);
CREATE TABLE t_table_039e (id INT , c1 INTERVAL MINUTE , c2 INTERVAL MINUTE);
CREATE TABLE t_table_039f (id INT , c1 INTERVAL SECOND , c2 INTERVAL SECOND);
CREATE TABLE t_table_039g (id INT , c1 INTERVAL YEAR TO MONTH , c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_039h (id INT , c1 INTERVAL DAY TO HOUR , c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_039i (id INT , c1 INTERVAL DAY TO MINUTE , c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_039j (id INT , c1 INTERVAL DAY TO SECOND , c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_039k (id INT , c1 INTERVAL HOUR TO MINUTE , c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_039l (id INT , c1 INTERVAL HOUR TO SECOND , c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_039m (id INT , c1 INTERVAL MINUTE TO SECOND , c2 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_039a VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039b VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039c VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039d VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039e VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039f VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039g VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039h VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039i VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039j VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039k VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039l VALUES (1 , '8' , NULL) , (2 , '8' , '9');
INSERT INTO t_table_039m VALUES (1 , '8' , NULL) , (2 , '8' , '9');

//查询 NULL
<预期结果 : 1>
SELECT id FROM t_table_039a WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039b WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039c WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039d WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039e WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039f WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039g WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039h WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039i WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039j WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039k WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039l WHERE c2 IS NULL;
<预期结果 : 1>
SELECT id FROM t_table_039m WHERE c2 IS NULL;

//查询 GREATEST
<预期结果 : 2 | 9-0>
SELECT id , GREATEST(c1 , '9-0') AS g_val FROM t_table_039a WHERE id =2;
<预期结果 : 2 | 0-9>
SELECT id , GREATEST(c1 , '0-9') AS g_val FROM t_table_039b WHERE id =2;
<预期结果 : 2 | 9 0:00:00>
SELECT id , GREATEST(c1 , '9 0:00:00') AS g_val FROM t_table_039c WHERE id =2;
<预期结果 : 2 | 9:00:00>
SELECT id , GREATEST(c1 , '9:00:00') AS g_val FROM t_table_039d WHERE id =2;
<预期结果 : 2 | 0:09:00>
SELECT id , GREATEST(c1 , '0:09:00') AS g_val FROM t_table_039e WHERE id =2;
<预期结果 : 2 | 0:00:09>
SELECT id , GREATEST(c1 , '0:00:09') AS g_val FROM t_table_039f WHERE id =2;
<预期结果 : 2 | 0-9>
SELECT id , GREATEST(c1 , '0-9') AS g_val FROM t_table_039g WHERE id =2;
<预期结果 : 2 | 9:00:00>
SELECT id , GREATEST(c1 , '9:00:00') AS g_val FROM t_table_039h WHERE id =2;
<预期结果 : 2 | 0:09:00>
SELECT id , GREATEST(c1 , '0:09:00') AS g_val FROM t_table_039i WHERE id =2;
<预期结果 : 2 | 0:00:09>
SELECT id , GREATEST(c1 , '0:00:09') AS g_val FROM t_table_039j WHERE id =2;
<预期结果 : 2 | 0:09:00>
SELECT id , GREATEST(c1 , '0:09:00') AS g_val FROM t_table_039k WHERE id =2;
<预期结果 : 2 | 0:00:09>
SELECT id , GREATEST(c1 , '0:00:09') AS g_val FROM t_table_039l WHERE id =2;
<预期结果 : 2 | 0:00:09>
SELECT id , GREATEST(c1 , '0:00:09') AS g_val FROM t_table_039m WHERE id =2;

//查询 LEAST
<预期结果 : 2 | 8-0>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039a WHERE id =2;
<预期结果 : 2 | 0-8>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039b WHERE id =2;
<预期结果 : 2 | 8 0:00:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039c WHERE id =2;
<预期结果 : 2 | 8:00:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039d WHERE id =2;
<预期结果 : 2 | 0:08:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039e WHERE id =2;
<预期结果 : 2 | 0:00:08>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039f WHERE id =2;
<预期结果 : 2 | 0-8>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039g WHERE id =2;
<预期结果 : 2 | 8:00:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039h WHERE id =2;
<预期结果 : 2 | 0:08:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039i WHERE id =2;
<预期结果 : 2 | 0:00:08>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039j WHERE id =2;
<预期结果 : 2 | 0:08:00>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039k WHERE id =2;
<预期结果 : 2 | 0:00:08>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039l WHERE id =2;
<预期结果 : 2 | 0:00:08>
SELECT id , LEAST(c1 , c2) AS g_val FROM t_table_039m WHERE id =2;

//删除表
DROP TABLE t_table_039a;
DROP TABLE t_table_039b;
DROP TABLE t_table_039c;
DROP TABLE t_table_039d;
DROP TABLE t_table_039e;
DROP TABLE t_table_039f;
DROP TABLE t_table_039g;
DROP TABLE t_table_039h;
DROP TABLE t_table_039i;
DROP TABLE t_table_039j;
DROP TABLE t_table_039k;
DROP TABLE t_table_039l;
DROP TABLE t_table_039m;

!4 XG-TYPE-INTERVAL-TABLE-040 基础查询算子测试
CREATE TABLE t_table_040a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_040b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_040c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_040d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_040e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_040f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_040g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_040h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_040i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_040j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_040k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_040l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_040m (id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_040a VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040b VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040c VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040d VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040e VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040f VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040g VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040h VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040i VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040j VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040k VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040l VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);
INSERT INTO t_table_040m VALUES (1 , '7') , (2 , '9') , (3 , '8') , (4 , NULL);

//查询 ORDER BY 排序
<预期结果 : 7-0 / 8-0 / 9-0 / null>
SELECT DISTINCT c1 FROM t_table_040a ORDER BY c1;
<预期结果 : 0-7 / 0-8 / 0-9 / null>
SELECT DISTINCT c1 FROM t_table_040b ORDER BY c1;
<预期结果 : 7 0:00:00 / 8 0:00:00 / 9 0:00:00 / null>
SELECT DISTINCT c1 FROM t_table_040c ORDER BY c1;
<预期结果 : 7:00:00 / 8:00:00 / 9:00:00 / null>
SELECT DISTINCT c1 FROM t_table_040d ORDER BY c1;
<预期结果 : 0:07:00 / 0:08:00 / 0:09:00 / null>
SELECT DISTINCT c1 FROM t_table_040e ORDER BY c1;
<预期结果 : 0:00:07 / 0:00:08 / 0:00:09 / null>
SELECT DISTINCT c1 FROM t_table_040f ORDER BY c1;
<预期结果 : 0-7 / 0-8 / 0-9 / null>
SELECT DISTINCT c1 FROM t_table_040g ORDER BY c1;
<预期结果 : 7:00:00 / 8:00:00 / 9:00:00 / null>
SELECT DISTINCT c1 FROM t_table_040h ORDER BY c1;
<预期结果 : 0:07:00 / 0:08:00 / 0:09:00 / null>
SELECT DISTINCT c1 FROM t_table_040i ORDER BY c1;
<预期结果 : 0:00:07 / 0:00:08 / 0:00:09 / null>
SELECT DISTINCT c1 FROM t_table_040j ORDER BY c1;
<预期结果 : 0:07:00 / 0:08:00 / 0:09:00 / null>
SELECT DISTINCT c1 FROM t_table_040k ORDER BY c1;
<预期结果 : 0:00:07 / 0:00:08 / 0:00:09 / null>
SELECT DISTINCT c1 FROM t_table_040l ORDER BY c1;
<预期结果 : 0:00:07 / 0:00:08 / 0:00:09 / null>
SELECT DISTINCT c1 FROM t_table_040m ORDER BY c1;

//查询 GROUP BY 排序
<预期结果 : null | 1 / 7-0 | 1 / 8-0 | 1 / 9-0 | 1>
SELECT c1 , COUNT(*) FROM t_table_040a GROUP BY c1;
<预期结果 : null | 1 / 0-7 | 1 / 0-8 | 1 / 0-9 | 1>
SELECT c1 , COUNT(*) FROM t_table_040b GROUP BY c1;
<预期结果 : null | 1 / 7 0:00:00 | 1 / 8 0:00:00 | 1 / 9 0:00:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040c GROUP BY c1;
<预期结果 : null | 1 / 7:00:00 | 1 / 8:00:00 | 1 / 9:00:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040d GROUP BY c1;
<预期结果 : null | 1 / 0:07:00 | 1 / 0:08:00 | 1 / 0:09:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040e GROUP BY c1;
<预期结果 : null | 1 / 0:00:08 | 1 / 0:00:09 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) FROM t_table_040f GROUP BY c1;
<预期结果 : null | 1 / 0-7 | 1 / 0-8 | 1 / 0-9 | 1>
SELECT c1 , COUNT(*) FROM t_table_040g GROUP BY c1;
<预期结果 : null | 1 / 7:00:00 | 1 / 8:00:00 | 1 / 9:00:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040h GROUP BY c1;
<预期结果 : null | 1 / 0:07:00 | 1 / 0:08:00 | 1 / 0:09:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040i GROUP BY c1;
<预期结果 : null | 1 / 0:00:08 | 1 / 0:00:09 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) FROM t_table_040j GROUP BY c1;
<预期结果 : null | 1 / 0:07:00 | 1 / 0:08:00 | 1 / 0:09:00 | 1>
SELECT c1 , COUNT(*) FROM t_table_040k GROUP BY c1;
<预期结果 : null | 1 / 0:00:08 | 1 / 0:00:09 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) FROM t_table_040l GROUP BY c1;
<预期结果 : null | 1 / 0:00:08 | 1 / 0:00:09 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) FROM t_table_040m GROUP BY c1;

//查询 MAX , MIN
<预期结果 : 9-0 | 7-0>
SELECT MAX(c1) , MIN(c1) FROM t_table_040a;
<预期结果 : 0-9 | 0-7>
SELECT MAX(c1) , MIN(c1) FROM t_table_040b;
<预期结果 : 9 0:00:00 | 7 0:00:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040c;
<预期结果 : 9:00:00 | 7:00:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040d;
<预期结果 : 0:09:00 | 0:07:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040e;
<预期结果 : 0:00:09 | 0:00:07>
SELECT MAX(c1) , MIN(c1) FROM t_table_040f;
<预期结果 : 0-9 | 0-7>
SELECT MAX(c1) , MIN(c1) FROM t_table_040g;
<预期结果 : 9:00:00 | 7:00:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040h;
<预期结果 : 0:09:00 | 0:07:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040i;
<预期结果 : 0:00:09 | 0:00:07>
SELECT MAX(c1) , MIN(c1) FROM t_table_040j;
<预期结果 : 0:09:00 | 0:07:00>
SELECT MAX(c1) , MIN(c1) FROM t_table_040k;
<预期结果 : 0:00:09 | 0:00:07>
SELECT MAX(c1) , MIN(c1) FROM t_table_040l;
<预期结果 : 0:00:09 | 0:00:07>
SELECT MAX(c1) , MIN(c1) FROM t_table_040m;

//查询 DESC
<预期结果 : 4 | null / 2 | 9-0>
SELECT * FROM t_table_040a ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0-9>
SELECT * FROM t_table_040b ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 9 0:00:00>
SELECT * FROM t_table_040c ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 9:00:00>
SELECT * FROM t_table_040d ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:09:00>
SELECT * FROM t_table_040e ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:00:09>
SELECT * FROM t_table_040f ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0-9>
SELECT * FROM t_table_040g ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 9:00:00>
SELECT * FROM t_table_040h ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:09:00>
SELECT * FROM t_table_040i ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:00:09>
SELECT * FROM t_table_040j ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:09:00>
SELECT * FROM t_table_040k ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:00:09>
SELECT * FROM t_table_040l ORDER BY c1 DESC LIMIT 2;
<预期结果 : 4 | null / 2 | 0:00:09>
SELECT * FROM t_table_040m ORDER BY c1 DESC LIMIT 2;

//删除表
DROP TABLE t_table_040a;
DROP TABLE t_table_040b;
DROP TABLE t_table_040c;
DROP TABLE t_table_040d;
DROP TABLE t_table_040e;
DROP TABLE t_table_040f;
DROP TABLE t_table_040g;
DROP TABLE t_table_040h;
DROP TABLE t_table_040i;
DROP TABLE t_table_040j;
DROP TABLE t_table_040k;
DROP TABLE t_table_040l;
DROP TABLE t_table_040m;

!4 XG-TYPE-INTERVAL-TABLE-041 开窗函数验证
CREATE TABLE t_table_041a (dept VARCHAR(20) , emp_id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_041b (dept VARCHAR(20) , emp_id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_041c (dept VARCHAR(20) , emp_id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_041d (dept VARCHAR(20) , emp_id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_041e (dept VARCHAR(20) , emp_id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_041f (dept VARCHAR(20) , emp_id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_041g (dept VARCHAR(20) , emp_id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_041h (dept VARCHAR(20) , emp_id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_041i (dept VARCHAR(20) , emp_id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_041j (dept VARCHAR(20) , emp_id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_041k (dept VARCHAR(20) , emp_id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_041l (dept VARCHAR(20) , emp_id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_041m (dept VARCHAR(20) , emp_id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_041a VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041b VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041c VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041d VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041e VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041f VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041g VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041h VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041i VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041j VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041k VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041l VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');
INSERT INTO t_table_041m VALUES ('A' , 1 , '7') , ('A' , 2 , '8') , ('B' , 3 , '6') , ('B' , 4 , '9');

//查询内容
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041a;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041b;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041c;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041d;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041e;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041f;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041g;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041h;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041i;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041j;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041k;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041l;
<预期结果 : 按部门分组 , 按时间间隔排序>
SELECT dept , emp_id , c1 , ROW_NUMBER() OVER (PARTITION BY dept ORDER BY c1) AS ROW_NUM , RANK() OVER (ORDER BY c1) AS GLOBAL_RANK FROM t_table_041m;

//查询内容
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041a;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041b;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041c;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041d;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041e;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041f;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041g;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041h;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041i;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041j;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041k;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041l;
<预期结果 : 按照时间长短排序 , 列出每位员工的入职时长 , 以及在他之前入职的那位员工的入职时长>
SELECT emp_id , c1 , LAG(c1) OVER(ORDER BY c1) AS LAST_TIME FROM t_table_041m;

//删除表
DROP TABLE t_table_041a;
DROP TABLE t_table_041b;
DROP TABLE t_table_041c;
DROP TABLE t_table_041d;
DROP TABLE t_table_041e;
DROP TABLE t_table_041f;
DROP TABLE t_table_041g;
DROP TABLE t_table_041h;
DROP TABLE t_table_041i;
DROP TABLE t_table_041j;
DROP TABLE t_table_041k;
DROP TABLE t_table_041l;
DROP TABLE t_table_041m;

!4 XG-TYPE-INTERVAL-TABLE-042 SQL组合综合使用
//创建主表
CREATE TABLE t_main_042a (id INT , c1 INTERVAL YEAR , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042b (id INT , c1 INTERVAL MONTH , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042c (id INT , c1 INTERVAL DAY , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042d (id INT , c1 INTERVAL HOUR , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042e (id INT , c1 INTERVAL MINUTE , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042f (id INT , c1 INTERVAL SECOND , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042g (id INT , c1 INTERVAL YEAR TO MONTH , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042h (id INT , c1 INTERVAL DAY TO HOUR , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042i (id INT , c1 INTERVAL DAY TO MINUTE , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042j (id INT , c1 INTERVAL DAY TO SECOND , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042k (id INT , c1 INTERVAL HOUR TO MINUTE , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042l (id INT , c1 INTERVAL HOUR TO SECOND , amount DECIMAL(10 , 2));
CREATE TABLE t_main_042m (id INT , c1 INTERVAL MINUTE TO SECOND , amount DECIMAL(10 , 2));

//创建参考表
CREATE TABLE t_ref_042a (ref INTERVAL YEAR , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042b (ref INTERVAL MONTH , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042c (ref INTERVAL DAY , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042d (ref INTERVAL HOUR , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042e (ref INTERVAL MINUTE , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042f (ref INTERVAL SECOND , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042g (ref INTERVAL YEAR TO MONTH , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042h (ref INTERVAL DAY TO HOUR , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042i (ref INTERVAL DAY TO MINUTE , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042j (ref INTERVAL DAY TO SECOND , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042k (ref INTERVAL HOUR TO MINUTE , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042l (ref INTERVAL HOUR TO SECOND , holiday_name VARCHAR(20));
CREATE TABLE t_ref_042m (ref INTERVAL MINUTE TO SECOND , holiday_name VARCHAR(20));

INSERT INTO t_main_042a VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042b VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042c VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042d VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042e VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042f VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042g VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042h VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042i VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042j VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042k VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042l VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);
INSERT INTO t_main_042m VALUES (1 , '9' , 100.0) , (2 , '8' , 200.0);

INSERT INTO t_ref_042a VALUES ('9' , 'New Year');
INSERT INTO t_ref_042b VALUES ('9' , 'New Year');
INSERT INTO t_ref_042c VALUES ('9' , 'New Year');
INSERT INTO t_ref_042d VALUES ('9' , 'New Year');
INSERT INTO t_ref_042e VALUES ('9' , 'New Year');
INSERT INTO t_ref_042f VALUES ('9' , 'New Year');
INSERT INTO t_ref_042g VALUES ('9' , 'New Year');
INSERT INTO t_ref_042h VALUES ('9' , 'New Year');
INSERT INTO t_ref_042i VALUES ('9' , 'New Year');
INSERT INTO t_ref_042j VALUES ('9' , 'New Year');
INSERT INTO t_ref_042k VALUES ('9' , 'New Year');
INSERT INTO t_ref_042l VALUES ('9' , 'New Year');
INSERT INTO t_ref_042m VALUES ('9' , 'New Year');

//查询内容
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042a m LEFT JOIN t_ref_042a r ON m.c1 = r.ref WHERE m.c1 > '1-0' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042b m LEFT JOIN t_ref_042b r ON m.c1 = r.ref WHERE m.c1 > '0-1' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042c m LEFT JOIN t_ref_042c r ON m.c1 = r.ref WHERE m.c1 > '1 0:00:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042d m LEFT JOIN t_ref_042d r ON m.c1 = r.ref WHERE m.c1 > '1:00:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042e m LEFT JOIN t_ref_042e r ON m.c1 = r.ref WHERE m.c1 > '0:01:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042f m LEFT JOIN t_ref_042f r ON m.c1 = r.ref WHERE m.c1 > '0:00:01' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042g m LEFT JOIN t_ref_042g r ON m.c1 = r.ref WHERE m.c1 > '0-1' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042h m LEFT JOIN t_ref_042h r ON m.c1 = r.ref WHERE m.c1 > '1:00:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042i m LEFT JOIN t_ref_042i r ON m.c1 = r.ref WHERE m.c1 > '0:01:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042j m LEFT JOIN t_ref_042j r ON m.c1 = r.ref WHERE m.c1 > '0:00:01' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042k m LEFT JOIN t_ref_042k r ON m.c1 = r.ref WHERE m.c1 > '0:01:00' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042l m LEFT JOIN t_ref_042l r ON m.c1 = r.ref WHERE m.c1 > '0:00:01' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;
SELECT m.c1 , SUM(m.amount) AS total_amt , r.holiday_name FROM t_main_042m m LEFT JOIN t_ref_042m r ON m.c1 = r.ref WHERE m.c1 > '0:00:01' GROUP BY m.c1 , r.holiday_name HAVING SUM(m.amount) > 50 ORDER BY m.c1 ASC;

//查询内容
SELECT * FROM t_main_042a m WHERE EXISTS (SELECT 1 FROM t_ref_042a r WHERE r.ref = m.c1);
SELECT * FROM t_main_042b m WHERE EXISTS (SELECT 1 FROM t_ref_042b r WHERE r.ref = m.c1);
SELECT * FROM t_main_042c m WHERE EXISTS (SELECT 1 FROM t_ref_042c r WHERE r.ref = m.c1);
SELECT * FROM t_main_042d m WHERE EXISTS (SELECT 1 FROM t_ref_042d r WHERE r.ref = m.c1);
SELECT * FROM t_main_042e m WHERE EXISTS (SELECT 1 FROM t_ref_042e r WHERE r.ref = m.c1);
SELECT * FROM t_main_042f m WHERE EXISTS (SELECT 1 FROM t_ref_042f r WHERE r.ref = m.c1);
SELECT * FROM t_main_042g m WHERE EXISTS (SELECT 1 FROM t_ref_042g r WHERE r.ref = m.c1);
SELECT * FROM t_main_042h m WHERE EXISTS (SELECT 1 FROM t_ref_042h r WHERE r.ref = m.c1);
SELECT * FROM t_main_042i m WHERE EXISTS (SELECT 1 FROM t_ref_042i r WHERE r.ref = m.c1);
SELECT * FROM t_main_042j m WHERE EXISTS (SELECT 1 FROM t_ref_042j r WHERE r.ref = m.c1);
SELECT * FROM t_main_042k m WHERE EXISTS (SELECT 1 FROM t_ref_042k r WHERE r.ref = m.c1);
SELECT * FROM t_main_042l m WHERE EXISTS (SELECT 1 FROM t_ref_042l r WHERE r.ref = m.c1);
SELECT * FROM t_main_042m m WHERE EXISTS (SELECT 1 FROM t_ref_042m r WHERE r.ref = m.c1);

//删除表
DROP TABLE t_main_042a;
DROP TABLE t_main_042b;
DROP TABLE t_main_042c;
DROP TABLE t_main_042d;
DROP TABLE t_main_042e;
DROP TABLE t_main_042f;
DROP TABLE t_main_042g;
DROP TABLE t_main_042h;
DROP TABLE t_main_042i;
DROP TABLE t_main_042j;
DROP TABLE t_main_042k;
DROP TABLE t_main_042l;
DROP TABLE t_main_042m;
DROP TABLE t_ref_042a;
DROP TABLE t_ref_042b;
DROP TABLE t_ref_042c;
DROP TABLE t_ref_042d;
DROP TABLE t_ref_042e;
DROP TABLE t_ref_042f;
DROP TABLE t_ref_042g;
DROP TABLE t_ref_042h;
DROP TABLE t_ref_042i;
DROP TABLE t_ref_042j;
DROP TABLE t_ref_042k;
DROP TABLE t_ref_042l;
DROP TABLE t_ref_042m;

!4 XG-TYPE-INTERVAL-TABLE-043 WITH 子句及函数应用
//WITH 字句
<预期结果 : 9-0>
WITH interval_cte_a AS (
SELECT CAST('9' AS INTERVAL YEAR) AS i_val
)
SELECT i_val FROM interval_cte_a WHERE i_val = '9-0';
/

<预期结果 : 0-9>
WITH interval_cte_b AS (
SELECT CAST('9' AS INTERVAL MONTH) AS i_val
)
SELECT i_val FROM interval_cte_b WHERE i_val = '0-9';
/

<预期结果 : 9 0:00:00>
WITH interval_cte_c AS (
SELECT CAST('9' AS INTERVAL DAY) AS i_val
)
SELECT i_val FROM interval_cte_c WHERE i_val = '9 0:00:00';
/

<预期结果 : 9:00:00>
WITH interval_cte_d AS (
SELECT CAST('9' AS INTERVAL HOUR) AS i_val
)
SELECT i_val FROM interval_cte_d WHERE i_val = '9:00:00';
/

<预期结果 : 0:09:00>
WITH interval_cte_e AS (
SELECT CAST('9' AS INTERVAL MINUTE) AS i_val
)
SELECT i_val FROM interval_cte_e WHERE i_val = '0:09:00';
/

<预期结果 : 0:00:09>
WITH interval_cte_f AS (
SELECT CAST('9' AS INTERVAL SECOND) AS i_val
)
SELECT i_val FROM interval_cte_f WHERE i_val = '0:00:09';
/

<预期结果 : 0-9>
WITH interval_cte_g AS (
SELECT CAST('9' AS INTERVAL YEAR TO MONTH) AS i_val
)
SELECT i_val FROM interval_cte_g WHERE i_val = '0-9';
/

<预期结果 : 9:00:00>
WITH interval_cte_h AS (
SELECT CAST('9' AS INTERVAL DAY TO HOUR) AS i_val
)
SELECT i_val FROM interval_cte_h WHERE i_val = '9:00:00';
/

<预期结果 : 0:09:00>
WITH interval_cte_i AS (
SELECT CAST('9' AS INTERVAL DAY TO MINUTE) AS i_val
)
SELECT i_val FROM interval_cte_i WHERE i_val = '0:09:00';
/

<预期结果 : 0:00:09>
WITH interval_cte_j AS (
SELECT CAST('9' AS INTERVAL DAY TO SECOND) AS i_val
)
SELECT i_val FROM interval_cte_j WHERE i_val = '0:00:09';
/

<预期结果 : 0:09:00>
WITH interval_cte_k AS (
SELECT CAST('9' AS INTERVAL HOUR TO MINUTE) AS i_val
)
SELECT i_val FROM interval_cte_k WHERE i_val = '0:09:00';
/

<预期结果 : 0:00:09>
WITH interval_cte_l AS (
SELECT CAST('9' AS INTERVAL HOUR TO SECOND) AS i_val
)
SELECT i_val FROM interval_cte_l WHERE i_val = '0:00:09';
/

<预期结果 : 0:00:09>
WITH interval_cte_m AS (
SELECT CAST('9' AS INTERVAL MINUTE TO SECOND) AS i_val
)
SELECT i_val FROM interval_cte_m WHERE i_val = '0:00:09';
/

//函数使用
CREATE OR REPLACE FUNCTION add_a (c1 INTERVAL YEAR)
RETURN INTERVAL YEAR
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_b (c1 INTERVAL MONTH)
RETURN INTERVAL MONTH
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_c (c1 INTERVAL DAY)
RETURN INTERVAL DAY
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_d (c1 INTERVAL HOUR)
RETURN INTERVAL HOUR
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_e (c1 INTERVAL MINUTE)
RETURN INTERVAL MINUTE
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_f (c1 INTERVAL SECOND)
RETURN INTERVAL SECOND
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_g (c1 INTERVAL YEAR TO MONTH)
RETURN INTERVAL YEAR TO MONTH
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_h (c1 INTERVAL DAY TO HOUR)
RETURN INTERVAL DAY TO HOUR
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_i (c1 INTERVAL DAY TO MINUTE)
RETURN INTERVAL DAY TO MINUTE
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_j (c1 INTERVAL DAY TO SECOND)
RETURN INTERVAL DAY TO SECOND
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_k (c1 INTERVAL HOUR TO MINUTE)
RETURN INTERVAL HOUR TO MINUTE
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_l (c1 INTERVAL HOUR TO SECOND)
RETURN INTERVAL HOUR TO SECOND
IS
BEGIN
RETURN c1 + '1';
END;
/

CREATE OR REPLACE FUNCTION add_m (c1 INTERVAL MINUTE TO SECOND)
RETURN INTERVAL MINUTE TO SECOND
IS
BEGIN
RETURN c1 + '1';
END;
/

//查询内容
<预期结果 : 10-0>
SELECT add_a(CAST('9' AS INTERVAL YEAR)) FROM dual;
<预期结果 : 0-10>
SELECT add_b(CAST('9' AS INTERVAL MONTH)) FROM dual;
<预期结果 : 10 0:00:00>
SELECT add_c(CAST('9' AS INTERVAL DAY)) FROM dual;
<预期结果 : 10:00:00>
SELECT add_d(CAST('9' AS INTERVAL HOUR)) FROM dual;
<预期结果 : 0:10:00>
SELECT add_e(CAST('9' AS INTERVAL MINUTE)) FROM dual;
<预期结果 : 0:00:10>
SELECT add_f(CAST('9' AS INTERVAL SECOND)) FROM dual;
<预期结果 : 0-10>
SELECT add_g(CAST('9' AS INTERVAL YEAR TO MONTH)) FROM dual;
<预期结果 : 10:00:00>
SELECT add_h(CAST('9' AS INTERVAL DAY TO HOUR)) FROM dual;
<预期结果 : 0:10:00>
SELECT add_i(CAST('9' AS INTERVAL DAY TO MINUTE)) FROM dual;
<预期结果 : 0:00:10>
SELECT add_j(CAST('9' AS INTERVAL DAY TO SECOND)) FROM dual;
<预期结果 : 0:10:00>
SELECT add_k(CAST('9' AS INTERVAL HOUR TO MINUTE)) FROM dual;
<预期结果 : 0:00:10>
SELECT add_l(CAST('9' AS INTERVAL HOUR TO SECOND)) FROM dual;
<预期结果 : 0:00:10>
SELECT add_m(CAST('9' AS INTERVAL MINUTE TO SECOND)) FROM dual;

//删除函数
DROP FUNCTION add_a;
DROP FUNCTION add_b;
DROP FUNCTION add_c;
DROP FUNCTION add_d;
DROP FUNCTION add_e;
DROP FUNCTION add_f;
DROP FUNCTION add_g;
DROP FUNCTION add_h;
DROP FUNCTION add_i;
DROP FUNCTION add_j;
DROP FUNCTION add_k;
DROP FUNCTION add_l;
DROP FUNCTION add_m;

!4 XG-TYPE-INTERVAL-TABLE-044 条件操作符与基础运算
CREATE TABLE t_table_044a (id INT , c1 INTERVAL YEAR , c2 INTERVAL YEAR);
CREATE TABLE t_table_044b (id INT , c1 INTERVAL MONTH , c2 INTERVAL MONTH);
CREATE TABLE t_table_044c (id INT , c1 INTERVAL DAY , c2 INTERVAL DAY);
CREATE TABLE t_table_044d (id INT , c1 INTERVAL HOUR , c2 INTERVAL HOUR);
CREATE TABLE t_table_044e (id INT , c1 INTERVAL MINUTE , c2 INTERVAL MINUTE);
CREATE TABLE t_table_044f (id INT , c1 INTERVAL SECOND , c2 INTERVAL SECOND);
CREATE TABLE t_table_044g (id INT , c1 INTERVAL YEAR TO MONTH , c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_044h (id INT , c1 INTERVAL DAY TO HOUR , c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_044i (id INT , c1 INTERVAL DAY TO MINUTE , c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_044j (id INT , c1 INTERVAL DAY TO SECOND , c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_044k (id INT , c1 INTERVAL HOUR TO MINUTE , c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_044l (id INT , c1 INTERVAL HOUR TO SECOND , c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_044m (id INT , c1 INTERVAL MINUTE TO SECOND , c2 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_044a VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044b VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044c VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044d VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044e VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044f VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044g VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044h VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044i VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044j VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044k VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044l VALUES (1 , '5' , '9') , (2 , '7' , '8');
INSERT INTO t_table_044m VALUES (1 , '5' , '9') , (2 , '7' , '8');

//查询内容
<预期结果 : 1 | 5-0 | 9-0 / 2 | 7-0 | 8-0>
SELECT * FROM t_table_044a WHERE (c1 + '5' > '9-0' AND c2 < '10-0') OR (c1 < '6-0');
<预期结果 : 1 | 0-5 | 0-9 / 2 | 0-7 | 0-8>
SELECT * FROM t_table_044b WHERE (c1 + '5' > '0-9' AND c2 < '0-10') OR (c1 < '0-6');
<预期结果 : 1 | 5 0:00:00 | 9 0:00:00 / 2 | 7 0:00:00 | 8 0:00:00>
SELECT * FROM t_table_044c WHERE (c1 + '5' > '9 0:00:00' AND c2 < '10 0:00:00') OR (c1 < '6 0:00:00');
<预期结果 : 1 | 5:00:00 | 9:00:00 / 2 | 7:00:00 | 8:00:00>
SELECT * FROM t_table_044d WHERE (c1 + '5' > '9:00:00' AND c2 < '10:00:00') OR (c1 < '6:00:00');
<预期结果 : 1 | 0:05:00 | 0:09:00 / 2 | 0:07:00 | 0:08:00>
SELECT * FROM t_table_044e WHERE (c1 + '5' > '0:09:00' AND c2 < '0:10:00') OR (c1 < '0:06:00');
<预期结果 : 1 | 0:00:05 | 0:00:09 / 2 | 0:00:07 | 0:00:08>
SELECT * FROM t_table_044f WHERE (c1 + '5' > '0:00:09' AND c2 < '0:00:10') OR (c1 < '0:00:06');
<预期结果 : 1 | 0-5 | 0-9 / 2 | 0-7 | 0-8>
SELECT * FROM t_table_044g WHERE (c1 + '5' > '0-9' AND c2 < '0-10') OR (c1 < '0-6');
<预期结果 : 1 | 5:00:00 | 9:00:00 / 2 | 7:00:00 | 8:00:00>
SELECT * FROM t_table_044h WHERE (c1 + '5' > '9:00:00' AND c2 < '10:00:00') OR (c1 < '6:00:00');
<预期结果 : 1 | 0:05:00 | 0:09:00 / 2 | 0:07:00 | 0:08:00>
SELECT * FROM t_table_044i WHERE (c1 + '5' > '0:09:00' AND c2 < '0:10:00') OR (c1 < '0:06:00');
<预期结果 : 1 | 0:00:05 | 0:00:09 / 2 | 0:00:07 | 0:00:08>
SELECT * FROM t_table_044j WHERE (c1 + '5' > '0:00:09' AND c2 < '0:00:10') OR (c1 < '0:00:06');
<预期结果 : 1 | 0:05:00 | 0:09:00 / 2 | 0:07:00 | 0:08:00>
SELECT * FROM t_table_044k WHERE (c1 + '5' > '0:09:00' AND c2 < '0:10:00') OR (c1 < '0:06:00');
<预期结果 : 1 | 0:00:05 | 0:00:09 / 2 | 0:00:07 | 0:00:08>
SELECT * FROM t_table_044l WHERE (c1 + '5' > '0:00:09' AND c2 < '0:00:10') OR (c1 < '0:00:06');
<预期结果 : 1 | 0:00:05 | 0:00:09 / 2 | 0:00:07 | 0:00:08>
SELECT * FROM t_table_044m WHERE (c1 + '5' > '0:00:09' AND c2 < '0:00:10') OR (c1 < '0:00:06');

//查询内容
<预期结果 : 4-0>
SELECT (c2 - c1) AS diff_interval FROM t_table_044a WHERE id = 1;
<预期结果 : 0-4>
SELECT (c2 - c1) AS diff_interval FROM t_table_044b WHERE id = 1;
<预期结果 : 4 0:00:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044c WHERE id = 1;
<预期结果 : 4:00:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044d WHERE id = 1;
<预期结果 : 0:04:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044e WHERE id = 1;
<预期结果 : 0:00:04>
SELECT (c2 - c1) AS diff_interval FROM t_table_044f WHERE id = 1;
<预期结果 : 0-4>
SELECT (c2 - c1) AS diff_interval FROM t_table_044g WHERE id = 1;
<预期结果 : 4:00:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044h WHERE id = 1;
<预期结果 : 0:04:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044i WHERE id = 1;
<预期结果 : 0:00:04>
SELECT (c2 - c1) AS diff_interval FROM t_table_044j WHERE id = 1;
<预期结果 : 0:04:00>
SELECT (c2 - c1) AS diff_interval FROM t_table_044k WHERE id = 1;
<预期结果 : 0:00:04>
SELECT (c2 - c1) AS diff_interval FROM t_table_044l WHERE id = 1;
<预期结果 : 0:00:04>
SELECT (c2 - c1) AS diff_interval FROM t_table_044m WHERE id = 1;

//删除表
DROP TABLE t_table_044a;
DROP TABLE t_table_044b;
DROP TABLE t_table_044c;
DROP TABLE t_table_044d;
DROP TABLE t_table_044e;
DROP TABLE t_table_044f;
DROP TABLE t_table_044g;
DROP TABLE t_table_044h;
DROP TABLE t_table_044i;
DROP TABLE t_table_044j;
DROP TABLE t_table_044k;
DROP TABLE t_table_044l;
DROP TABLE t_table_044m;

!4 XG-TYPE-INTERVAL-TABLE-045 层次查询验证
CREATE TABLE t_table_045a (id INT , p_id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_045b (id INT , p_id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_045c (id INT , p_id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_045d (id INT , p_id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_045e (id INT , p_id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_045f (id INT , p_id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_045g (id INT , p_id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_045h (id INT , p_id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_045i (id INT , p_id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_045j (id INT , p_id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_045k (id INT , p_id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_045l (id INT , p_id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_045m (id INT , p_id INT , c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_table_045a VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045b VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045c VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045d VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045e VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045f VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045g VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045h VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045i VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045j VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045k VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045l VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');
INSERT INTO t_table_045m VALUES (1 , NULL , '7') , (2 , 1 , '8') , (3 , 2 , '9');

//查询内容
<预期结果 : 2 | 8-0 / 3 | 9-0>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045a START WITH c1 = '7-0' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '7-0';
<预期结果 : 2 | 0-8 / 3 | 0-9>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045b START WITH c1 = '0-7' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0-7';
<预期结果 : 2 | 8 0:00:00 / 3 | 9 0:00:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045c START WITH c1 = '7 0:00:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '7 0:00:00';
<预期结果 : 2 | 8:00:00 / 3 | 9:00:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045d START WITH c1 = '7:00:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '7:00:00';
<预期结果 : 2 | 0:08:00 / 3 | 0:09:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045e START WITH c1 = '0:07:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:07:00';
<预期结果 : 2 | 0:00:08 / 3 | 0:00:09>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045f START WITH c1 = '0:00:07' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:00:07';
<预期结果 : 2 | 0-8 / 3 | 0-9>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045g START WITH c1 = '0-7' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0-7';
<预期结果 : 2 | 8:00:00 / 3 | 9:00:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045h START WITH c1 = '7:00:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '7:00:00';
<预期结果 : 2 | 0:08:00 / 3 | 0:09:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045i START WITH c1 = '0:07:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:07:00';
<预期结果 : 2 | 0:00:08 / 3 | 0:00:09>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045j START WITH c1 = '0:00:07' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:00:07';
<预期结果 : 2 | 0:08:00 / 3 | 0:09:00>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045k START WITH c1 = '0:07:00' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:07:00';
<预期结果 : 2 | 0:00:08 / 3 | 0:00:09>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045l START WITH c1 = '0:00:07' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:00:07';
<预期结果 : 2 | 0:00:08 / 3 | 0:00:09>
SELECT id , MIN(c1) AS min_c1 FROM t_table_045m START WITH c1 = '0:00:07' CONNECT BY PRIOR id = p_id GROUP BY id HAVING MIN(c1) > '0:00:07';

//删除表
DROP TABLE t_table_045a;
DROP TABLE t_table_045b;
DROP TABLE t_table_045c;
DROP TABLE t_table_045d;
DROP TABLE t_table_045e;
DROP TABLE t_table_045f;
DROP TABLE t_table_045g;
DROP TABLE t_table_045h;
DROP TABLE t_table_045i;
DROP TABLE t_table_045j;
DROP TABLE t_table_045k;
DROP TABLE t_table_045l;
DROP TABLE t_table_045m;

!4 XG-TYPE-INTERVAL-TABLE-046 集合操作与聚合分析
CREATE TABLE t_one_046a (c1 INTERVAL YEAR);
CREATE TABLE t_one_046b (c1 INTERVAL MONTH);
CREATE TABLE t_one_046c (c1 INTERVAL DAY);
CREATE TABLE t_one_046d (c1 INTERVAL HOUR);
CREATE TABLE t_one_046e (c1 INTERVAL MINUTE);
CREATE TABLE t_one_046f (c1 INTERVAL SECOND);
CREATE TABLE t_one_046g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_one_046h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_one_046i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_one_046j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_one_046k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_one_046l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_one_046m (c1 INTERVAL MINUTE TO SECOND);
CREATE TABLE t_two_046a (c1 INTERVAL YEAR);
CREATE TABLE t_two_046b (c1 INTERVAL MONTH);
CREATE TABLE t_two_046c (c1 INTERVAL DAY);
CREATE TABLE t_two_046d (c1 INTERVAL HOUR);
CREATE TABLE t_two_046e (c1 INTERVAL MINUTE);
CREATE TABLE t_two_046f (c1 INTERVAL SECOND);
CREATE TABLE t_two_046g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_two_046h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_two_046i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_two_046j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_two_046k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_two_046l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_two_046m (c1 INTERVAL MINUTE TO SECOND);

INSERT INTO t_one_046a VALUES ('6') , ('7');
INSERT INTO t_one_046b VALUES ('6') , ('7');
INSERT INTO t_one_046c VALUES ('6') , ('7');
INSERT INTO t_one_046d VALUES ('6') , ('7');
INSERT INTO t_one_046e VALUES ('6') , ('7');
INSERT INTO t_one_046f VALUES ('6') , ('7');
INSERT INTO t_one_046g VALUES ('6') , ('7');
INSERT INTO t_one_046h VALUES ('6') , ('7');
INSERT INTO t_one_046i VALUES ('6') , ('7');
INSERT INTO t_one_046j VALUES ('6') , ('7');
INSERT INTO t_one_046k VALUES ('6') , ('7');
INSERT INTO t_one_046l VALUES ('6') , ('7');
INSERT INTO t_one_046m VALUES ('6') , ('7');
INSERT INTO t_two_046a VALUES ('6') , ('9');
INSERT INTO t_two_046b VALUES ('6') , ('9');
INSERT INTO t_two_046c VALUES ('6') , ('9');
INSERT INTO t_two_046d VALUES ('6') , ('9');
INSERT INTO t_two_046e VALUES ('6') , ('9');
INSERT INTO t_two_046f VALUES ('6') , ('9');
INSERT INTO t_two_046g VALUES ('6') , ('9');
INSERT INTO t_two_046h VALUES ('6') , ('9');
INSERT INTO t_two_046i VALUES ('6') , ('9');
INSERT INTO t_two_046j VALUES ('6') , ('9');
INSERT INTO t_two_046k VALUES ('6') , ('9');
INSERT INTO t_two_046l VALUES ('6') , ('9');
INSERT INTO t_two_046m VALUES ('6') , ('9');

// UNION 查询
<预期结果 : 6-0 / 7-0 / 9-0>
SELECT c1 FROM t_one_046a UNION SELECT c1 FROM t_two_046a;
<预期结果 : 0-6 / 0-7 / 0-9>
SELECT c1 FROM t_one_046b UNION SELECT c1 FROM t_two_046b;
<预期结果 : 6 0:00:00 / 7 0:00:00 / 9 0:00:00>
SELECT c1 FROM t_one_046c UNION SELECT c1 FROM t_two_046c;
<预期结果 : 6:00:00 / 7:00:00 / 9:00:00>
SELECT c1 FROM t_one_046d UNION SELECT c1 FROM t_two_046d;
<预期结果 : 0:06:00 / 0:07:00 / 0:09:00>
SELECT c1 FROM t_one_046e UNION SELECT c1 FROM t_two_046e;
<预期结果 : 0:00:09 / 0:00:06 / 0:00:07>
SELECT c1 FROM t_one_046f UNION SELECT c1 FROM t_two_046f;
<预期结果 : 0-6 / 0-7 / 0-9>
SELECT c1 FROM t_one_046g UNION SELECT c1 FROM t_two_046g;
<预期结果 : 6:00:00 / 7:00:00 / 9:00:00>
SELECT c1 FROM t_one_046h UNION SELECT c1 FROM t_two_046h;
<预期结果 : 0:06:00 / 0:07:00 / 0:09:00>
SELECT c1 FROM t_one_046i UNION SELECT c1 FROM t_two_046i;
<预期结果 : 0:00:09 / 0:00:06 / 0:00:07>
SELECT c1 FROM t_one_046j UNION SELECT c1 FROM t_two_046j;
<预期结果 : 0:06:00 / 0:07:00 / 0:09:00>
SELECT c1 FROM t_one_046k UNION SELECT c1 FROM t_two_046k;
<预期结果 : 0:00:09 / 0:00:06 / 0:00:07>
SELECT c1 FROM t_one_046l UNION SELECT c1 FROM t_two_046l;
<预期结果 : 0:00:09 / 0:00:06 / 0:00:07>
SELECT c1 FROM t_one_046m UNION SELECT c1 FROM t_two_046m;

// INTERSECT 查询
<预期结果 : 6-0>
SELECT c1 FROM t_one_046a INTERSECT SELECT c1 FROM t_two_046a;
<预期结果 : 0-6>
SELECT c1 FROM t_one_046b INTERSECT SELECT c1 FROM t_two_046b;
<预期结果 : 6 0:00:00>
SELECT c1 FROM t_one_046c INTERSECT SELECT c1 FROM t_two_046c;
<预期结果 : 6:00:00>
SELECT c1 FROM t_one_046d INTERSECT SELECT c1 FROM t_two_046d;
<预期结果 : 0:06:00>
SELECT c1 FROM t_one_046e INTERSECT SELECT c1 FROM t_two_046e;
<预期结果 : 0:00:06>
SELECT c1 FROM t_one_046f INTERSECT SELECT c1 FROM t_two_046f;
<预期结果 : 0-6>
SELECT c1 FROM t_one_046g INTERSECT SELECT c1 FROM t_two_046g;
<预期结果 : 6:00:00>
SELECT c1 FROM t_one_046h INTERSECT SELECT c1 FROM t_two_046h;
<预期结果 : 0:06:00>
SELECT c1 FROM t_one_046i INTERSECT SELECT c1 FROM t_two_046i;
<预期结果 : 0:00:06>
SELECT c1 FROM t_one_046j INTERSECT SELECT c1 FROM t_two_046j;
<预期结果 : 0:06:00>
SELECT c1 FROM t_one_046k INTERSECT SELECT c1 FROM t_two_046k;
<预期结果 : 0:00:06>
SELECT c1 FROM t_one_046l INTERSECT SELECT c1 FROM t_two_046l;
<预期结果 : 0:00:06>
SELECT c1 FROM t_one_046m INTERSECT SELECT c1 FROM t_two_046m;

// OVER 查询
<预期结果 : 6-0 | 1 / 7-0 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046a;
<预期结果 : 0-6 | 1 / 0-7 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046b;
<预期结果 : 6 0:00:00 | 1 / 7 0:00:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046c;
<预期结果 : 6:00:00 | 1 / 7:00:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046d;
<预期结果 : 0:06:00 | 1 / 0:07:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046e;
<预期结果 : 0:00:06 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046f;
<预期结果 : 0-6 | 1 / 0-7 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046g;
<预期结果 : 6:00:00 | 1 / 7:00:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046h;
<预期结果 : 0:06:00 | 1 / 0:07:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046i;
<预期结果 : 0:00:06 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046j;
<预期结果 : 0:06:00 | 1 / 0:07:00 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046k;
<预期结果 : 0:00:06 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046l;
<预期结果 : 0:00:06 | 1 / 0:00:07 | 1>
SELECT c1 , COUNT(*) OVER(PARTITION BY c1) AS cnt FROM t_one_046m;

//删除表
DROP TABLE t_one_046a;
DROP TABLE t_one_046b;
DROP TABLE t_one_046c;
DROP TABLE t_one_046d;
DROP TABLE t_one_046e;
DROP TABLE t_one_046f;
DROP TABLE t_one_046g;
DROP TABLE t_one_046h;
DROP TABLE t_one_046i;
DROP TABLE t_one_046j;
DROP TABLE t_one_046k;
DROP TABLE t_one_046l;
DROP TABLE t_one_046m;
DROP TABLE t_two_046a;
DROP TABLE t_two_046b;
DROP TABLE t_two_046c;
DROP TABLE t_two_046d;
DROP TABLE t_two_046e;
DROP TABLE t_two_046f;
DROP TABLE t_two_046g;
DROP TABLE t_two_046h;
DROP TABLE t_two_046i;
DROP TABLE t_two_046j;
DROP TABLE t_two_046k;
DROP TABLE t_two_046l;
DROP TABLE t_two_046m;

!4 XG-TYPE-INTERVAL-TABLE-047 子查询谓词与连接覆盖
//创建主表
CREATE TABLE t_main_047a (c1 INTERVAL YEAR);
CREATE TABLE t_main_047b (c1 INTERVAL MONTH);
CREATE TABLE t_main_047c (c1 INTERVAL DAY);
CREATE TABLE t_main_047d (c1 INTERVAL HOUR);
CREATE TABLE t_main_047e (c1 INTERVAL MINUTE);
CREATE TABLE t_main_047f (c1 INTERVAL SECOND);
CREATE TABLE t_main_047g (c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_main_047h (c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_main_047i (c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_main_047j (c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_main_047k (c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_main_047l (c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_main_047m (c1 INTERVAL MINUTE TO SECOND);

//创建子表
CREATE TABLE t_sub_047a (c2 INTERVAL YEAR);
CREATE TABLE t_sub_047b (c2 INTERVAL MONTH);
CREATE TABLE t_sub_047c (c2 INTERVAL DAY);
CREATE TABLE t_sub_047d (c2 INTERVAL HOUR);
CREATE TABLE t_sub_047e (c2 INTERVAL MINUTE);
CREATE TABLE t_sub_047f (c2 INTERVAL SECOND);
CREATE TABLE t_sub_047g (c2 INTERVAL YEAR TO MONTH);
CREATE TABLE t_sub_047h (c2 INTERVAL DAY TO HOUR);
CREATE TABLE t_sub_047i (c2 INTERVAL DAY TO MINUTE);
CREATE TABLE t_sub_047j (c2 INTERVAL DAY TO SECOND);
CREATE TABLE t_sub_047k (c2 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_sub_047l (c2 INTERVAL HOUR TO SECOND);
CREATE TABLE t_sub_047m (c2 INTERVAL MINUTE TO SECOND);

//向主表插入数据
INSERT INTO t_main_047a VALUES ('6');
INSERT INTO t_main_047b VALUES ('6');
INSERT INTO t_main_047c VALUES ('6');
INSERT INTO t_main_047d VALUES ('6');
INSERT INTO t_main_047e VALUES ('6');
INSERT INTO t_main_047f VALUES ('6');
INSERT INTO t_main_047g VALUES ('6');
INSERT INTO t_main_047h VALUES ('6');
INSERT INTO t_main_047i VALUES ('6');
INSERT INTO t_main_047j VALUES ('6');
INSERT INTO t_main_047k VALUES ('6');
INSERT INTO t_main_047l VALUES ('6');
INSERT INTO t_main_047m VALUES ('6');

//向子表插入数据
INSERT INTO t_sub_047a VALUES ('6') , ('9');
INSERT INTO t_sub_047b VALUES ('6') , ('9');
INSERT INTO t_sub_047c VALUES ('6') , ('9');
INSERT INTO t_sub_047d VALUES ('6') , ('9');
INSERT INTO t_sub_047e VALUES ('6') , ('9');
INSERT INTO t_sub_047f VALUES ('6') , ('9');
INSERT INTO t_sub_047g VALUES ('6') , ('9');
INSERT INTO t_sub_047h VALUES ('6') , ('9');
INSERT INTO t_sub_047i VALUES ('6') , ('9');
INSERT INTO t_sub_047j VALUES ('6') , ('9');
INSERT INTO t_sub_047k VALUES ('6') , ('9');
INSERT INTO t_sub_047l VALUES ('6') , ('9');
INSERT INTO t_sub_047m VALUES ('6') , ('9');

//查询内容
<预期结果 : 6-0>
SELECT * FROM t_main_047a WHERE c1 IN (SELECT c2 FROM t_sub_047a);
<预期结果 : 0-6>
SELECT * FROM t_main_047b WHERE c1 IN (SELECT c2 FROM t_sub_047b);
<预期结果 : 6 0:00:00>
SELECT * FROM t_main_047c WHERE c1 IN (SELECT c2 FROM t_sub_047c);
<预期结果 : 6:00:00>
SELECT * FROM t_main_047d WHERE c1 IN (SELECT c2 FROM t_sub_047d);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047e WHERE c1 IN (SELECT c2 FROM t_sub_047e);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047f WHERE c1 IN (SELECT c2 FROM t_sub_047f);
<预期结果 : 0-6>
SELECT * FROM t_main_047g WHERE c1 IN (SELECT c2 FROM t_sub_047g);
<预期结果 : 6:00:00>
SELECT * FROM t_main_047h WHERE c1 IN (SELECT c2 FROM t_sub_047h);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047i WHERE c1 IN (SELECT c2 FROM t_sub_047i);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047j WHERE c1 IN (SELECT c2 FROM t_sub_047j);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047k WHERE c1 IN (SELECT c2 FROM t_sub_047k);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047l WHERE c1 IN (SELECT c2 FROM t_sub_047l);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047m WHERE c1 IN (SELECT c2 FROM t_sub_047m);

//查询内容
<预期结果 : 6-0>
SELECT * FROM t_main_047a WHERE c1 = ANY (SELECT c2 FROM t_sub_047a);
<预期结果 : 0-6>
SELECT * FROM t_main_047b WHERE c1 = ANY (SELECT c2 FROM t_sub_047b);
<预期结果 : 6 0:00:00>
SELECT * FROM t_main_047c WHERE c1 = ANY (SELECT c2 FROM t_sub_047c);
<预期结果 : 6:00:00>
SELECT * FROM t_main_047d WHERE c1 = ANY (SELECT c2 FROM t_sub_047d);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047e WHERE c1 = ANY (SELECT c2 FROM t_sub_047e);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047f WHERE c1 = ANY (SELECT c2 FROM t_sub_047f);
<预期结果 : 0-6>
SELECT * FROM t_main_047g WHERE c1 = ANY (SELECT c2 FROM t_sub_047g);
<预期结果 : 6:00:00>
SELECT * FROM t_main_047h WHERE c1 = ANY (SELECT c2 FROM t_sub_047h);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047i WHERE c1 = ANY (SELECT c2 FROM t_sub_047i);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047j WHERE c1 = ANY (SELECT c2 FROM t_sub_047j);
<预期结果 : 0:06:00>
SELECT * FROM t_main_047k WHERE c1 = ANY (SELECT c2 FROM t_sub_047k);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047l WHERE c1 = ANY (SELECT c2 FROM t_sub_047l);
<预期结果 : 0:00:06>
SELECT * FROM t_main_047m WHERE c1 = ANY (SELECT c2 FROM t_sub_047m);

//查询内容
<预期结果 : 6-0>
SELECT * FROM t_main_047a WHERE NOT EXISTS (SELECT 1 FROM t_sub_047a WHERE c2 > '10-0');
<预期结果 : 0-6>
SELECT * FROM t_main_047b WHERE NOT EXISTS (SELECT 1 FROM t_sub_047b WHERE c2 > '0-10');
<预期结果 : 6 0:00:00>
SELECT * FROM t_main_047c WHERE NOT EXISTS (SELECT 1 FROM t_sub_047c WHERE c2 > '10 0:00:00');
<预期结果 : 6:00:00>
SELECT * FROM t_main_047d WHERE NOT EXISTS (SELECT 1 FROM t_sub_047d WHERE c2 > '10:00:00');
<预期结果 : 0:06:00>
SELECT * FROM t_main_047e WHERE NOT EXISTS (SELECT 1 FROM t_sub_047e WHERE c2 > '0:10:00');
<预期结果 : 0:00:06>
SELECT * FROM t_main_047f WHERE NOT EXISTS (SELECT 1 FROM t_sub_047f WHERE c2 > '0:00:10');
<预期结果 : 0-6>
SELECT * FROM t_main_047g WHERE NOT EXISTS (SELECT 1 FROM t_sub_047g WHERE c2 > '0-10');
<预期结果 : 6:00:00>
SELECT * FROM t_main_047h WHERE NOT EXISTS (SELECT 1 FROM t_sub_047h WHERE c2 > '10:00:00');
<预期结果 : 0:06:00>
SELECT * FROM t_main_047i WHERE NOT EXISTS (SELECT 1 FROM t_sub_047i WHERE c2 > '0:10:00');
<预期结果 : 0:00:06>
SELECT * FROM t_main_047j WHERE NOT EXISTS (SELECT 1 FROM t_sub_047j WHERE c2 > '0:00:10');
<预期结果 : 0:06:00>
SELECT * FROM t_main_047k WHERE NOT EXISTS (SELECT 1 FROM t_sub_047k WHERE c2 > '0:10:00');
<预期结果 : 0:00:06>
SELECT * FROM t_main_047l WHERE NOT EXISTS (SELECT 1 FROM t_sub_047l WHERE c2 > '0:00:10');
<预期结果 : 0:00:06>
SELECT * FROM t_main_047m WHERE NOT EXISTS (SELECT 1 FROM t_sub_047m WHERE c2 > '0:00:10');

//查询内容
<预期结果 : 6-0 | 6-0 / null | 9-0>
SELECT m.c1 , s.c2 FROM t_main_047a m FULL JOIN t_sub_047a s ON m.c1 = s.c2;
<预期结果 : 0-6 | 0-6 / null | 0-9>
SELECT m.c1 , s.c2 FROM t_main_047b m FULL JOIN t_sub_047b s ON m.c1 = s.c2;
<预期结果 : 6 0:00:00 | 6 0:00:00 / null | 9 0:00:00>
SELECT m.c1 , s.c2 FROM t_main_047c m FULL JOIN t_sub_047c s ON m.c1 = s.c2;
<预期结果 : 6:00:00 | 6:00:00 / null | 9:00:00>
SELECT m.c1 , s.c2 FROM t_main_047d m FULL JOIN t_sub_047d s ON m.c1 = s.c2;
<预期结果 : 0:06:00 | 0:06:00 / null | 0:09:00>
SELECT m.c1 , s.c2 FROM t_main_047e m FULL JOIN t_sub_047e s ON m.c1 = s.c2;
<预期结果 : 0:00:06 | 0:00:06 / null | 0:00:09>
SELECT m.c1 , s.c2 FROM t_main_047f m FULL JOIN t_sub_047f s ON m.c1 = s.c2;
<预期结果 : 0-6 | 0-6 / null | 0-9>
SELECT m.c1 , s.c2 FROM t_main_047g m FULL JOIN t_sub_047g s ON m.c1 = s.c2;
<预期结果 : 6:00:00 | 6:00:00 / null | 9:00:00>
SELECT m.c1 , s.c2 FROM t_main_047h m FULL JOIN t_sub_047h s ON m.c1 = s.c2;
<预期结果 : 0:06:00 | 0:06:00 / null | 0:09:00>
SELECT m.c1 , s.c2 FROM t_main_047i m FULL JOIN t_sub_047i s ON m.c1 = s.c2;
<预期结果 : 0:00:06 | 0:00:06 / null | 0:00:09>
SELECT m.c1 , s.c2 FROM t_main_047j m FULL JOIN t_sub_047j s ON m.c1 = s.c2;
<预期结果 : 0:06:00 | 0:06:00 / null | 0:09:00>
SELECT m.c1 , s.c2 FROM t_main_047k m FULL JOIN t_sub_047k s ON m.c1 = s.c2;
<预期结果 : 0:00:06 | 0:00:06 / null | 0:00:09>
SELECT m.c1 , s.c2 FROM t_main_047l m FULL JOIN t_sub_047l s ON m.c1 = s.c2;
<预期结果 : 0:00:06 | 0:00:06 / null | 0:00:09>
SELECT m.c1 , s.c2 FROM t_main_047m m FULL JOIN t_sub_047m s ON m.c1 = s.c2;

//删除表
DROP TABLE t_main_047a;
DROP TABLE t_main_047b;
DROP TABLE t_main_047c;
DROP TABLE t_main_047d;
DROP TABLE t_main_047e;
DROP TABLE t_main_047f;
DROP TABLE t_main_047g;
DROP TABLE t_main_047h;
DROP TABLE t_main_047i;
DROP TABLE t_main_047j;
DROP TABLE t_main_047k;
DROP TABLE t_main_047l;
DROP TABLE t_main_047m;
DROP TABLE t_sub_047a;
DROP TABLE t_sub_047b;
DROP TABLE t_sub_047c;
DROP TABLE t_sub_047d;
DROP TABLE t_sub_047e;
DROP TABLE t_sub_047f;
DROP TABLE t_sub_047g;
DROP TABLE t_sub_047h;
DROP TABLE t_sub_047i;
DROP TABLE t_sub_047j;
DROP TABLE t_sub_047k;
DROP TABLE t_sub_047l;
DROP TABLE t_sub_047m;