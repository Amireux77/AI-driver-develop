!4 XG-TYPE-INTERVAL-TABLE-053 INTERVAL类型分区表全覆盖测试
//范围分区测试
CREATE TABLE t_table_053a (id INT , c1 INTERVAL YEAR) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053b (id INT , c1 INTERVAL MONTH) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053c (id INT , c1 INTERVAL DAY) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053d (id INT , c1 INTERVAL HOUR) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053e (id INT , c1 INTERVAL MINUTE) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053f (id INT , c1 INTERVAL SECOND) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053g (id INT , c1 INTERVAL YEAR TO MONTH) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053h (id INT , c1 INTERVAL DAY TO HOUR) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053i (id INT , c1 INTERVAL DAY TO MINUTE) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053j (id INT , c1 INTERVAL DAY TO SECOND) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053k (id INT , c1 INTERVAL HOUR TO MINUTE) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053l (id INT , c1 INTERVAL HOUR TO SECOND) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));
CREATE TABLE t_table_053m (id INT , c1 INTERVAL MINUTE TO SECOND) PARTITION BY RANGE (c1) PARTITIONS(p_old VALUES LESS THAN ('6') , p_new VALUES LESS THAN ('9') , p_future VALUES LESS THAN(MAXVALUES ));

INSERT INTO t_table_053a VALUES (1 , '5');
INSERT INTO t_table_053b VALUES (1 , '5');
INSERT INTO t_table_053c VALUES (1 , '5');
INSERT INTO t_table_053d VALUES (1 , '5');
INSERT INTO t_table_053e VALUES (1 , '5');
INSERT INTO t_table_053f VALUES (1 , '5');
INSERT INTO t_table_053g VALUES (1 , '5');
INSERT INTO t_table_053h VALUES (1 , '5');
INSERT INTO t_table_053i VALUES (1 , '5');
INSERT INTO t_table_053j VALUES (1 , '5');
INSERT INTO t_table_053k VALUES (1 , '5');
INSERT INTO t_table_053l VALUES (1 , '5');
INSERT INTO t_table_053m VALUES (1 , '5');

//查询内容
<预期结果 : 1 | 5-0>
SELECT * FROM t_table_053a PARTITION(p_old);
<预期结果 : 1 | 0-5>
SELECT * FROM t_table_053b PARTITION(p_old);
<预期结果 : 1 | 5 0:00:00>
SELECT * FROM t_table_053c PARTITION(p_old);
<预期结果 : 1 | 5:00:00>
SELECT * FROM t_table_053d PARTITION(p_old);
<预期结果 : 1 | 0:05:00>
SELECT * FROM t_table_053e PARTITION(p_old);
<预期结果 : 1 | 0:00:05>
SELECT * FROM t_table_053f PARTITION(p_old);
<预期结果 : 1 | 0-5>
SELECT * FROM t_table_053g PARTITION(p_old);
<预期结果 : 1 | 5:00:00>
SELECT * FROM t_table_053h PARTITION(p_old);
<预期结果 : 1 | 0:05:00>
SELECT * FROM t_table_053i PARTITION(p_old);
<预期结果 : 1 | 0:00:05>
SELECT * FROM t_table_053j PARTITION(p_old);
<预期结果 : 1 | 0:05:00>
SELECT * FROM t_table_053k PARTITION(p_old);
<预期结果 : 1 | 0:00:05>
SELECT * FROM t_table_053l PARTITION(p_old);
<预期结果 : 1 | 0:00:05>
SELECT * FROM t_table_053m PARTITION(p_old);

INSERT INTO t_table_053a VALUES (2 , '7');
INSERT INTO t_table_053b VALUES (2 , '7');
INSERT INTO t_table_053c VALUES (2 , '7');
INSERT INTO t_table_053d VALUES (2 , '7');
INSERT INTO t_table_053e VALUES (2 , '7');
INSERT INTO t_table_053f VALUES (2 , '7');
INSERT INTO t_table_053g VALUES (2 , '7');
INSERT INTO t_table_053h VALUES (2 , '7');
INSERT INTO t_table_053i VALUES (2 , '7');
INSERT INTO t_table_053j VALUES (2 , '7');
INSERT INTO t_table_053k VALUES (2 , '7');
INSERT INTO t_table_053l VALUES (2 , '7');
INSERT INTO t_table_053m VALUES (2 , '7');

//查询内容
<预期结果 : 2 | 7-0>
SELECT * FROM t_table_053a PARTITION(p_new);
<预期结果 : 2 | 0-7>
SELECT * FROM t_table_053b PARTITION(p_new);
<预期结果 : 2 | 7 0:00:00>
SELECT * FROM t_table_053c PARTITION(p_new);
<预期结果 : 2 | 7:00:00>
SELECT * FROM t_table_053d PARTITION(p_new);
<预期结果 : 2 | 0:07:00>
SELECT * FROM t_table_053e PARTITION(p_new);
<预期结果 : 2 | 0:00:07>
SELECT * FROM t_table_053f PARTITION(p_new);
<预期结果 : 2 | 0-7>
SELECT * FROM t_table_053g PARTITION(p_new);
<预期结果 : 2 | 7:00:00>
SELECT * FROM t_table_053h PARTITION(p_new);
<预期结果 : 2 | 0:07:00>
SELECT * FROM t_table_053i PARTITION(p_new);
<预期结果 : 2 | 0:00:07>
SELECT * FROM t_table_053j PARTITION(p_new);
<预期结果 : 2 | 0:07:00>
SELECT * FROM t_table_053k PARTITION(p_new);
<预期结果 : 2 | 0:00:07>
SELECT * FROM t_table_053l PARTITION(p_new);
<预期结果 : 2 | 0:00:07>
SELECT * FROM t_table_053m PARTITION(p_new);

INSERT INTO t_table_053a VALUES (3 , '10');
INSERT INTO t_table_053b VALUES (3 , '10');
INSERT INTO t_table_053c VALUES (3 , '10');
INSERT INTO t_table_053d VALUES (3 , '10');
INSERT INTO t_table_053e VALUES (3 , '10');
INSERT INTO t_table_053f VALUES (3 , '10');
INSERT INTO t_table_053g VALUES (3 , '10');
INSERT INTO t_table_053h VALUES (3 , '10');
INSERT INTO t_table_053i VALUES (3 , '10');
INSERT INTO t_table_053j VALUES (3 , '10');
INSERT INTO t_table_053k VALUES (3 , '10');
INSERT INTO t_table_053l VALUES (3 , '10');
INSERT INTO t_table_053m VALUES (3 , '10');

