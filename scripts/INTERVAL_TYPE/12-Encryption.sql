!|bind current db connect|syssso|

//创建加密机
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_a'' BY ''encryptor_interval_a'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_b'' BY ''encryptor_interval_b'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_c'' BY ''encryptor_interval_c'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_d'' BY ''encryptor_interval_d'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_e'' BY ''encryptor_interval_e'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_f'' BY ''encryptor_interval_f'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_g'' BY ''encryptor_interval_g'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_h'' BY ''encryptor_interval_h'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_i'' BY ''encryptor_interval_i'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_j'' BY ''encryptor_interval_j'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_k'' BY ''encryptor_interval_k'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_l'' BY ''encryptor_interval_l'';'; EXCEPTION WHEN 21066 THEN NULL; END;
BEGIN EXECUTE IMMEDIATE 'CREATE ENCRYPTOR ''encryptor_interval_m'' BY ''encryptor_interval_m'';'; EXCEPTION WHEN 21066 THEN NULL; END;

//查询加密机 ID
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_a';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_b';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_c';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_d';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_e';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_f';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_g';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_h';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_i';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_j';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_k';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_l';
SELECT id FROM sys_encryptors WHERE NAME =  'encryptor_interval_m';

!|bind current db connect|default|

!4 XG-INTERVAL-TYPE-ENCRYPTOR-001 加密表中 DML 和查询 interval 字段
//创建表
CREATE TABLE t_interval_encrypt_001a (id INT , c1 INTERVAL YEAR) ENCRYPT BY 'encryptor_interval_a';
CREATE TABLE t_interval_encrypt_001b (id INT , c1 INTERVAL MONTH) ENCRYPT BY 'encryptor_interval_b';
CREATE TABLE t_interval_encrypt_001c (id INT , c1 INTERVAL DAY) ENCRYPT BY 'encryptor_interval_c';
CREATE TABLE t_interval_encrypt_001d (id INT , c1 INTERVAL HOUR) ENCRYPT BY 'encryptor_interval_d';
CREATE TABLE t_interval_encrypt_001e (id INT , c1 INTERVAL MINUTE) ENCRYPT BY 'encryptor_interval_e';
CREATE TABLE t_interval_encrypt_001f (id INT , c1 INTERVAL SECOND) ENCRYPT BY 'encryptor_interval_f';
CREATE TABLE t_interval_encrypt_001g (id INT , c1 INTERVAL YEAR TO MONTH) ENCRYPT BY 'encryptor_interval_g';
CREATE TABLE t_interval_encrypt_001h (id INT , c1 INTERVAL DAY TO HOUR) ENCRYPT BY 'encryptor_interval_h';
CREATE TABLE t_interval_encrypt_001i (id INT , c1 INTERVAL DAY TO MINUTE) ENCRYPT BY 'encryptor_interval_i';
CREATE TABLE t_interval_encrypt_001j (id INT , c1 INTERVAL DAY TO SECOND) ENCRYPT BY 'encryptor_interval_j';
CREATE TABLE t_interval_encrypt_001k (id INT , c1 INTERVAL HOUR TO MINUTE) ENCRYPT BY 'encryptor_interval_k';
CREATE TABLE t_interval_encrypt_001l (id INT , c1 INTERVAL HOUR TO SECOND) ENCRYPT BY 'encryptor_interval_l';
CREATE TABLE t_interval_encrypt_001m (id INT , c1 INTERVAL MINUTE TO SECOND) ENCRYPT BY 'encryptor_interval_m';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001a';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001b';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001c';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001d';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001e';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001f';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001g';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001h';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001i';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001j';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001k';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001l';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_001m';

//INTERVAL YEAR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001a VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001a VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001a ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001a;

//加密更新
UPDATE t_interval_encrypt_001a SET c1 = '6-0' WHERE c1 = '8-0';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001a ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001a WHERE c1 = '9-0';

//结果查询
<预期结果 : 6-0>
SELECT DISTINCT c1 FROM t_interval_encrypt_001a;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001a;

