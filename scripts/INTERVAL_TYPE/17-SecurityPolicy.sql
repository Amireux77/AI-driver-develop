//创建用户
CREATE USER u_security_a IDENTIFIED BY 'abc!1234';
CREATE USER u_security_b IDENTIFIED BY 'abc!1234';
CREATE USER u_security_c IDENTIFIED BY 'abc!1234';
CREATE USER u_security_d IDENTIFIED BY 'abc!1234';
CREATE USER u_security_e IDENTIFIED BY 'abc!1234';
CREATE USER u_security_f IDENTIFIED BY 'abc!1234';
CREATE USER u_security_g IDENTIFIED BY 'abc!1234';
CREATE USER u_security_h IDENTIFIED BY 'abc!1234';
CREATE USER u_security_i IDENTIFIED BY 'abc!1234';
CREATE USER u_security_j IDENTIFIED BY 'abc!1234';
CREATE USER u_security_k IDENTIFIED BY 'abc!1234';
CREATE USER u_security_l IDENTIFIED BY 'abc!1234';
CREATE USER u_security_m IDENTIFIED BY 'abc!1234';

//创建表
CREATE TABLE u_security_a.t_security_a (id INT , c1 INTERVAL YEAR);
CREATE TABLE u_security_b.t_security_b (id INT , c1 INTERVAL MONTH);
CREATE TABLE u_security_c.t_security_c (id INT , c1 INTERVAL DAY);
CREATE TABLE u_security_d.t_security_d (id INT , c1 INTERVAL HOUR);
CREATE TABLE u_security_e.t_security_e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE u_security_f.t_security_f (id INT , c1 INTERVAL SECOND);
CREATE TABLE u_security_g.t_security_g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE u_security_h.t_security_h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE u_security_i.t_security_i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE u_security_j.t_security_j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE u_security_k.t_security_k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE u_security_l.t_security_l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE u_security_m.t_security_m (id INT , c1 INTERVAL MINUTE TO SECOND);

//插入数据
INSERT INTO u_security_a.t_security_a VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_b.t_security_b VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_c.t_security_c VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_d.t_security_d VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_e.t_security_e VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_f.t_security_f VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_g.t_security_g VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_h.t_security_h VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_i.t_security_i VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_j.t_security_j VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_k.t_security_k VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_l.t_security_l VALUES (1 , '9') , (2 , '8');
INSERT INTO u_security_m.t_security_m VALUES (1 , '9') , (2 , '8');

//查询 IP
!|${exec_way}|!-SELECT regexp_substr(@default_url, '\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}') node_ip FROM dual;-!|
|node_ip?                                                                                                 |
|>>n_ip                                                                                                   |

//查询节点端口
!|${exec_way}|!-SELECT nodeid , var_value FROM sys_all_vars WHERE var_name = 'LISTEN_PORT' AND nodeid <= 3;-!|
|nodeid      |var_value?                                                                                     |
|1           |>>pt1                                                                                          |
|2           |>>pt2                                                                                          |
|3           |>>pt3                                                                                          |

//设置节点 4
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt1,'/SYSTEM?USER=SYSSSO&PASSWORD=SYSSSO&recv_mode=0') node4;-!|
|node4?                                                                                                                |
|>>n4_ip                                                                                                               |

COMMIT;

!|Connect|node4|@n4_ip|

!|bind current db connect|node4|

//创建安全策略
CREATE POLICY policy_a ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_b ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_c ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_d ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_e ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_f ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_g ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_h ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_i ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_j ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_k ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_l ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;
CREATE POLICY policy_m ADD LEVEL level_1 AS 1 , ADD LEVEL level_2 AS 2 , ADD LEVEL level_3 AS 3 , ADD CATEGORY category_1 , ADD CATEGORY category_2;

//为用户添加安全策略
ALTER USER POLICY u_security_a ADD policy_a LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_b ADD policy_b LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_c ADD policy_c LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_d ADD policy_d LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_e ADD policy_e LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_f ADD policy_f LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_g ADD policy_g LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_h ADD policy_h LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_i ADD policy_i LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_j ADD policy_j LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_k ADD policy_k LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_l ADD policy_l LEVEL level_3 CATEGORY category_1 , category_2;
ALTER USER POLICY u_security_m ADD policy_m LEVEL level_3 CATEGORY category_1 , category_2;