//查询内容
<预期结果 : 3 | 10-0>
SELECT * FROM t_table_053a PARTITION(p_future);
<预期结果 : 3 | 0-10>
SELECT * FROM t_table_053b PARTITION(p_future);
<预期结果 : 3 | 10 0:00:00>
SELECT * FROM t_table_053c PARTITION(p_future);
<预期结果 : 3 | 10:00:00>
SELECT * FROM t_table_053d PARTITION(p_future);
<预期结果 : 3 | 0:10:00>
SELECT * FROM t_table_053e PARTITION(p_future);
<预期结果 : 3 | 0:00:10>
SELECT * FROM t_table_053f PARTITION(p_future);
<预期结果 : 3 | 0-10>
SELECT * FROM t_table_053g PARTITION(p_future);
<预期结果 : 3 | 10:00:00>
SELECT * FROM t_table_053h PARTITION(p_future);
<预期结果 : 3 | 0:10:00>
SELECT * FROM t_table_053i PARTITION(p_future);
<预期结果 : 3 | 0:00:10>
SELECT * FROM t_table_053j PARTITION(p_future);
<预期结果 : 3 | 0:10:00>
SELECT * FROM t_table_053k PARTITION(p_future);
<预期结果 : 3 | 0:00:10>
SELECT * FROM t_table_053l PARTITION(p_future);
<预期结果 : 3 | 0:00:10>
SELECT * FROM t_table_053m PARTITION(p_future);

<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053A)>
EXPLAIN VERBOSE SELECT * FROM t_table_053a WHERE c1 = '7-0';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053B)>
EXPLAIN VERBOSE SELECT * FROM t_table_053b WHERE c1 = '0-7';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053C)>
EXPLAIN VERBOSE SELECT * FROM t_table_053c WHERE c1 = '7 0:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053D)>
EXPLAIN VERBOSE SELECT * FROM t_table_053d WHERE c1 = '7:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053E)>
EXPLAIN VERBOSE SELECT * FROM t_table_053e WHERE c1 = '0:07:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053F)>
EXPLAIN VERBOSE SELECT * FROM t_table_053f WHERE c1 = '0:00:07';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053G)>
EXPLAIN VERBOSE SELECT * FROM t_table_053g WHERE c1 = '0-7';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053H)>
EXPLAIN VERBOSE SELECT * FROM t_table_053h WHERE c1 = '7:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053I)>
EXPLAIN VERBOSE SELECT * FROM t_table_053i WHERE c1 = '0:07:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053J)>
EXPLAIN VERBOSE SELECT * FROM t_table_053j WHERE c1 = '0:00:07';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053K)>
EXPLAIN VERBOSE SELECT * FROM t_table_053k WHERE c1 = '0:07:00';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053L)>
EXPLAIN VERBOSE SELECT * FROM t_table_053l WHERE c1 = '0:00:07';
<预期结果 : 1   SeqScan[(1 1) cost=0 , result_num=1](table=T_TABLE_053M)>
EXPLAIN VERBOSE SELECT * FROM t_table_053m WHERE c1 = '0:00:07';

//删除表
DROP TABLE t_table_053a;
DROP TABLE t_table_053b;
DROP TABLE t_table_053c;
DROP TABLE t_table_053d;
DROP TABLE t_table_053e;
DROP TABLE t_table_053f;
DROP TABLE t_table_053g;
DROP TABLE t_table_053h;
DROP TABLE t_table_053i;
DROP TABLE t_table_053j;
DROP TABLE t_table_053k;
DROP TABLE t_table_053l;
DROP TABLE t_table_053m;

//列表分区测试
CREATE TABLE t_table_053a_1 (id INT , c1 INTERVAL YEAR) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053b_1 (id INT , c1 INTERVAL MONTH) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053c_1 (id INT , c1 INTERVAL DAY) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053d_1 (id INT , c1 INTERVAL HOUR) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053e_1 (id INT , c1 INTERVAL MINUTE) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053f_1 (id INT , c1 INTERVAL SECOND) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053g_1 (id INT , c1 INTERVAL YEAR TO MONTH) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053h_1 (id INT , c1 INTERVAL DAY TO HOUR) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053i_1 (id INT , c1 INTERVAL DAY TO MINUTE) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053j_1 (id INT , c1 INTERVAL DAY TO SECOND) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053k_1 (id INT , c1 INTERVAL HOUR TO MINUTE) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053l_1 (id INT , c1 INTERVAL HOUR TO SECOND) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));
CREATE TABLE t_table_053m_1 (id INT , c1 INTERVAL MINUTE TO SECOND) PARTITION BY LIST (c1) PARTITIONS(p_low VALUES ('6') , p_mid VALUES ('9') , p_other VALUES (OTHERVALUES));

INSERT INTO t_table_053a_1 VALUES (1 , '6');
INSERT INTO t_table_053b_1 VALUES (1 , '6');
INSERT INTO t_table_053c_1 VALUES (1 , '6');
INSERT INTO t_table_053d_1 VALUES (1 , '6');
INSERT INTO t_table_053e_1 VALUES (1 , '6');
INSERT INTO t_table_053f_1 VALUES (1 , '6');
INSERT INTO t_table_053g_1 VALUES (1 , '6');
INSERT INTO t_table_053h_1 VALUES (1 , '6');
INSERT INTO t_table_053i_1 VALUES (1 , '6');
INSERT INTO t_table_053j_1 VALUES (1 , '6');
INSERT INTO t_table_053k_1 VALUES (1 , '6');
INSERT INTO t_table_053l_1 VALUES (1 , '6');
INSERT INTO t_table_053m_1 VALUES (1 , '6');

//查询结果
<预期结果 : 6-0>
SELECT c1 FROM t_table_053a_1 PARTITION(p_low);
<预期结果 : 0-6>
SELECT c1 FROM t_table_053b_1 PARTITION(p_low);
<预期结果 : 6 0:00:00>
SELECT c1 FROM t_table_053c_1 PARTITION(p_low);
<预期结果 : 6:00:00>
SELECT c1 FROM t_table_053d_1 PARTITION(p_low);
<预期结果 : 0:06:00>
SELECT c1 FROM t_table_053e_1 PARTITION(p_low);
<预期结果 : 0:00:06>
SELECT c1 FROM t_table_053f_1 PARTITION(p_low);
<预期结果 : 0-6>
SELECT c1 FROM t_table_053g_1 PARTITION(p_low);
<预期结果 : 6:00:00>
SELECT c1 FROM t_table_053h_1 PARTITION(p_low);
<预期结果 : 0:06:00>
SELECT c1 FROM t_table_053i_1 PARTITION(p_low);
<预期结果 : 0:00:06>
SELECT c1 FROM t_table_053j_1 PARTITION(p_low);
<预期结果 : 0:06:00>
SELECT c1 FROM t_table_053k_1 PARTITION(p_low);
<预期结果 : 0:00:06>
SELECT c1 FROM t_table_053l_1 PARTITION(p_low);
<预期结果 : 0:00:06>
SELECT c1 FROM t_table_053m_1 PARTITION(p_low);