//INTERVAL MONTH 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001b VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001b VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001b ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001b;

//加密更新
UPDATE t_interval_encrypt_001b SET c1 = '0-6' WHERE c1 = '0-8';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001b ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001b WHERE c1 = '0-9';

//结果查询
<预期结果 : 0-6>
SELECT DISTINCT c1 FROM t_interval_encrypt_001b;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001b;

//INTERVAL DAY 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001c VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001c VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001c ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001c;

//加密更新
UPDATE t_interval_encrypt_001c SET c1 = '6 0:00:00' WHERE c1 = '8 0:00:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001c ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001c WHERE c1 = '9 0:00:00';

//结果查询
<预期结果 : 6 0:00:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001c;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001c;

//INTERVAL HOUR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001d VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001d VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001d ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001d;

//加密更新
UPDATE t_interval_encrypt_001d SET c1 = '6:00:00' WHERE c1 = '8:00:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001d ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001d WHERE c1 = '9:00:00';

//结果查询
<预期结果 : 6:00:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001d;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001d;

//INTERVAL MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001e VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001e VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001e ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001e;

//加密更新
UPDATE t_interval_encrypt_001e SET c1 = '0:06:00' WHERE c1 = '0:08:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001e ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001e WHERE c1 = '0:09:00';

//结果查询
<预期结果 : 0:06:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001e;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001e;

//INTERVAL SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001f VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001f VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001f ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001f;

//加密更新
UPDATE t_interval_encrypt_001f SET c1 = '0:00:06' WHERE c1 = '0:00:08';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001f ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001f WHERE c1 = '0:00:09';

//结果查询
<预期结果 : 0:00:06>
SELECT DISTINCT c1 FROM t_interval_encrypt_001f;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001f;

//INTERVAL YEAR TO MONTH 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001g VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001g VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001g ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001g;

//加密更新
UPDATE t_interval_encrypt_001g SET c1 = '0-6' WHERE c1 = '0-8';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001g ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001g WHERE c1 = '0-9';

//结果查询
<预期结果 : 0-6>
SELECT DISTINCT c1 FROM t_interval_encrypt_001g;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001g;

//INTERVAL DAY TO HOUR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001h VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001h VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001h ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001h;

//加密更新
UPDATE t_interval_encrypt_001h SET c1 = '6:00:00' WHERE c1 = '8:00:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001h ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001h WHERE c1 = '9:00:00';

//结果查询
<预期结果 : 6:00:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001h;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001h;

//INTERVAL DAY TO MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001i VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001i VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001i ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001i;

//加密更新
UPDATE t_interval_encrypt_001i SET c1 = '0:06:00' WHERE c1 = '0:08:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001i ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001i WHERE c1 = '0:09:00';

//结果查询
<预期结果 : 0:06:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001i;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001i;

//INTERVAL DAY TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001j VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001j VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001j ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001j;

//加密更新
UPDATE t_interval_encrypt_001j SET c1 = '0:00:06' WHERE c1 = '0:00:08';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001j ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001j WHERE c1 = '0:00:09';

//结果查询
<预期结果 : 0:00:06>
SELECT DISTINCT c1 FROM t_interval_encrypt_001j;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001j;

//INTERVAL HOUR TO MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001k VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001k VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001k ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001k;

//加密更新
UPDATE t_interval_encrypt_001k SET c1 = '0:06:00' WHERE c1 = '0:08:00';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001k ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001k WHERE c1 = '0:09:00';

//结果查询
<预期结果 : 0:06:00>
SELECT DISTINCT c1 FROM t_interval_encrypt_001k;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001k;

//INTERVAL HOUR TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001l VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001l VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001l ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001l;

//加密更新
UPDATE t_interval_encrypt_001l SET c1 = '0:00:06' WHERE c1 = '0:00:08';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001l ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001l WHERE c1 = '0:00:09';

//结果查询
<预期结果 : 0:00:06>
SELECT DISTINCT c1 FROM t_interval_encrypt_001l;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001l;