//为表添加安全策略
ALTER TABLE POLICY u_security_a.t_security_a ADD policy_a COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_b.t_security_b ADD policy_b COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_c.t_security_c ADD policy_c COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_d.t_security_d ADD policy_d COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_e.t_security_e ADD policy_e COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_f.t_security_f ADD policy_f COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_g.t_security_g ADD policy_g COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_h.t_security_h ADD policy_h COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_i.t_security_i ADD policy_i COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_j.t_security_j ADD policy_j COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_k.t_security_k ADD policy_k COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_l.t_security_l ADD policy_l COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';
ALTER TABLE POLICY u_security_m.t_security_m ADD policy_m COLUMN c2 NOT HIDE LABEL 'level_2:category_1,category_2';

//设置节点 5 - 登录用户 : u_security_a  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_a&PASSWORD=abc!1234&recv_mode=0') node5;-!|
|node5?                                                                                                                        |
|>>n5_ip                                                                                                                       |

//设置节点 6 - 登录用户 : u_security_b  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_b&PASSWORD=abc!1234&recv_mode=0') node6;-!|
|node6?                                                                                                                        |
|>>n6_ip                                                                                                                       |

//设置节点 7 - 登录用户 : u_security_c  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_c&PASSWORD=abc!1234&recv_mode=0') node7;-!|
|node7?                                                                                                                        |
|>>n7_ip                                                                                                                       |

//设置节点 8 - 登录用户 : u_security_d  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_d&PASSWORD=abc!1234&recv_mode=0') node8;-!|
|node8?                                                                                                                        |
|>>n8_ip                                                                                                                       |

//设置节点 9 - 登录用户 : u_security_e 
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_e&PASSWORD=abc!1234&recv_mode=0') node9;-!|
|node9?                                                                                                                        |
|>>n9_ip                                                                                                                       |

//设置节点 10 - 登录用户 : u_security_f  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_f&PASSWORD=abc!1234&recv_mode=0') node10;-!|
|node10?                                                                                                                        |
|>>n10_ip                                                                                                                       |

//设置节点 11 - 登录用户 : u_security_g  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_g&PASSWORD=abc!1234&recv_mode=0') node11;-!|
|node11?                                                                                                                        |
|>>n11_ip                                                                                                                       |

//设置节点 12 - 登录用户 : u_security_h 
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_h&PASSWORD=abc!1234&recv_mode=0') node12;-!|
|node12?                                                                                                                        |
|>>n12_ip                                                                                                                       |

//设置节点 13 - 登录用户 : u_security_i  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_i&PASSWORD=abc!1234&recv_mode=0') node13;-!|
|node13?                                                                                                                        |
|>>n13_ip                                                                                                                       |

//设置节点 14 - 登录用户 : u_security_j  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_j&PASSWORD=abc!1234&recv_mode=0') node14;-!|
|node14?                                                                                                                        |
|>>n14_ip                                                                                                                       |

//设置节点 15 - 登录用户 : u_security_k  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_k&PASSWORD=abc!1234&recv_mode=0') node15;-!|
|node15?                                                                                                                        |
|>>n15_ip                                                                                                                       |

//设置节点 16 - 登录用户 : u_security_l  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_l&PASSWORD=abc!1234&recv_mode=0') node16;-!|
|node16?                                                                                                                        |
|>>n16_ip                                                                                                                       |

//设置节点 17 - 登录用户 : u_security_m  
!|${exec_way}|!-SELECT CONCAT('jdbc:xugu://',@n_ip,':',@pt2,'/SYSTEM?USER=u_security_m&PASSWORD=abc!1234&recv_mode=0') node17;-!|
|node17?                                                                                                                        |
|>>n17_ip                                                                                                                       |


//切换登录用户 - u_security_a
!|Connect|node5|@n5_ip|