INSERT INTO t_table_053a_1 VALUES (2 , '9');
INSERT INTO t_table_053b_1 VALUES (2 , '9');
INSERT INTO t_table_053c_1 VALUES (2 , '9');
INSERT INTO t_table_053d_1 VALUES (2 , '9');
INSERT INTO t_table_053e_1 VALUES (2 , '9');
INSERT INTO t_table_053f_1 VALUES (2 , '9');
INSERT INTO t_table_053g_1 VALUES (2 , '9');
INSERT INTO t_table_053h_1 VALUES (2 , '9');
INSERT INTO t_table_053i_1 VALUES (2 , '9');
INSERT INTO t_table_053j_1 VALUES (2 , '9');
INSERT INTO t_table_053k_1 VALUES (2 , '9');
INSERT INTO t_table_053l_1 VALUES (2 , '9');
INSERT INTO t_table_053m_1 VALUES (2 , '9');

//查询结果
<预期结果 : 9-0>
SELECT c1 FROM t_table_053a_1 PARTITION(p_mid);
<预期结果 : 0-9>
SELECT c1 FROM t_table_053b_1 PARTITION(p_mid);
<预期结果 : 9 0:00:00>
SELECT c1 FROM t_table_053c_1 PARTITION(p_mid);
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_053d_1 PARTITION(p_mid);
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_053e_1 PARTITION(p_mid);
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_053f_1 PARTITION(p_mid);
<预期结果 : 0-9>
SELECT c1 FROM t_table_053g_1 PARTITION(p_mid);
<预期结果 : 9:00:00>
SELECT c1 FROM t_table_053h_1 PARTITION(p_mid);
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_053i_1 PARTITION(p_mid);
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_053j_1 PARTITION(p_mid);
<预期结果 : 0:09:00>
SELECT c1 FROM t_table_053k_1 PARTITION(p_mid);
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_053l_1 PARTITION(p_mid);
<预期结果 : 0:00:09>
SELECT c1 FROM t_table_053m_1 PARTITION(p_mid);

INSERT INTO t_table_053a_1 VALUES (3 , '12');
INSERT INTO t_table_053b_1 VALUES (3 , '12');
INSERT INTO t_table_053c_1 VALUES (3 , '12');
INSERT INTO t_table_053d_1 VALUES (3 , '12');
INSERT INTO t_table_053e_1 VALUES (3 , '12');
INSERT INTO t_table_053f_1 VALUES (3 , '12');
INSERT INTO t_table_053g_1 VALUES (3 , '12');
INSERT INTO t_table_053h_1 VALUES (3 , '12');
INSERT INTO t_table_053i_1 VALUES (3 , '12');
INSERT INTO t_table_053j_1 VALUES (3 , '12');
INSERT INTO t_table_053k_1 VALUES (3 , '12');
INSERT INTO t_table_053l_1 VALUES (3 , '12');
INSERT INTO t_table_053m_1 VALUES (3 , '12');

//查询结果
<预期结果 : 12-0>
SELECT c1 FROM t_table_053a_1 PARTITION(p_other);
<预期结果 : 1-0>
SELECT c1 FROM t_table_053b_1 PARTITION(p_other);
<预期结果 : 12 0:00:00>
SELECT c1 FROM t_table_053c_1 PARTITION(p_other);
<预期结果 : 12:00:00>
SELECT c1 FROM t_table_053d_1 PARTITION(p_other);
<预期结果 : 0:12:00>
SELECT c1 FROM t_table_053e_1 PARTITION(p_other);
<预期结果 : 0:00:12>
SELECT c1 FROM t_table_053f_1 PARTITION(p_other);
<预期结果 : 1-0>
SELECT c1 FROM t_table_053g_1 PARTITION(p_other);
<预期结果 : 12:00:00>
SELECT c1 FROM t_table_053h_1 PARTITION(p_other);
<预期结果 : 0:12:00>
SELECT c1 FROM t_table_053i_1 PARTITION(p_other);
<预期结果 : 0:00:12>
SELECT c1 FROM t_table_053j_1 PARTITION(p_other);
<预期结果 : 0:12:00>
SELECT c1 FROM t_table_053k_1 PARTITION(p_other);
<预期结果 : 0:00:12>
SELECT c1 FROM t_table_053l_1 PARTITION(p_other);
<预期结果 : 0:00:12>
SELECT c1 FROM t_table_053m_1 PARTITION(p_other);

<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053A_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053a_1 WHERE c1 = '9-0';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053B_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053b_1 WHERE c1 = '0-9';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053C_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053c_1 WHERE c1 = '9 0:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053D_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053d_1 WHERE c1 = '9:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053E_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053e_1 WHERE c1 = '0:09:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053F_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053f_1 WHERE c1 = '0:00:09';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053G_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053g_1 WHERE c1 = '0-9';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053H_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053h_1 WHERE c1 = '9:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053I_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053i_1 WHERE c1 = '0:09:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053J_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053j_1 WHERE c1 = '0:00:09';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053K_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053k_1 WHERE c1 = '0:09:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053L_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053l_1 WHERE c1 = '0:00:09';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053M_1)>
EXPLAIN VERBOSE SELECT * FROM t_table_053m_1 WHERE c1 = '0:00:09';

//删除表
DROP TABLE t_table_053a_1;
DROP TABLE t_table_053b_1;
DROP TABLE t_table_053c_1;
DROP TABLE t_table_053d_1;
DROP TABLE t_table_053e_1;
DROP TABLE t_table_053f_1;
DROP TABLE t_table_053g_1;
DROP TABLE t_table_053h_1;
DROP TABLE t_table_053i_1;
DROP TABLE t_table_053j_1;
DROP TABLE t_table_053k_1;
DROP TABLE t_table_053l_1;
DROP TABLE t_table_053m_1;