//INTERVAL MINUTE TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_001m VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_001m VALUES (i , '9');
END IF;
END LOOP;
END;
/

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001m ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_001m;

//加密更新
UPDATE t_interval_encrypt_001m SET c1 = '0:00:06' WHERE c1 = '0:00:08';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_001m ORDER BY id LIMIT 4;

//加密删除
DELETE FROM t_interval_encrypt_001m WHERE c1 = '0:00:09';

//结果查询
<预期结果 : 0:00:06>
SELECT DISTINCT c1 FROM t_interval_encrypt_001m;

//数据量查询
<预期结果 : 5>
SELECT COUNT(*) FROM t_interval_encrypt_001m;


//删除表
DROP TABLE t_interval_encrypt_001a;
DROP TABLE t_interval_encrypt_001b;
DROP TABLE t_interval_encrypt_001c;
DROP TABLE t_interval_encrypt_001d;
DROP TABLE t_interval_encrypt_001e;
DROP TABLE t_interval_encrypt_001f;
DROP TABLE t_interval_encrypt_001g;
DROP TABLE t_interval_encrypt_001h;
DROP TABLE t_interval_encrypt_001i;
DROP TABLE t_interval_encrypt_001j;
DROP TABLE t_interval_encrypt_001k;
DROP TABLE t_interval_encrypt_001l;
DROP TABLE t_interval_encrypt_001m;

!4 XG-INTERVAL-TYPE-ENCRYPTOR-002 对有 interval 数据的表执行加密
//创建表
CREATE TABLE t_interval_encrypt_002a (id INT , c1 INTERVAL YEAR) ENCRYPT BY 'encryptor_interval_a';
CREATE TABLE t_interval_encrypt_002b (id INT , c1 INTERVAL MONTH) ENCRYPT BY 'encryptor_interval_b';
CREATE TABLE t_interval_encrypt_002c (id INT , c1 INTERVAL DAY) ENCRYPT BY 'encryptor_interval_c';
CREATE TABLE t_interval_encrypt_002d (id INT , c1 INTERVAL HOUR) ENCRYPT BY 'encryptor_interval_d';
CREATE TABLE t_interval_encrypt_002e (id INT , c1 INTERVAL MINUTE) ENCRYPT BY 'encryptor_interval_e';
CREATE TABLE t_interval_encrypt_002f (id INT , c1 INTERVAL SECOND) ENCRYPT BY 'encryptor_interval_f';
CREATE TABLE t_interval_encrypt_002g (id INT , c1 INTERVAL YEAR TO MONTH) ENCRYPT BY 'encryptor_interval_g';
CREATE TABLE t_interval_encrypt_002h (id INT , c1 INTERVAL DAY TO HOUR) ENCRYPT BY 'encryptor_interval_h';
CREATE TABLE t_interval_encrypt_002i (id INT , c1 INTERVAL DAY TO MINUTE) ENCRYPT BY 'encryptor_interval_i';
CREATE TABLE t_interval_encrypt_002j (id INT , c1 INTERVAL DAY TO SECOND) ENCRYPT BY 'encryptor_interval_j';
CREATE TABLE t_interval_encrypt_002k (id INT , c1 INTERVAL HOUR TO MINUTE) ENCRYPT BY 'encryptor_interval_k';
CREATE TABLE t_interval_encrypt_002l (id INT , c1 INTERVAL HOUR TO SECOND) ENCRYPT BY 'encryptor_interval_l';
CREATE TABLE t_interval_encrypt_002m (id INT , c1 INTERVAL MINUTE TO SECOND) ENCRYPT BY 'encryptor_interval_m';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002a';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002b';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002c';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002d';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002e';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002f';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002g';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002h';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002i';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002j';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002k';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002l';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002m';

//INTERVAL YEAR 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002a VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002a VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002a BY 'encryptor_interval_a';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002a';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002a ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002a;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002a VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002a VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002a SET c1 = '1-0' WHERE c1 = '6-0';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002a ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002a WHERE c1 = '7-0';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002a ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002a;