!|bind current db connect|node5|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_a;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_a SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_a VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_a WHERE id = 3;

//更新数据
UPDATE t_security_a SET c1 = '5' WHERE id = 3;

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_a WHERE id = 3;


//切换登录用户 - u_security_b
!|Connect|node6|@n6_ip|

!|bind current db connect|node6|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_b;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_b SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_b VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_b WHERE id = 3;

//更新数据
UPDATE t_security_b SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_b WHERE id = 3;


//切换登录用户 - u_security_c
!|Connect|node7|@n7_ip|

!|bind current db connect|node7|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_c;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_c SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_c VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_c WHERE id = 3;

//更新数据
UPDATE t_security_c SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_c WHERE id = 3;


//切换登录用户 - u_security_d
!|Connect|node8|@n8_ip|

!|bind current db connect|node8|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_d;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_d SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_d VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_d WHERE id = 3;

//更新数据
UPDATE t_security_d SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_d WHERE id = 3;


//切换登录用户 - u_security_e
!|Connect|node9|@n9_ip|

!|bind current db connect|node9|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_e;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_e SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_e VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_e WHERE id = 3;

//更新数据
UPDATE t_security_e SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_e WHERE id = 3;


//切换登录用户 - u_security_f
!|Connect|node10|@n10_ip|

!|bind current db connect|node10|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_f;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_f SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_f VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_f WHERE id = 3;

//更新数据
UPDATE t_security_f SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_f WHERE id = 3;


//切换登录用户 - u_security_g
!|Connect|node11|@n11_ip|

!|bind current db connect|node11|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_g;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_g SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_g VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_g WHERE id = 3;

//更新数据
UPDATE t_security_g SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_g WHERE id = 3;


//切换登录用户 - u_security_h
!|Connect|node12|@n12_ip|

!|bind current db connect|node12|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_h;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_h SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_h VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_h WHERE id = 3;

//更新数据
UPDATE t_security_h SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_h WHERE id = 3;


//切换登录用户 - u_security_i
!|Connect|node13|@n13_ip|

!|bind current db connect|node13|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_i;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_i SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_i VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_i WHERE id = 3;

//更新数据
UPDATE t_security_i SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_i WHERE id = 3;


//切换登录用户 - u_security_j
!|Connect|node14|@n14_ip|

!|bind current db connect|node14|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_j;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_j SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_j VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_j WHERE id = 3;

//更新数据
UPDATE t_security_j SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_j WHERE id = 3;


//切换登录用户 - u_security_k
!|Connect|node15|@n15_ip|

!|bind current db connect|node15|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_k;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_k SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_k VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_k WHERE id = 3;

//更新数据
UPDATE t_security_k SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_k WHERE id = 3;


//切换登录用户 - u_security_l
!|Connect|node16|@n16_ip|

!|bind current db connect|node16|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_l;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_l SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_l VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_l WHERE id = 3;

//更新数据
UPDATE t_security_l SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_l WHERE id = 3;


//切换登录用户 - u_security_m
!|Connect|node17|@n17_ip|

!|bind current db connect|node17|

//结果查询 : <预期结果 : 两行数据>
SELECT * FROM t_security_m;

//更新数据 : <预期结果 : 用户等级(3) 不等于 数据行等级(2) 报错>
UPDATE t_security_m SET c1 = '6' WHERE id = 2;-!|

//插入数据
INSERT INTO t_security_m VALUES (3 , '7');-!|

//结果查询 : <预期结果 : 成功插入一行数据>
SELECT * FROM t_security_m WHERE id = 3;

//更新数据
UPDATE t_security_m SET c1 = '5' WHERE id = 3;-!|

//结果查询 : <预期结果 : 成功更新 id = 3 行数据>
SELECT * FROM t_security_m WHERE id = 3;


COMMIT;

!|bind current db connect|node4|