//HASH 分区
CREATE TABLE t_table_053a_2 (id INT , c1 INTERVAL YEAR) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053b_2 (id INT , c1 INTERVAL MONTH) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053c_2 (id INT , c1 INTERVAL DAY) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053d_2 (id INT , c1 INTERVAL HOUR) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053e_2 (id INT , c1 INTERVAL MINUTE) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053f_2 (id INT , c1 INTERVAL SECOND) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053g_2 (id INT , c1 INTERVAL YEAR TO MONTH) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053h_2 (id INT , c1 INTERVAL DAY TO HOUR) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053i_2 (id INT , c1 INTERVAL DAY TO MINUTE) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053j_2 (id INT , c1 INTERVAL DAY TO SECOND) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053k_2 (id INT , c1 INTERVAL HOUR TO MINUTE) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053l_2 (id INT , c1 INTERVAL HOUR TO SECOND) PARTITION BY HASH (c1) PARTITIONS 4;
CREATE TABLE t_table_053m_2 (id INT , c1 INTERVAL MINUTE TO SECOND) PARTITION BY HASH (c1) PARTITIONS 4;

INSERT INTO t_table_053a_2 VALUES (1 , '8');
INSERT INTO t_table_053b_2 VALUES (1 , '8');
INSERT INTO t_table_053c_2 VALUES (1 , '8');
INSERT INTO t_table_053d_2 VALUES (1 , '8');
INSERT INTO t_table_053e_2 VALUES (1 , '8');
INSERT INTO t_table_053f_2 VALUES (1 , '8');
INSERT INTO t_table_053g_2 VALUES (1 , '8');
INSERT INTO t_table_053h_2 VALUES (1 , '8');
INSERT INTO t_table_053i_2 VALUES (1 , '8');
INSERT INTO t_table_053j_2 VALUES (1 , '8');
INSERT INTO t_table_053k_2 VALUES (1 , '8');
INSERT INTO t_table_053l_2 VALUES (1 , '8');
INSERT INTO t_table_053m_2 VALUES (1 , '8');

//查询结果
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053a_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053b_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053c_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053d_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053e_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053f_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053g_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053h_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053i_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053j_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053k_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053l_2';
SELECT sp.PARTI_NAME FROM SYS_PARTIS sp JOIN SYS_TABLES st ON st.TABLE_ID = sp.TABLE_ID WHERE st.TABLE_NAME = 'T_TABLE_053m_2';

<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053A_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053a_2 WHERE c1 = '8-0';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053B_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053b_2 WHERE c1 = '0-8';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053C_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053c_2 WHERE c1 = '8 0:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053D_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053d_2 WHERE c1 = '8:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053E_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053e_2 WHERE c1 = '0:08:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053F_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053f_2 WHERE c1 = '0:00:08';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053G_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053g_2 WHERE c1 = '0-8';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053H_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053h_2 WHERE c1 = '8:00:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053I_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053i_2 WHERE c1 = '0:08:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053J_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053j_2 WHERE c1 = '0:00:08';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053K_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053k_2 WHERE c1 = '0:08:00';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053L_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053l_2 WHERE c1 = '0:00:08';
<预期结果 : 1   SeqScan[(1 1) cost=0,result_num=1](table=T_TABLE_053M_2)>
EXPLAIN VERBOSE SELECT * FROM t_table_053m_2 WHERE c1 = '0:00:08';

//删除表
DROP TABLE t_table_053a_2;
DROP TABLE t_table_053b_2;
DROP TABLE t_table_053c_2;
DROP TABLE t_table_053d_2;
DROP TABLE t_table_053e_2;
DROP TABLE t_table_053f_2;
DROP TABLE t_table_053g_2;
DROP TABLE t_table_053h_2;
DROP TABLE t_table_053i_2;
DROP TABLE t_table_053j_2;
DROP TABLE t_table_053k_2;
DROP TABLE t_table_053l_2;
DROP TABLE t_table_053m_2;

//自动扩展分区测试
CREATE TABLE t_table_053_auto_all (
id INT,
create_time DATETIME,
c_year INTERVAL YEAR,
c_month INTERVAL MONTH,
c_day INTERVAL DAY,
c_hour INTERVAL HOUR,
c_minute INTERVAL MINUTE,
c_second INTERVAL SECOND,
c_year_month INTERVAL YEAR TO MONTH,
c_day_hour INTERVAL DAY TO HOUR,
c_day_minute INTERVAL DAY TO MINUTE,
c_day_second INTERVAL DAY TO SECOND,
c_hour_minute INTERVAL HOUR TO MINUTE,
c_hour_second INTERVAL HOUR TO SECOND,
c_minute_second INTERVAL MINUTE TO SECOND
)
PARTITION BY RANGE (create_time) INTERVAL 5 DAY
PARTITIONS (('1970-01-01 00:00:00'));