//INTERVAL MONTH 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002b VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002b VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002b BY 'encryptor_interval_b';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002b';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002b ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002b;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002b VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002b VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002b SET c1 = '0-1' WHERE c1 = '0-6';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002b ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002b WHERE c1 = '0-7';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002b ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002b;

//INTERVAL DAY 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002c VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002c VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002c BY 'encryptor_interval_c';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002c';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002c ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002c;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002c VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002c VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002c SET c1 = '1 0:00:00' WHERE c1 = '6 0:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002c ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002c WHERE c1 = '7 0:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002c ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002c;

//INTERVAL HOUR 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002d VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002d VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002d BY 'encryptor_interval_d';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002d';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002d ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002d;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002d VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002d VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002d SET c1 = '1:00:00' WHERE c1 = '6:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002d ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002d WHERE c1 = '7:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002d ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002d;

//INTERVAL MINUTE 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002e VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002e VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002e BY 'encryptor_interval_e';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002e';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002e ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002e;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002e VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002e VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002e SET c1 = '0:01:00' WHERE c1 = '0:06:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002e ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002e WHERE c1 = '0:07:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002e ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002e;

//INTERVAL SECOND 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002f VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002f VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002f BY 'encryptor_interval_f';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002f';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002f ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002f;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002f VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002f VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002f SET c1 = '0:00:01' WHERE c1 = '0:00:06';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002f ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002f WHERE c1 = '0:00:07';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002f ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002f;

//INTERVAL YEAR TO MONTH 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002g VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002g VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002g BY 'encryptor_interval_g';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002g';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002g ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002g;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002g VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002g VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002g SET c1 = '0-1' WHERE c1 = '0-6';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002g ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002g WHERE c1 = '0-7';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002g ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002g;

//INTERVAL DAY TO HOUR 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002h VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002h VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002h BY 'encryptor_interval_h';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002h';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002h ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002h;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002h VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002h VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002h SET c1 = '1:00:00' WHERE c1 = '6:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002h ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002h WHERE c1 = '7:00:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002h ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002h;

//INTERVAL DAY TO MINUTE 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002i VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002i VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002i BY 'encryptor_interval_i';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002i';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002i ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002i;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002i VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002i VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002i SET c1 = '0:01:00' WHERE c1 = '0:06:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002i ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002i WHERE c1 = '0:07:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002i ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002i;

//INTERVAL DAY TO SECOND 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002j VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002j VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002j BY 'encryptor_interval_j';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002j';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002j ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002j;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002j VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002j VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002j SET c1 = '0:00:01' WHERE c1 = '0:00:06';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002j ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002j WHERE c1 = '0:00:07';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002j ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002j;

//INTERVAL HOUR TO MINUTE 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002k VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002k VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002k BY 'encryptor_interval_k';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002k';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002k ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002k;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002k VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002k VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002k SET c1 = '0:01:00' WHERE c1 = '0:06:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002k ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002k WHERE c1 = '0:07:00';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002k ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002k;

//INTERVAL HOUR TO SECOND 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002l VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002l VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002l BY 'encryptor_interval_l';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002l';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002l ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002l;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002l VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002l VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002l SET c1 = '0:00:01' WHERE c1 = '0:00:06';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002l ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002l WHERE c1 = '0:00:07';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002l ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002l;

//INTERVAL MINUTE TO SECOND 类型
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002m VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_002m VALUES (i , '9');
END IF;
END LOOP;
END;
/

//为表加密
ENCRYPT TABLE t_interval_encrypt_002m BY 'encryptor_interval_m';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_002m';

//内容查询
SELECT id , c1 FROM t_interval_encrypt_002m ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_002m;

//加密后插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_002m VALUES (i , '6');
ELSE
INSERT INTO t_interval_encrypt_002m VALUES (i , '7');
END IF;
END LOOP;
END;
/