//修改用户等级 (level_2)
ALTER USER POLICY u_security_a ALTER policy_a LEVEL level_2;
ALTER USER POLICY u_security_b ALTER policy_b LEVEL level_2;
ALTER USER POLICY u_security_c ALTER policy_c LEVEL level_2;
ALTER USER POLICY u_security_d ALTER policy_d LEVEL level_2;
ALTER USER POLICY u_security_e ALTER policy_e LEVEL level_2;
ALTER USER POLICY u_security_f ALTER policy_f LEVEL level_2;
ALTER USER POLICY u_security_g ALTER policy_g LEVEL level_2;
ALTER USER POLICY u_security_h ALTER policy_h LEVEL level_2;
ALTER USER POLICY u_security_i ALTER policy_i LEVEL level_2;
ALTER USER POLICY u_security_j ALTER policy_j LEVEL level_2;
ALTER USER POLICY u_security_k ALTER policy_k LEVEL level_2;
ALTER USER POLICY u_security_l ALTER policy_l LEVEL level_2;
ALTER USER POLICY u_security_m ALTER policy_m LEVEL level_2;

COMMIT;

//切换登录用户 - u_security_a

!|bind current db connect|node5|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_a SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_b

!|bind current db connect|node6|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_b SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_c

!|bind current db connect|node7|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_c SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_d

!|bind current db connect|node8|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_d SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_e

!|bind current db connect|node9|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_e SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_f

!|bind current db connect|node10|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_f SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_g

!|bind current db connect|node11|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_g SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_h

!|bind current db connect|node12|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_h SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_i

!|bind current db connect|node13|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_i SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_j

!|bind current db connect|node14|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_j SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_k

!|bind current db connect|node15|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_k SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_l

!|bind current db connect|node16|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_l SET c1 = '3' WHERE id = 2;

//切换登录用户 - u_security_m

!|bind current db connect|node17|

//更新数据 : <预期结果 : 更新成功>
UPDATE t_security_m SET c1 = '3' WHERE id = 2;

COMMIT;

!|bind current db connect|node4|

//修改用户等级 (level_3)
ALTER USER POLICY u_security_a ALTER policy_a LEVEL level_3;
ALTER USER POLICY u_security_b ALTER policy_b LEVEL level_3;
ALTER USER POLICY u_security_c ALTER policy_c LEVEL level_3;
ALTER USER POLICY u_security_d ALTER policy_d LEVEL level_3;
ALTER USER POLICY u_security_e ALTER policy_e LEVEL level_3;
ALTER USER POLICY u_security_f ALTER policy_f LEVEL level_3;
ALTER USER POLICY u_security_g ALTER policy_g LEVEL level_3;
ALTER USER POLICY u_security_h ALTER policy_h LEVEL level_3;
ALTER USER POLICY u_security_i ALTER policy_i LEVEL level_3;
ALTER USER POLICY u_security_j ALTER policy_j LEVEL level_3;
ALTER USER POLICY u_security_k ALTER policy_k LEVEL level_3;
ALTER USER POLICY u_security_l ALTER policy_l LEVEL level_3;
ALTER USER POLICY u_security_m ALTER policy_m LEVEL level_3;

COMMIT;

//切换登录用户 - u_security_a

!|bind current db connect|node5|

//结果查询
<预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_a WHERE id = 2;

!|close|node5|

//切换登录用户 - u_security_b

!|bind current db connect|node6|

//结果查询
<预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_b WHERE id = 2;

!|close|node6|

//切换登录用户 - u_security_c

!|bind current db connect|node7|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_c WHERE id = 2;

!|close|node7|

//切换登录用户 - u_security_d

!|bind current db connect|node8|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_d WHERE id = 2;

!|close|node8|

//切换登录用户 - u_security_e

!|bind current db connect|node9|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_e WHERE id = 2;

!|close|node9|

//切换登录用户 - u_security_f

!|bind current db connect|node10|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_f WHERE id = 2;

!|close|node10|

//切换登录用户 - u_security_g

!|bind current db connect|node11|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_g WHERE id = 2;

!|close|node11|

//切换登录用户 - u_security_h

!|bind current db connect|node12|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_h WHERE id = 2;

!|close|node12|

//切换登录用户 - u_security_i

!|bind current db connect|node13|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_i WHERE id = 2;

!|close|node13|

//切换登录用户 - u_security_j

!|bind current db connect|node14|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_j WHERE id = 2;

