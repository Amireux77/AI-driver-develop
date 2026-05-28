!|bind current ssh connect|remoteCon|

SHOW listen_port;

!|Set Parameter|Iport|<<pt|
	
SELECT node_id,CONCAT(CONCAT(REPLACE(TO_CHAR(REGEXP_SUBSTR(node_ip,'[^:]+',1,1)),'.60.','.66.'))) node_ip FROM sys_clusters LIMIT 1;

!|Set Parameter|lip|<<cluster_ip|

!|Set Parameter|lid|<<node_id|

CREATE DATABASE DB_DATATYPE;

USE DB_DATATYPE;

//创建表
CREATE TABLE t_intervaltype_a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_intervaltype_b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_intervaltype_c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_intervaltype_d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_intervaltype_e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_intervaltype_f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_intervaltype_g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_intervaltype_h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_intervaltype_i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_intervaltype_j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_intervaltype_k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_intervaltype_l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_intervaltype_m (id INT , c1 INTERVAL MINUTE TO SECOND);

USE SYSTEM;

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_a.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_a.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_a.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_a  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_a.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_b.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_b.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_b.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_b  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_b.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_c.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_c.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_c.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_c  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_c.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_d.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_d.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_d.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_d  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_d.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_e.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_e.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_e.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_e  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_e.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_f.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_f.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_f.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_f  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_f.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_g.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_g.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_g.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_g  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_g.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_h.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_h.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_h.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_h  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_h.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_i.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_i.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_i.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_i  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_i.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_j.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_j.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_j.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_j  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_j.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_k.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_k.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_k.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_k  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_k.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_l.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_l.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_l.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_l  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_l.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_m.txt
touch datafile=@xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_m.txt
echo '1|9' > @xgfit_file_path@xg_test_file/StreamDataV12.1/intervaltype_test_m.txt
exit;
-!|

!|Execute Ssh|!-
xgconsole -s nssl -h @lip@ -P @lport@ -d DB_INTERVALTYPE -u SYSDBA -p SYSDBA << EOF
tabldr table=t_intervaltype_m  datafile=@xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_m.txt     ft='|' rt=X'0a'  mode=APPEND imp_mode=0 parse_para=1 ins_para=1
exit;
EOF
-!|

!|Execute Ssh|!-
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_a.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_b.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_c.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_d.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_e.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_f.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_g.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_h.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_i.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_j.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_k.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_l.txt
rm -rf @xgfit_file_path@/xg_test_file/StreamDataV12.1/intervaltype_test_m.txt
exit;
-!|

!|Execute Ddl|!-USE DB_INTERVALTYPE;-!|

//结果查询
<预期结果 : 1 | 9-0>
SELECT * FROM t_intervaltype_a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_intervaltype_b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_intervaltype_c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_intervaltype_d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_intervaltype_e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_intervaltype_f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_intervaltype_g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_intervaltype_h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_intervaltype_i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_intervaltype_j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_intervaltype_k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_intervaltype_l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_intervaltype_m;

//删除测试表
USE DB_DATATYPE;
DROP TABLE t_intervaltype_a;
DROP TABLE t_intervaltype_b;
DROP TABLE t_intervaltype_c;
DROP TABLE t_intervaltype_d;
DROP TABLE t_intervaltype_e;
DROP TABLE t_intervaltype_f;
DROP TABLE t_intervaltype_g;
DROP TABLE t_intervaltype_h;
DROP TABLE t_intervaltype_i;
DROP TABLE t_intervaltype_j;
DROP TABLE t_intervaltype_k;
DROP TABLE t_intervaltype_l;
DROP TABLE t_intervaltype_m;

USE SYSTEM;

DROP DATABASE DB_DATATYPE;