//加密后更新数据
UPDATE t_interval_encrypt_002m SET c1 = '0:00:01' WHERE c1 = '0:00:06';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002m ORDER BY id LIMIT 6 OFFSET 10;

//加密后删除数据
DELETE FROM t_interval_encrypt_002m WHERE c1 = '0:00:07';

//查询数据
SELECT id , c1 FROM t_interval_encrypt_002m ORDER BY id LIMIT 6 OFFSET 10;

//数据量查询
<预期结果 : 15>
SELECT COUNT(*) FROM t_interval_encrypt_002m;

//删除表
DROP TABLE t_interval_encrypt_002a;
DROP TABLE t_interval_encrypt_002b;
DROP TABLE t_interval_encrypt_002c;
DROP TABLE t_interval_encrypt_002d;
DROP TABLE t_interval_encrypt_002e;
DROP TABLE t_interval_encrypt_002f;
DROP TABLE t_interval_encrypt_002g;
DROP TABLE t_interval_encrypt_002h;
DROP TABLE t_interval_encrypt_002i;
DROP TABLE t_interval_encrypt_002j;
DROP TABLE t_interval_encrypt_002k;
DROP TABLE t_interval_encrypt_002l;
DROP TABLE t_interval_encrypt_002m;

!4 XG-INTERVAL-TYPE-ENCRYPTOR-003 加密表 interval 字段表记逻辑备份和恢复
//创建表
CREATE TABLE t_interval_encrypt_003a (id INT , c1 INTERVAL YEAR) ENCRYPT BY 'encryptor_interval_a';
CREATE TABLE t_interval_encrypt_003b (id INT , c1 INTERVAL MONTH) ENCRYPT BY 'encryptor_interval_b';
CREATE TABLE t_interval_encrypt_003c (id INT , c1 INTERVAL DAY) ENCRYPT BY 'encryptor_interval_c';
CREATE TABLE t_interval_encrypt_003d (id INT , c1 INTERVAL HOUR) ENCRYPT BY 'encryptor_interval_d';
CREATE TABLE t_interval_encrypt_003e (id INT , c1 INTERVAL MINUTE) ENCRYPT BY 'encryptor_interval_e';
CREATE TABLE t_interval_encrypt_003f (id INT , c1 INTERVAL SECOND) ENCRYPT BY 'encryptor_interval_f';
CREATE TABLE t_interval_encrypt_003g (id INT , c1 INTERVAL YEAR TO MONTH) ENCRYPT BY 'encryptor_interval_g';
CREATE TABLE t_interval_encrypt_003h (id INT , c1 INTERVAL DAY TO HOUR) ENCRYPT BY 'encryptor_interval_h';
CREATE TABLE t_interval_encrypt_003i (id INT , c1 INTERVAL DAY TO MINUTE) ENCRYPT BY 'encryptor_interval_i';
CREATE TABLE t_interval_encrypt_003j (id INT , c1 INTERVAL DAY TO SECOND) ENCRYPT BY 'encryptor_interval_j';
CREATE TABLE t_interval_encrypt_003k (id INT , c1 INTERVAL HOUR TO MINUTE) ENCRYPT BY 'encryptor_interval_k';
CREATE TABLE t_interval_encrypt_003l (id INT , c1 INTERVAL HOUR TO SECOND) ENCRYPT BY 'encryptor_interval_l';
CREATE TABLE t_interval_encrypt_003m (id INT , c1 INTERVAL MINUTE TO SECOND) ENCRYPT BY 'encryptor_interval_m';

//查询结果
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003a';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003b';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003c';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003d';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003e';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003f';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003g';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003h';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003i';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003j';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003k';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003l';
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003m';


//INTERVAL YEAR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003a VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003a VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003a TO '/BACKUP/t_interval_encrypt_003a.dmp' ENCRYPTOR IS 'encryptor_interval_a';

//删除表
DROP TABLE t_interval_encrypt_003a;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003a FROM '/BACKUP/t_interval_encrypt_003a.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003a FROM '/BACKUP/t_interval_encrypt_003a.dmp' ENCRYPTOR IS 'encryptor_interval_a';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003a';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003a ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003a;