!|close|node14|

//切换登录用户 - u_security_k

!|bind current db connect|node15|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_k WHERE id = 2;|

!|close|node15|

//切换登录用户 - u_security_l

!|bind current db connect|node16|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_l WHERE id = 2;

!|close|node16|

//切换登录用户 - u_security_m

!|bind current db connect|node17|

//结果查询 : <预期结果 : 安全标记未变 , 结果成功更新>
SELECT * FROM t_security_m WHERE id = 2;

!|close|node17|

!|bind current db connect|node4|

//删除测试表
DROP TABLE u_security_a.t_security_a;
DROP TABLE u_security_b.t_security_b;
DROP TABLE u_security_c.t_security_c;
DROP TABLE u_security_d.t_security_d;
DROP TABLE u_security_e.t_security_e;
DROP TABLE u_security_f.t_security_f;
DROP TABLE u_security_g.t_security_g;
DROP TABLE u_security_h.t_security_h;
DROP TABLE u_security_i.t_security_i;
DROP TABLE u_security_j.t_security_j;
DROP TABLE u_security_k.t_security_k;
DROP TABLE u_security_l.t_security_l;
DROP TABLE u_security_m.t_security_m;

//为表删除安全策略
ALTER TABLE POLICY u_security_a.t_security_a DROP policy_a;
ALTER TABLE POLICY u_security_b.t_security_b DROP policy_b;
ALTER TABLE POLICY u_security_c.t_security_c DROP policy_c;
ALTER TABLE POLICY u_security_d.t_security_d DROP policy_d;
ALTER TABLE POLICY u_security_e.t_security_e DROP policy_e;
ALTER TABLE POLICY u_security_f.t_security_f DROP policy_f;
ALTER TABLE POLICY u_security_g.t_security_g DROP policy_g;
ALTER TABLE POLICY u_security_h.t_security_h DROP policy_h;
ALTER TABLE POLICY u_security_i.t_security_i DROP policy_i;
ALTER TABLE POLICY u_security_j.t_security_j DROP policy_j;
ALTER TABLE POLICY u_security_k.t_security_k DROP policy_k;
ALTER TABLE POLICY u_security_l.t_security_l DROP policy_l;
ALTER TABLE POLICY u_security_m.t_security_m DROP policy_m;

//为用户删除安全策略
ALTER USER POLICY u_security_a DROP policy_a;
ALTER USER POLICY u_security_b DROP policy_b;
ALTER USER POLICY u_security_c DROP policy_c;
ALTER USER POLICY u_security_d DROP policy_d;
ALTER USER POLICY u_security_e DROP policy_e;
ALTER USER POLICY u_security_f DROP policy_f;
ALTER USER POLICY u_security_g DROP policy_g;
ALTER USER POLICY u_security_h DROP policy_h;
ALTER USER POLICY u_security_i DROP policy_i;
ALTER USER POLICY u_security_j DROP policy_j;
ALTER USER POLICY u_security_k DROP policy_k;
ALTER USER POLICY u_security_l DROP policy_l;
ALTER USER POLICY u_security_m DROP policy_m;

//删除安全策略
DROP POLICY policy_a;
DROP POLICY policy_b;
DROP POLICY policy_c;
DROP POLICY policy_d;
DROP POLICY policy_e;
DROP POLICY policy_f;
DROP POLICY policy_g;
DROP POLICY policy_h;
DROP POLICY policy_i;
DROP POLICY policy_j;
DROP POLICY policy_k;
DROP POLICY policy_l;
DROP POLICY policy_m;

!|close|node4|

!|bind current db connect|default|

USE SYSTEM;

SET SESSION AUTHORIZATION SYSDBA;

//删除用户
DROP USER u_security_a;
DROP USER u_security_b;
DROP USER u_security_c;
DROP USER u_security_d;
DROP USER u_security_e;
DROP USER u_security_f;
DROP USER u_security_g;
DROP USER u_security_h;
DROP USER u_security_i;
DROP USER u_security_j;
DROP USER u_security_k;
DROP USER u_security_l;
DROP USER u_security_m;