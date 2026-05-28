!4 XG-BINLOG-INTERVAL-001 库级变更记载 (INTERVAL 类型)

!|bind current db connect|modify|

USE SYSTEM;

CREATE DATABASE DB_TEST;

USE DB_TEST;

//创建表
CREATE TABLE t_binlog_a (a INT , c1 INTERVAL YEAR);
CREATE TABLE t_binlog_b (a INT , c1 INTERVAL MONTH);
CREATE TABLE t_binlog_c (a INT , c1 INTERVAL DAY);
CREATE TABLE t_binlog_d (a INT , c1 INTERVAL HOUR);
CREATE TABLE t_binlog_e (a INT , c1 INTERVAL MINUTE);
CREATE TABLE t_binlog_f (a INT , c1 INTERVAL SECOND);
CREATE TABLE t_binlog_g (a INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_binlog_h (a INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_binlog_i (a INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_binlog_j (a INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_binlog_k (a INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_binlog_l (a INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_binlog_m (a INT , c1 INTERVAL MINUTE TO SECOND);

//查询表 id
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_A';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_B';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_C';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_D';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_E';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_F';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_G';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_H';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_I';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_J';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_K';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_L';
SELECT table_id FROM all_tables WHERE table_name = 'T_BINLOG_M';

//查询表是否记载变更日志
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_A';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_B';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_C';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_D';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_E';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_F';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_G';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_H';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_I';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_J';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_K';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_L';
SELECT table_name , reg_modify FROM dba_tables WHERE table_name = 'T_BINLOG_M';

//开启当前库下所有模式和所有表记载
EXEC DBMS_REPLICATION.CREATE_MODIFY_SOURCE ('*' , '*');

//创建订阅者
EXEC DBMS_REPLICATION.CREATE_SUBSCRIBER ('MODIFY' , 'SYSDBA');

//插入数据
INSERT INTO t_binlog_a VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_b VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_c VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_d VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_e VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_f VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_g VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_h VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_i VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_j VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_k VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_l VALUES (1 , '8') , (2 , '9');
INSERT INTO t_binlog_m VALUES (1 , '8') , (2 , '9');

//删除数据
DELETE FROM t_binlog_a WHERE a = 2;
DELETE FROM t_binlog_b WHERE a = 2;
DELETE FROM t_binlog_c WHERE a = 2;
DELETE FROM t_binlog_d WHERE a = 2;
DELETE FROM t_binlog_e WHERE a = 2;
DELETE FROM t_binlog_f WHERE a = 2;
DELETE FROM t_binlog_g WHERE a = 2;
DELETE FROM t_binlog_h WHERE a = 2;
DELETE FROM t_binlog_i WHERE a = 2;
DELETE FROM t_binlog_j WHERE a = 2;
DELETE FROM t_binlog_k WHERE a = 2;
DELETE FROM t_binlog_l WHERE a = 2;
DELETE FROM t_binlog_m WHERE a = 2;

COMMIT;

CHECKPOINT;

//读取 INTERVAL YEAR 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048576' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048576' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048576' , 1024*1024 , false , -1 , 0 , 0);

//读取 INTERVAL MONTH 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048577' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048577' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048577' , 1024*1024 , false , -1 , 0 , 0);

//读取 INTERVAL DAY 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048578' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048578' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048578' , 1024*1024 , false , -1 , 0 , 0);

//读取 INTERVAL HOUR 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048579' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048579' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048579' , 1024*1024 , false , -1 , 0 , 0);

//读取 INTERVAL MINUTE 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048580' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048580' , 1024*1024 , false , -1 , 0 , 0);
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048580' , 1024*1024 , false , -1 , 0 , 0);

//读取 INTERVAL SECOND 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=1 AND OBJ_ID = 1048581' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=3 AND OBJ_ID = 1048581' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//读取 INTERVAL YEAR TO MONTH 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048582' , 1024*1024 , false , -1 , 0 , 0);-!                                              |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048582' , 1024*1024 , false , -1 , 0 , 0);-!                                              |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048582' , 1024*1024 , false , -1 , 0 , 0);-!                                           |

//读取 INTERVAL DAY TO HOUR 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048583' , 1024*1024 , false , -1 , 0 , 0);-!                                                |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048583' , 1024*1024 , false , -1 , 0 , 0);-!                                                |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048583' , 1024*1024 , false , -1 , 0 , 0);-!                                             |

//读取 INTERVAL DAY TO MINUTE 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048584' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048584' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048584' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//读取 INTERVAL DAY TO SECOND 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=1 AND OBJ_ID = 1048585' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=3 AND OBJ_ID = 1048585' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//读取 INTERVAL HOUR TO MINUTE 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 1 , 'ACTION=1 AND OBJ_ID = 1048586' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=1 AND OBJ_ID = 1048586' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 3 , 'ACTION=3 AND OBJ_ID = 1048586' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//读取 INTERVAL HOUR TO SECOND 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=1 AND OBJ_ID = 1048587' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=3 AND OBJ_ID = 1048587' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//读取 INTERVAL MINUTE TO SECOND 表变更数据
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=1 AND OBJ_ID = 1048588' , 1024*1024 , false , -1 , 0 , 0);-!                                                  |
DBMS_REPLICATION.POLL_MODIFY_DATA ('MODIFY' , 5 , 'ACTION=3 AND OBJ_ID = 1048588' , 1024*1024 , false , -1 , 0 , 0);-!                                               |

//删除订阅者
EXEC DBMS_REPLICATION.DROP_SUBSCRIBER ('MODIFY' , 'SYSDBA');

//关闭变更记载
EXEC DBMS_REPLICATION.DROP_MODIFY_SOURCE ('*' , '*');

//删除表
DROP TABLE t_binlog_a;
DROP TABLE t_binlog_b;
DROP TABLE t_binlog_c;
DROP TABLE t_binlog_d;
DROP TABLE t_binlog_e;
DROP TABLE t_binlog_f;
DROP TABLE t_binlog_g;
DROP TABLE t_binlog_h;
DROP TABLE t_binlog_i;
DROP TABLE t_binlog_j;
DROP TABLE t_binlog_k;
DROP TABLE t_binlog_l;
DROP TABLE t_binlog_m;

COMMIT;

!|bind current db connect|default|

USE SYSTEM;

DROP DATABASE DB_TEST;