//INTERVAL MONTH 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003b VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003b VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003b TO '/BACKUP/t_interval_encrypt_003b.dmp' ENCRYPTOR IS 'encryptor_interval_b';

//删除表
DROP TABLE t_interval_encrypt_003b;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003b FROM '/BACKUP/t_interval_encrypt_003b.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003b FROM '/BACKUP/t_interval_encrypt_003b.dmp' ENCRYPTOR IS 'encryptor_interval_b';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003b';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003b ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003b;

//INTERVAL DAY 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003c VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003c VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003c TO '/BACKUP/t_interval_encrypt_003c.dmp' ENCRYPTOR IS 'encryptor_interval_c';

//删除表
DROP TABLE t_interval_encrypt_003c;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003c FROM '/BACKUP/t_interval_encrypt_003c.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003c FROM '/BACKUP/t_interval_encrypt_003c.dmp' ENCRYPTOR IS 'encryptor_interval_c';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003c';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003c ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003c;

//INTERVAL HOUR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003d VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003d VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003d TO '/BACKUP/t_interval_encrypt_003d.dmp' ENCRYPTOR IS 'encryptor_interval_d';

//删除表
DROP TABLE t_interval_encrypt_003d;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003d FROM '/BACKUP/t_interval_encrypt_003d.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003d FROM '/BACKUP/t_interval_encrypt_003d.dmp' ENCRYPTOR IS 'encryptor_interval_d';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003d';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003d ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003d;

//INTERVAL MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003e VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003e VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003e TO '/BACKUP/t_interval_encrypt_003e.dmp' ENCRYPTOR IS 'encryptor_interval_e';

//删除表
DROP TABLE t_interval_encrypt_003e;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003e FROM '/BACKUP/t_interval_encrypt_003e.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003e FROM '/BACKUP/t_interval_encrypt_003e.dmp' ENCRYPTOR IS 'encryptor_interval_e';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003e';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003e ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003e;

//INTERVAL SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003f VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003f VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003f TO '/BACKUP/t_interval_encrypt_003f.dmp' ENCRYPTOR IS 'encryptor_interval_f';

//删除表
DROP TABLE t_interval_encrypt_003f;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003f FROM '/BACKUP/t_interval_encrypt_003f.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003f FROM '/BACKUP/t_interval_encrypt_003f.dmp' ENCRYPTOR IS 'encryptor_interval_f';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003f';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003f ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003f;

//INTERVAL YEAR TO MONTH 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003g VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003g VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003g TO '/BACKUP/t_interval_encrypt_003g.dmp' ENCRYPTOR IS 'encryptor_interval_g';

//删除表
DROP TABLE t_interval_encrypt_003g;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003g FROM '/BACKUP/t_interval_encrypt_003g.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003g FROM '/BACKUP/t_interval_encrypt_003g.dmp' ENCRYPTOR IS 'encryptor_interval_g';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003g';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003g ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003g;

//INTERVAL DAY TO HOUR 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003h VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003h VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003h TO '/BACKUP/t_interval_encrypt_003h.dmp' ENCRYPTOR IS 'encryptor_interval_h';

//删除表
DROP TABLE t_interval_encrypt_003h;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003h FROM '/BACKUP/t_interval_encrypt_003h.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003h FROM '/BACKUP/t_interval_encrypt_003h.dmp' ENCRYPTOR IS 'encryptor_interval_h';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003h';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003h ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003h;

//INTERVAL DAY TO MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003i VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003i VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003i TO '/BACKUP/t_interval_encrypt_003i.dmp' ENCRYPTOR IS 'encryptor_interval_i';

//删除表
DROP TABLE t_interval_encrypt_003i;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003i FROM '/BACKUP/t_interval_encrypt_003i.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003i FROM '/BACKUP/t_interval_encrypt_003i.dmp' ENCRYPTOR IS 'encryptor_interval_i';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003i';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003i ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003i;