INSERT INTO t_table_053_auto_all VALUES
(1 , '1969-12-31 00:00:00' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1' , '1');
INSERT INTO t_table_053_auto_all VALUES
(2 , '1970-01-02 00:00:00' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2' , '2');
INSERT INTO t_table_053_auto_all VALUES
(3 , '1970-01-10 00:00:00' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3' , '3');
INSERT INTO t_table_053_auto_all VALUES
(4 , '1970-01-20 00:00:00' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4' , '4');

//查询内容
<预期结果 : 4>
SELECT COUNT(*) FROM t_table_053_auto_all;
<预期结果 : 1>
SELECT COUNT(*) FROM t_table_053_auto_all WHERE create_time < '1970-01-01 00:00:00';
<预期结果 : 3>
SELECT COUNT(*) FROM t_table_053_auto_all WHERE create_time >= '1970-01-01 00:00:00';
<预期结果 : 4>
SELECT COUNT(*) FROM t_table_053_auto_all WHERE
c_year IS NOT NULL AND c_month IS NOT NULL AND c_day IS NOT NULL AND c_hour IS NOT NULL
AND c_minute IS NOT NULL AND c_second IS NOT NULL AND c_year_month IS NOT NULL
AND c_day_hour IS NOT NULL AND c_day_minute IS NOT NULL AND c_day_second IS NOT NULL
AND c_hour_minute IS NOT NULL AND c_hour_second IS NOT NULL AND c_minute_second IS NOT NULL;

//删除表
DROP TABLE t_table_053_auto_all;


!4 XG-TYPE-INTERVAL-TABLE-054 INTERVAL类型临时表测试
SET support_global_tab ON;

CREATE GLOBAL TEMPORARY TABLE t_table_054a (id INT , c1 INTERVAL YEAR) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054b (id INT , c1 INTERVAL MONTH) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054c (id INT , c1 INTERVAL DAY) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054d (id INT , c1 INTERVAL HOUR) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054e (id INT , c1 INTERVAL MINUTE) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054f (id INT , c1 INTERVAL SECOND) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054g (id INT , c1 INTERVAL YEAR TO MONTH) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054h (id INT , c1 INTERVAL DAY TO HOUR) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054i (id INT , c1 INTERVAL DAY TO MINUTE) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054j (id INT , c1 INTERVAL DAY TO SECOND) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054k (id INT , c1 INTERVAL HOUR TO MINUTE) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054l (id INT , c1 INTERVAL HOUR TO SECOND) ON COMMIT PRESERVE ROWS;
CREATE GLOBAL TEMPORARY TABLE t_table_054m (id INT , c1 INTERVAL MINUTE TO SECOND) ON COMMIT PRESERVE ROWS;

INSERT INTO t_table_054a VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054b VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054c VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054d VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054e VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054f VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054g VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054h VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054i VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054j VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054k VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054l VALUES (1 , '6') , (2 , '9');
INSERT INTO t_table_054m VALUES (1 , '6') , (2 , '9');

//查询内容
<预期结果 : 1 | 6-0 / 2 | 9-0>
SELECT * FROM t_table_054a ORDER BY c1;
<预期结果 : 1 | 0-6 / 2 | 0-9>
SELECT * FROM t_table_054b ORDER BY c1;
<预期结果 : 1 | 6 0:00:00 / 2 | 9 0:00:00>
SELECT * FROM t_table_054c ORDER BY c1;
<预期结果 : 1 | 6:00:00 / 2 | 9:00:00>
SELECT * FROM t_table_054d ORDER BY c1;
<预期结果 : 1 | 0:06:00 / 2 | 0:09:00>
SELECT * FROM t_table_054e ORDER BY c1;
<预期结果 : 1 | 0:00:06 / 2 | 0:00:09>
SELECT * FROM t_table_054f ORDER BY c1;
<预期结果 : 1 | 0-6 / 2 | 0-9>
SELECT * FROM t_table_054g ORDER BY c1;
<预期结果 : 1 | 6:00:00 / 2 | 9:00:00>
SELECT * FROM t_table_054h ORDER BY c1;
<预期结果 : 1 | 0:06:00 / 2 | 0:09:00>
SELECT * FROM t_table_054i ORDER BY c1;
<预期结果 : 1 | 0:00:06 / 2 | 0:00:09>
SELECT * FROM t_table_054j ORDER BY c1;
<预期结果 : 1 | 0:06:00 / 2 | 0:09:00>
SELECT * FROM t_table_054k ORDER BY c1;
<预期结果 : 1 | 0:00:06 / 2 | 0:00:09>
SELECT * FROM t_table_054l ORDER BY c1;
<预期结果 : 1 | 0:00:06 / 2 | 0:00:09>
SELECT * FROM t_table_054m ORDER BY c1;

//切换节点
!|commit|

!|bind current db connect|node2|

//查询内容
<预期结果 : 无结果>
SELECT * FROM t_table_054a ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054b ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054c ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054d ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054e ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054f ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054g ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054h ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054i ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054j ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054k ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054l ORDER BY c1;
<预期结果 : 无结果>
SELECT * FROM t_table_054m ORDER BY c1;

//切回默认节点
COMMIT;

!|close|node2|

!|Connect|node2|@node2_url|

!|bind current db connect|default|

//删除表
DROP TABLE t_table_054a;
DROP TABLE t_table_054b;
DROP TABLE t_table_054c;
DROP TABLE t_table_054d;
DROP TABLE t_table_054e;
DROP TABLE t_table_054f;
DROP TABLE t_table_054g;
DROP TABLE t_table_054h;
DROP TABLE t_table_054i;
DROP TABLE t_table_054j;
DROP TABLE t_table_054k;
DROP TABLE t_table_054l;
DROP TABLE t_table_054m;

!4 XG-TYPE-INTERVAL-TABLE-055 INTERVAL类型压缩表
CREATE TABLE t_table_055a (id INT , c1 INTERVAL YEAR) COMPRESS;
CREATE TABLE t_table_055b (id INT , c1 INTERVAL MONTH) COMPRESS;
CREATE TABLE t_table_055c (id INT , c1 INTERVAL DAY) COMPRESS;
CREATE TABLE t_table_055d (id INT , c1 INTERVAL HOUR) COMPRESS;
CREATE TABLE t_table_055e (id INT , c1 INTERVAL MINUTE) COMPRESS;
CREATE TABLE t_table_055f (id INT , c1 INTERVAL SECOND) COMPRESS;
CREATE TABLE t_table_055g (id INT , c1 INTERVAL YEAR TO MONTH) COMPRESS;
CREATE TABLE t_table_055h (id INT , c1 INTERVAL DAY TO HOUR) COMPRESS;
CREATE TABLE t_table_055i (id INT , c1 INTERVAL DAY TO MINUTE) COMPRESS;
CREATE TABLE t_table_055j (id INT , c1 INTERVAL DAY TO SECOND) COMPRESS;
CREATE TABLE t_table_055k (id INT , c1 INTERVAL HOUR TO MINUTE) COMPRESS;
CREATE TABLE t_table_055l (id INT , c1 INTERVAL HOUR TO SECOND) COMPRESS;
CREATE TABLE t_table_055m (id INT , c1 INTERVAL MINUTE TO SECOND) COMPRESS;

INSERT INTO t_table_055a SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055b SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055c SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055d SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055e SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055f SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055g SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055h SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055i SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055j SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055k SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055l SELECT 1 , '9' FROM DUAL;
INSERT INTO t_table_055m SELECT 1 , '9' FROM DUAL;

//压缩
INSERT INTO t_table_055a SELECT * FROM t_table_055a;
INSERT INTO t_table_055b SELECT * FROM t_table_055b;
INSERT INTO t_table_055c SELECT * FROM t_table_055c;
INSERT INTO t_table_055d SELECT * FROM t_table_055d;
INSERT INTO t_table_055e SELECT * FROM t_table_055e;
INSERT INTO t_table_055f SELECT * FROM t_table_055f;
INSERT INTO t_table_055g SELECT * FROM t_table_055g;
INSERT INTO t_table_055h SELECT * FROM t_table_055h;
INSERT INTO t_table_055i SELECT * FROM t_table_055i;
INSERT INTO t_table_055j SELECT * FROM t_table_055j;
INSERT INTO t_table_055k SELECT * FROM t_table_055k;
INSERT INTO t_table_055l SELECT * FROM t_table_055l;
INSERT INTO t_table_055m SELECT * FROM t_table_055m;

//压缩
INSERT INTO t_table_055a SELECT * FROM t_table_055a;
INSERT INTO t_table_055b SELECT * FROM t_table_055b;
INSERT INTO t_table_055c SELECT * FROM t_table_055c;
INSERT INTO t_table_055d SELECT * FROM t_table_055d;
INSERT INTO t_table_055e SELECT * FROM t_table_055e;
INSERT INTO t_table_055f SELECT * FROM t_table_055f;
INSERT INTO t_table_055g SELECT * FROM t_table_055g;
INSERT INTO t_table_055h SELECT * FROM t_table_055h;
INSERT INTO t_table_055i SELECT * FROM t_table_055i;
INSERT INTO t_table_055j SELECT * FROM t_table_055j;
INSERT INTO t_table_055k SELECT * FROM t_table_055k;
INSERT INTO t_table_055l SELECT * FROM t_table_055l;
INSERT INTO t_table_055m SELECT * FROM t_table_055m;

//查询内容
<预期结果 : 9-0>
SELECT DISTINCT c1 FROM t_table_055a;
<预期结果 : 0-9>
SELECT DISTINCT c1 FROM t_table_055b;
<预期结果 : 9 0:00:00>
SELECT DISTINCT c1 FROM t_table_055c;
<预期结果 : 9:00:00>
SELECT DISTINCT c1 FROM t_table_055d;
<预期结果 : 0:09:00>
SELECT DISTINCT c1 FROM t_table_055e;
<预期结果 : 0:00:09>
SELECT DISTINCT c1 FROM t_table_055f;
<预期结果 : 0-9>
SELECT DISTINCT c1 FROM t_table_055g;
<预期结果 : 9:00:00>
SELECT DISTINCT c1 FROM t_table_055h;
<预期结果 : 0:09:00>
SELECT DISTINCT c1 FROM t_table_055i;
<预期结果 : 0:00:09>
SELECT DISTINCT c1 FROM t_table_055j;
<预期结果 : 0:09:00>
SELECT DISTINCT c1 FROM t_table_055k;
<预期结果 : 0:00:09>
SELECT DISTINCT c1 FROM t_table_055l;
<预期结果 : 0:00:09>
SELECT DISTINCT c1 FROM t_table_055m;

//删除表
DROP TABLE t_table_055a;
DROP TABLE t_table_055b;
DROP TABLE t_table_055c;
DROP TABLE t_table_055d;
DROP TABLE t_table_055e;
DROP TABLE t_table_055f;
DROP TABLE t_table_055g;
DROP TABLE t_table_055h;
DROP TABLE t_table_055i;
DROP TABLE t_table_055j;
DROP TABLE t_table_055k;
DROP TABLE t_table_055l;
DROP TABLE t_table_055m;

!4 XG-TYPE-INTERVAL-TABLE-056 自定义对象类型
//创建自定义对象 OBJECT 类型
CREATE OR REPLACE TYPE interval_lenth_a AS OBJECT(c1 INTERVAL YEAR);
CREATE OR REPLACE TYPE interval_lenth_b AS OBJECT(c1 INTERVAL MONTH);
CREATE OR REPLACE TYPE interval_lenth_c AS OBJECT(c1 INTERVAL DAY);
CREATE OR REPLACE TYPE interval_lenth_d AS OBJECT(c1 INTERVAL HOUR);
CREATE OR REPLACE TYPE interval_lenth_e AS OBJECT(c1 INTERVAL MINUTE);
CREATE OR REPLACE TYPE interval_lenth_f AS OBJECT(c1 INTERVAL SECOND);
CREATE OR REPLACE TYPE interval_lenth_g AS OBJECT(c1 INTERVAL YEAR TO MONTH);
CREATE OR REPLACE TYPE interval_lenth_h AS OBJECT(c1 INTERVAL DAY TO HOUR);
CREATE OR REPLACE TYPE interval_lenth_i AS OBJECT(c1 INTERVAL DAY TO MINUTE);
CREATE OR REPLACE TYPE interval_lenth_j AS OBJECT(c1 INTERVAL DAY TO SECOND);
CREATE OR REPLACE TYPE interval_lenth_k AS OBJECT(c1 INTERVAL HOUR TO MINUTE);
CREATE OR REPLACE TYPE interval_lenth_l AS OBJECT(c1 INTERVAL HOUR TO SECOND);
CREATE OR REPLACE TYPE interval_lenth_m AS OBJECT(c1 INTERVAL MINUTE TO SECOND);

//创建表
CREATE TABLE t_table_056a (id INT , lenth interval_lenth_a);
CREATE TABLE t_table_056b (id INT , lenth interval_lenth_b);
CREATE TABLE t_table_056c (id INT , lenth interval_lenth_c);
CREATE TABLE t_table_056d (id INT , lenth interval_lenth_d);
CREATE TABLE t_table_056e (id INT , lenth interval_lenth_e);
CREATE TABLE t_table_056f (id INT , lenth interval_lenth_f);
CREATE TABLE t_table_056g (id INT , lenth interval_lenth_g);
CREATE TABLE t_table_056h (id INT , lenth interval_lenth_h);
CREATE TABLE t_table_056i (id INT , lenth interval_lenth_i);
CREATE TABLE t_table_056j (id INT , lenth interval_lenth_j);
CREATE TABLE t_table_056k (id INT , lenth interval_lenth_k);
CREATE TABLE t_table_056l (id INT , lenth interval_lenth_l);
CREATE TABLE t_table_056m (id INT , lenth interval_lenth_m);

INSERT INTO t_table_056a VALUES (1 , interval_lenth_a('9'));
INSERT INTO t_table_056b VALUES (1 , interval_lenth_b('9'));
INSERT INTO t_table_056c VALUES (1 , interval_lenth_c('9'));
INSERT INTO t_table_056d VALUES (1 , interval_lenth_d('9'));
INSERT INTO t_table_056e VALUES (1 , interval_lenth_e('9'));
INSERT INTO t_table_056f VALUES (1 , interval_lenth_f('9'));
INSERT INTO t_table_056g VALUES (1 , interval_lenth_g('9'));
INSERT INTO t_table_056h VALUES (1 , interval_lenth_h('9'));
INSERT INTO t_table_056i VALUES (1 , interval_lenth_i('9'));
INSERT INTO t_table_056j VALUES (1 , interval_lenth_j('9'));
INSERT INTO t_table_056k VALUES (1 , interval_lenth_k('9'));
INSERT INTO t_table_056l VALUES (1 , interval_lenth_l('9'));
INSERT INTO t_table_056m VALUES (1 , interval_lenth_m('9'));

//查询内容
<预期结果 : 9-0>
SELECT t.lenth.c1 FROM t_table_056a t;
<预期结果 : 0-9>
SELECT t.lenth.c1 FROM t_table_056b t;
<预期结果 : 9 0:00:00>
SELECT t.lenth.c1 FROM t_table_056c t;
<预期结果 : 9:00:00>
SELECT t.lenth.c1 FROM t_table_056d t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM t_table_056e t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM t_table_056f t;
<预期结果 : 0-9>
SELECT t.lenth.c1 FROM t_table_056g t;
<预期结果 : 9:00:00>
SELECT t.lenth.c1 FROM t_table_056h t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM t_table_056i t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM t_table_056j t;
<预期结果 : 0:09:00>
SELECT t.lenth.c1 FROM t_table_056k t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM t_table_056l t;
<预期结果 : 0:00:09>
SELECT t.lenth.c1 FROM t_table_056m t;

//删除表
DROP TABLE t_table_056a;
DROP TABLE t_table_056b;
DROP TABLE t_table_056c;
DROP TABLE t_table_056d;
DROP TABLE t_table_056e;
DROP TABLE t_table_056f;
DROP TABLE t_table_056g;
DROP TABLE t_table_056h;
DROP TABLE t_table_056i;
DROP TABLE t_table_056j;
DROP TABLE t_table_056k;
DROP TABLE t_table_056l;
DROP TABLE t_table_056m;

//删除自定义类型
DROP TYPE interval_lenth_a;
DROP TYPE interval_lenth_b;
DROP TYPE interval_lenth_c;
DROP TYPE interval_lenth_d;
DROP TYPE interval_lenth_e;
DROP TYPE interval_lenth_f;
DROP TYPE interval_lenth_g;
DROP TYPE interval_lenth_h;
DROP TYPE interval_lenth_i;
DROP TYPE interval_lenth_j;
DROP TYPE interval_lenth_k;
DROP TYPE interval_lenth_l;
DROP TYPE interval_lenth_m;

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
CREATE TABLE t_table_056a_1 (id INT , v_array interval_VARRAY_a);
CREATE TABLE t_table_056b_1 (id INT , v_array interval_VARRAY_b);
CREATE TABLE t_table_056c_1 (id INT , v_array interval_VARRAY_c);
CREATE TABLE t_table_056d_1 (id INT , v_array interval_VARRAY_d);
CREATE TABLE t_table_056e_1 (id INT , v_array interval_VARRAY_e);
CREATE TABLE t_table_056f_1 (id INT , v_array interval_VARRAY_f);
CREATE TABLE t_table_056g_1 (id INT , v_array interval_VARRAY_g);
CREATE TABLE t_table_056h_1 (id INT , v_array interval_VARRAY_h);
CREATE TABLE t_table_056i_1 (id INT , v_array interval_VARRAY_i);
CREATE TABLE t_table_056j_1 (id INT , v_array interval_VARRAY_j);
CREATE TABLE t_table_056k_1 (id INT , v_array interval_VARRAY_k);
CREATE TABLE t_table_056l_1 (id INT , v_array interval_VARRAY_l);
CREATE TABLE t_table_056m_1 (id INT , v_array interval_VARRAY_m);

//插入数据
INSERT INTO t_table_056a_1 VALUES (1 , interval_VARRAY_a('9'));
INSERT INTO t_table_056b_1 VALUES (1 , interval_VARRAY_b('9'));
INSERT INTO t_table_056c_1 VALUES (1 , interval_VARRAY_c('9'));
INSERT INTO t_table_056d_1 VALUES (1 , interval_VARRAY_d('9'));
INSERT INTO t_table_056e_1 VALUES (1 , interval_VARRAY_e('9'));
INSERT INTO t_table_056f_1 VALUES (1 , interval_VARRAY_f('9'));
INSERT INTO t_table_056g_1 VALUES (1 , interval_VARRAY_g('9'));
INSERT INTO t_table_056h_1 VALUES (1 , interval_VARRAY_h('9'));
INSERT INTO t_table_056i_1 VALUES (1 , interval_VARRAY_i('9'));
INSERT INTO t_table_056j_1 VALUES (1 , interval_VARRAY_j('9'));
INSERT INTO t_table_056k_1 VALUES (1 , interval_VARRAY_k('9'));
INSERT INTO t_table_056l_1 VALUES (1 , interval_VARRAY_l('9'));
INSERT INTO t_table_056m_1 VALUES (1 , interval_VARRAY_m('9'));

//查询内容
<预期结果 : [9-0]>
SELECT v_array FROM t_table_056a_1 t;
<预期结果 : [0-9]>
SELECT v_array FROM t_table_056b_1 t;
<预期结果 : [9 0:00:00]>
SELECT v_array FROM t_table_056c_1 t;
<预期结果 : [9:00:00]>
SELECT v_array FROM t_table_056d_1 t;
<预期结果 : [0:09:00]>
SELECT v_array FROM t_table_056e_1 t;
<预期结果 : [0:00:09]>
SELECT v_array FROM t_table_056f_1 t;
<预期结果 : [0-9]>
SELECT v_array FROM t_table_056g_1 t;
<预期结果 : [9:00:00]>
SELECT v_array FROM t_table_056h_1 t;
<预期结果 : [0:09:00]>
SELECT v_array FROM t_table_056i_1 t;
<预期结果 : [0:00:09]>
SELECT v_array FROM t_table_056j_1 t;
<预期结果 : [0:09:00]>
SELECT v_array FROM t_table_056k_1 t;
<预期结果 : [0:00:09]>
SELECT v_array FROM t_table_056l_1 t;
<预期结果 : [0:00:09]>
SELECT v_array FROM t_table_056m_1 t;

//删除表
DROP TABLE t_table_056a_1;
DROP TABLE t_table_056b_1;
DROP TABLE t_table_056c_1;
DROP TABLE t_table_056d_1;
DROP TABLE t_table_056e_1;
DROP TABLE t_table_056f_1;
DROP TABLE t_table_056g_1;
DROP TABLE t_table_056h_1;
DROP TABLE t_table_056i_1;
DROP TABLE t_table_056j_1;
DROP TABLE t_table_056k_1;
DROP TABLE t_table_056l_1;
DROP TABLE t_table_056m_1;

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
CREATE TABLE t_table_056a_2 (id INT , tab interval_TABLE_a);
CREATE TABLE t_table_056b_2 (id INT , tab interval_TABLE_b);
CREATE TABLE t_table_056c_2 (id INT , tab interval_TABLE_c);
CREATE TABLE t_table_056d_2 (id INT , tab interval_TABLE_d);
CREATE TABLE t_table_056e_2 (id INT , tab interval_TABLE_e);
CREATE TABLE t_table_056f_2 (id INT , tab interval_TABLE_f);
CREATE TABLE t_table_056g_2 (id INT , tab interval_TABLE_g);
CREATE TABLE t_table_056h_2 (id INT , tab interval_TABLE_h);
CREATE TABLE t_table_056i_2 (id INT , tab interval_TABLE_i);
CREATE TABLE t_table_056j_2 (id INT , tab interval_TABLE_j);
CREATE TABLE t_table_056k_2 (id INT , tab interval_TABLE_k);
CREATE TABLE t_table_056l_2 (id INT , tab interval_TABLE_l);
CREATE TABLE t_table_056m_2 (id INT , tab interval_TABLE_m);

//插入数据
INSERT INTO t_table_056a_2 VALUES (1 , interval_TABLE_a('9'));
INSERT INTO t_table_056b_2 VALUES (1 , interval_TABLE_b('9'));
INSERT INTO t_table_056c_2 VALUES (1 , interval_TABLE_c('9'));
INSERT INTO t_table_056d_2 VALUES (1 , interval_TABLE_d('9'));
INSERT INTO t_table_056e_2 VALUES (1 , interval_TABLE_e('9'));
INSERT INTO t_table_056f_2 VALUES (1 , interval_TABLE_f('9'));
INSERT INTO t_table_056g_2 VALUES (1 , interval_TABLE_g('9'));
INSERT INTO t_table_056h_2 VALUES (1 , interval_TABLE_h('9'));
INSERT INTO t_table_056i_2 VALUES (1 , interval_TABLE_i('9'));
INSERT INTO t_table_056j_2 VALUES (1 , interval_TABLE_j('9'));
INSERT INTO t_table_056k_2 VALUES (1 , interval_TABLE_k('9'));
INSERT INTO t_table_056l_2 VALUES (1 , interval_TABLE_l('9'));
INSERT INTO t_table_056m_2 VALUES (1 , interval_TABLE_m('9'));

//查询内容
<预期结果 : [9-0]>
SELECT tab FROM t_table_056a_2 t;
<预期结果 : [0-9]>
SELECT tab FROM t_table_056b_2 t;
<预期结果 : [9 0:00:00]>
SELECT tab FROM t_table_056c_2 t;
<预期结果 : [9:00:00]>
SELECT tab FROM t_table_056d_2 t;
<预期结果 : [0:09:00]>
SELECT tab FROM t_table_056e_2 t;
<预期结果 : [0:00:09]>
SELECT tab FROM t_table_056f_2 t;
<预期结果 : [0-9]>
SELECT tab FROM t_table_056g_2 t;
<预期结果 : [9:00:00]>
SELECT tab FROM t_table_056h_2 t;
<预期结果 : [0:09:00]>
SELECT tab FROM t_table_056i_2 t;
<预期结果 : [0:00:09]>
SELECT tab FROM t_table_056j_2 t;
<预期结果 : [0:09:00]>
SELECT tab FROM t_table_056k_2 t;
<预期结果 : [0:00:09]>
SELECT tab FROM t_table_056l_2 t;
<预期结果 : [0:00:09]>
SELECT tab FROM t_table_056m_2 t;

//删除表
DROP TABLE t_table_056a_2;
DROP TABLE t_table_056b_2;
DROP TABLE t_table_056c_2;
DROP TABLE t_table_056d_2;
DROP TABLE t_table_056e_2;
DROP TABLE t_table_056f_2;
DROP TABLE t_table_056g_2;
DROP TABLE t_table_056h_2;
DROP TABLE t_table_056i_2;
DROP TABLE t_table_056j_2;
DROP TABLE t_table_056k_2;
DROP TABLE t_table_056l_2;
DROP TABLE t_table_056m_2;

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
CREATE TABLE t_table_056a_3 (id INT , c1 INTERVAL YEAR[]);
CREATE TABLE t_table_056b_3 (id INT , c1 INTERVAL MONTH[]);
CREATE TABLE t_table_056c_3 (id INT , c1 INTERVAL DAY[]);
CREATE TABLE t_table_056d_3 (id INT , c1 INTERVAL HOUR[]);
CREATE TABLE t_table_056e_3 (id INT , c1 INTERVAL MINUTE[]);
CREATE TABLE t_table_056f_3 (id INT , c1 INTERVAL SECOND[]);
CREATE TABLE t_table_056g_3 (id INT , c1 INTERVAL YEAR TO MONTH[]);
CREATE TABLE t_table_056h_3 (id INT , c1 INTERVAL DAY TO HOUR[]);
CREATE TABLE t_table_056i_3 (id INT , c1 INTERVAL DAY TO MINUTE[]);
CREATE TABLE t_table_056j_3 (id INT , c1 INTERVAL DAY TO SECOND[]);
CREATE TABLE t_table_056k_3 (id INT , c1 INTERVAL HOUR TO MINUTE[]);
CREATE TABLE t_table_056l_3 (id INT , c1 INTERVAL HOUR TO SECOND[]);
CREATE TABLE t_table_056m_3 (id INT , c1 INTERVAL MINUTE TO SECOND[]);

//插入数据
INSERT INTO t_table_056a_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056b_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056c_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056d_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056e_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056f_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056g_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056h_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056i_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056j_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056k_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056l_3 VALUES (1 , ARRAY['9']);
INSERT INTO t_table_056m_3 VALUES (1 , ARRAY['9']);

<预期结果 : {9-0}>
SELECT c1 FROM t_table_056a_3 t;
<预期结果 : {0-9}>
SELECT c1 FROM t_table_056b_3 t;
<预期结果 : {9 0:00:00}>
SELECT c1 FROM t_table_056c_3 t;
<预期结果 : {9:00:00}>
SELECT c1 FROM t_table_056d_3 t;
<预期结果 : {0:09:00}>
SELECT c1 FROM t_table_056e_3 t;
<预期结果 : {0:00:09}>
SELECT c1 FROM t_table_056f_3 t;
<预期结果 : {0-9}>
SELECT c1 FROM t_table_056g_3 t;
<预期结果 : {9:00:00}>
SELECT c1 FROM t_table_056h_3 t;
<预期结果 : {0:09:00}>
SELECT c1 FROM t_table_056i_3 t;
<预期结果 : {0:00:09}>
SELECT c1 FROM t_table_056j_3 t;
<预期结果 : {0:09:00}>
SELECT c1 FROM t_table_056k_3 t;
<预期结果 : {0:00:09}>
SELECT c1 FROM t_table_056l_3 t;
<预期结果 : {0:00:09}>
SELECT c1 FROM t_table_056m_3 t;

DROP TABLE t_table_056a_3;
DROP TABLE t_table_056b_3;
DROP TABLE t_table_056c_3;
DROP TABLE t_table_056d_3;
DROP TABLE t_table_056e_3;
DROP TABLE t_table_056f_3;
DROP TABLE t_table_056g_3;
DROP TABLE t_table_056h_3;
DROP TABLE t_table_056i_3;
DROP TABLE t_table_056j_3;
DROP TABLE t_table_056k_3;
DROP TABLE t_table_056l_3;
DROP TABLE t_table_056m_3;