//INTERVAL DAY TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003j VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003j VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003j TO '/BACKUP/t_interval_encrypt_003j.dmp' ENCRYPTOR IS 'encryptor_interval_j';

//删除表
DROP TABLE t_interval_encrypt_003j;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003j FROM '/BACKUP/t_interval_encrypt_003j.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003j FROM '/BACKUP/t_interval_encrypt_003j.dmp' ENCRYPTOR IS 'encryptor_interval_j';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003j';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003j ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003j;

//INTERVAL HOUR TO MINUTE 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003k VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003k VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003k TO '/BACKUP/t_interval_encrypt_003k.dmp' ENCRYPTOR IS 'encryptor_interval_k';

//删除表
DROP TABLE t_interval_encrypt_003k;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003k FROM '/BACKUP/t_interval_encrypt_003k.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003k FROM '/BACKUP/t_interval_encrypt_003k.dmp' ENCRYPTOR IS 'encryptor_interval_k';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003k';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003k ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003k;

//INTERVAL HOUR TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003l VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003l VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003l TO '/BACKUP/t_interval_encrypt_003l.dmp' ENCRYPTOR IS 'encryptor_interval_l';

//删除表
DROP TABLE t_interval_encrypt_003l;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003l FROM '/BACKUP/t_interval_encrypt_003l.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003l FROM '/BACKUP/t_interval_encrypt_003l.dmp' ENCRYPTOR IS 'encryptor_interval_l';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003l';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003l ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003l;

//INTERVAL MINUTE TO SECOND 类型
//插入数据
BEGIN
FOR i IN 1 .. 10 LOOP
IF MOD(i,2) = 0 THEN
INSERT INTO t_interval_encrypt_003m VALUES (i , '8');
ELSE
INSERT INTO t_interval_encrypt_003m VALUES (i , '9');
END IF;
END LOOP;
END;
/

//备份
BACKUP TABLE t_interval_encrypt_003m TO '/BACKUP/t_interval_encrypt_003m.dmp' ENCRYPTOR IS 'encryptor_interval_m';

//删除表
DROP TABLE t_interval_encrypt_003m;

//表级解密恢复
RESTORE TABLE t_interval_encrypt_003m FROM '/BACKUP/t_interval_encrypt_003m.dmp' ENCRYPTOR IS 'encryptor_interval_err';

RESTORE TABLE t_interval_encrypt_003m FROM '/BACKUP/t_interval_encrypt_003m.dmp' ENCRYPTOR IS 'encryptor_interval_m';

//查询内容
SELECT s.schema_name , t.table_name , is_encry , encry_id FROM all_tables t LEFT JOIN all_schemas s USING (SCHEMA_ID) WHERE t.table_name = 't_interval_encrypt_003m';

//结果查询
SELECT id , c1 FROM t_interval_encrypt_003m ORDER BY id LIMIT 4;

//数据量查询
<预期结果 : 10>
SELECT COUNT(*) FROM t_interval_encrypt_003m;

//删除表
DROP TABLE t_interval_encrypt_003a;
DROP TABLE t_interval_encrypt_003b;
DROP TABLE t_interval_encrypt_003c;
DROP TABLE t_interval_encrypt_003d;
DROP TABLE t_interval_encrypt_003e;
DROP TABLE t_interval_encrypt_003f;
DROP TABLE t_interval_encrypt_003g;
DROP TABLE t_interval_encrypt_003h;
DROP TABLE t_interval_encrypt_003i;
DROP TABLE t_interval_encrypt_003j;
DROP TABLE t_interval_encrypt_003k;
DROP TABLE t_interval_encrypt_003l;
DROP TABLE t_interval_encrypt_003m;

//删除结果确认
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003a.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003b.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003c.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003d.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003e.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003f.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003g.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003h.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003i.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003j.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003k.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003l.dmp');
<预期结果 : true>
SELECT DROP_FILE ('/BACKUP/t_interval_encrypt_003m.dmp');