!4 XG-TYPE-INTERVAL-PROC-001 INTERVAL 作为 IN , OUT 参数
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

//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_a(
p_count INTEGER , 
p_interval_in_a IN INTERVAL YEAR , 
p_interval_out_a OUT INTERVAL YEAR , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_a INTERVAL YEAR;
BEGIN
x := 0;
v_interval_a := p_interval_in_a;
INSERT INTO t_table_001a VALUES (1 , v_interval_a);
x := x + SQL%ROWCOUNT;
p_interval_out_a := v_interval_a;
v_interval_a := v_interval_a +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_interval_out_a INTERVAL YEAR;
v_io_msg VARCHAR(200) := 'INTERVAL YEAR';
BEGIN
proc_interval_full_test_a(
1 , 
'9-0' , 
v_interval_out_a , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL YEAR 值 : ' || TO_CHAR(v_interval_out_a::INTERVAL YEAR));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_b(
p_count INTEGER , 
p_interval_in_b IN INTERVAL MONTH , 
p_interval_out_b OUT INTERVAL MONTH , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_b INTERVAL MONTH;
BEGIN
x := 0;
v_interval_b := p_interval_in_b;
INSERT INTO t_table_001b VALUES (1 , v_interval_b);
x := x + SQL%ROWCOUNT;
p_interval_out_b := v_interval_b;
v_interval_b := v_interval_b +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_interval_out_b INTERVAL MONTH;
v_io_msg VARCHAR(200) := 'INTERVAL MONTH';
BEGIN
proc_interval_full_test_b(
1 , 
'0-9' , 
v_interval_out_b , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL MONTH 值 : ' || TO_CHAR(v_interval_out_b::INTERVAL MONTH));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_c(
p_count INTEGER , 
p_interval_in_c IN INTERVAL DAY , 
p_interval_out_c OUT INTERVAL DAY , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_c INTERVAL DAY;
BEGIN
x := 0;
v_interval_c := p_interval_in_c;
INSERT INTO t_table_001c VALUES (1 , v_interval_c);
x := x + SQL%ROWCOUNT;
p_interval_out_c := v_interval_c;
v_interval_c := v_interval_c +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_interval_out_c INTERVAL DAY;
v_io_msg VARCHAR(200) := 'INTERVAL DAY';
BEGIN
proc_interval_full_test_c(
1 , 
'9 0:00:00' , 
v_interval_out_c , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL DAY 值 : ' || TO_CHAR(v_interval_out_c::INTERVAL DAY));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_d(
p_count INTEGER , 
p_interval_in_d IN INTERVAL HOUR , 
p_interval_out_d OUT INTERVAL HOUR , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_d INTERVAL HOUR;
BEGIN
x := 0;
v_interval_d := p_interval_in_d;
INSERT INTO t_table_001d VALUES (1 , v_interval_d);
x := x + SQL%ROWCOUNT;
p_interval_out_d := v_interval_d;
v_interval_d := v_interval_d +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_interval_out_d INTERVAL HOUR;
v_io_msg VARCHAR(200) := 'INTERVAL HOUR';
BEGIN
proc_interval_full_test_d(
1 , 
'9:00:00' , 
v_interval_out_d , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL HOUR 值 : ' || TO_CHAR(v_interval_out_d::INTERVAL HOUR));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_e(
p_count INTEGER , 
p_interval_in_e IN INTERVAL MINUTE , 
p_interval_out_e OUT INTERVAL MINUTE , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_e INTERVAL MINUTE;
BEGIN
x := 0;
v_interval_e := p_interval_in_e;
INSERT INTO t_table_001e VALUES (1 , v_interval_e);
x := x + SQL%ROWCOUNT;
p_interval_out_e := v_interval_e;
v_interval_e := v_interval_e +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_interval_out_e INTERVAL MINUTE;
v_io_msg VARCHAR(200) := 'INTERVAL MINUTE';
BEGIN
proc_interval_full_test_e(
1 , 
'0:09:00' , 
v_interval_out_e , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL MINUTE 值 : ' || TO_CHAR(v_interval_out_e::INTERVAL MINUTE));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_f(
p_count INTEGER , 
p_interval_in_f IN INTERVAL SECOND , 
p_interval_out_f OUT INTERVAL SECOND , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_f INTERVAL SECOND;
BEGIN
x := 0;
v_interval_f := p_interval_in_f;
INSERT INTO t_table_001f VALUES (1 , v_interval_f);
x := x + SQL%ROWCOUNT;
p_interval_out_f := v_interval_f;
v_interval_f := v_interval_f +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_interval_out_f INTERVAL SECOND;
v_io_msg VARCHAR(200) := 'INTERVAL SECOND';
BEGIN
proc_interval_full_test_f(
1 , 
'0:00:09' , 
v_interval_out_f , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL SECOND 值 : ' || TO_CHAR(v_interval_out_f::INTERVAL SECOND));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_g(
p_count INTEGER , 
p_interval_in_g IN INTERVAL YEAR TO MONTH , 
p_interval_out_g OUT INTERVAL YEAR TO MONTH , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_g INTERVAL YEAR TO MONTH;
BEGIN
x := 0;
v_interval_g := p_interval_in_g;
INSERT INTO t_table_001g VALUES (1 , v_interval_g);
x := x + SQL%ROWCOUNT;
p_interval_out_g := v_interval_g;
v_interval_g := v_interval_g +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_interval_out_g INTERVAL YEAR TO MONTH;
v_io_msg VARCHAR(200) := 'INTERVAL YEAR TO MONTH';
BEGIN
proc_interval_full_test_g(
1 , 
'0-9' , 
v_interval_out_g , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL YEAR TO MONTH 值 : ' || TO_CHAR(v_interval_out_g::INTERVAL YEAR TO MONTH));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_h(
p_count INTEGER , 
p_interval_in_h IN INTERVAL DAY TO HOUR , 
p_interval_out_h OUT INTERVAL DAY TO HOUR , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_h INTERVAL DAY TO HOUR;
BEGIN
x := 0;
v_interval_h := p_interval_in_h;
INSERT INTO t_table_001h VALUES (1 , v_interval_h);
x := x + SQL%ROWCOUNT;
p_interval_out_h := v_interval_h;
v_interval_h := v_interval_h +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_interval_out_h INTERVAL DAY TO HOUR;
v_io_msg VARCHAR(200) := 'INTERVAL DAY TO HOUR';
BEGIN
proc_interval_full_test_h(
1 , 
'9:00:00' , 
v_interval_out_h , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL DAY TO HOUR 值 : ' || TO_CHAR(v_interval_out_h::INTERVAL DAY TO HOUR));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_i(
p_count INTEGER , 
p_interval_in_i IN INTERVAL DAY TO MINUTE , 
p_interval_out_i OUT INTERVAL DAY TO MINUTE , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_i INTERVAL DAY TO MINUTE;
BEGIN
x := 0;
v_interval_i := p_interval_in_i;
INSERT INTO t_table_001i VALUES (1 , v_interval_i);
x := x + SQL%ROWCOUNT;
p_interval_out_i := v_interval_i;
v_interval_i := v_interval_i +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_interval_out_i INTERVAL DAY TO MINUTE;
v_io_msg VARCHAR(200) := 'INTERVAL DAY TO MINUTE';
BEGIN
proc_interval_full_test_i(
1 , 
'0:09:00' , 
v_interval_out_i , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL DAY TO MINUTE 值 : ' || TO_CHAR(v_interval_out_i::INTERVAL DAY TO MINUTE));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_j(
p_count INTEGER , 
p_interval_in_j IN INTERVAL DAY TO SECOND , 
p_interval_out_j OUT INTERVAL DAY TO SECOND , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_j INTERVAL DAY TO SECOND;
BEGIN
x := 0;
v_interval_j := p_interval_in_j;
INSERT INTO t_table_001j VALUES (1 , v_interval_j);
x := x + SQL%ROWCOUNT;
p_interval_out_j := v_interval_j;
v_interval_j := v_interval_j +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_interval_out_j INTERVAL DAY TO SECOND;
v_io_msg VARCHAR(200) := 'INTERVAL DAY TO SECOND';
BEGIN
proc_interval_full_test_j(
1 , 
'0:00:09' , 
v_interval_out_j , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL DAY TO SECOND 值 : ' || TO_CHAR(v_interval_out_j::INTERVAL DAY TO SECOND));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_k(
p_count INTEGER , 
p_interval_in_k IN INTERVAL HOUR TO MINUTE , 
p_interval_out_k OUT INTERVAL HOUR TO MINUTE , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_k INTERVAL HOUR TO MINUTE;
BEGIN
x := 0;
v_interval_k := p_interval_in_k;
INSERT INTO t_table_001k VALUES (1 , v_interval_k);
x := x + SQL%ROWCOUNT;
p_interval_out_k := v_interval_k;
v_interval_k := v_interval_k +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_interval_out_k INTERVAL HOUR TO MINUTE;
v_io_msg VARCHAR(200) := 'INTERVAL HOUR TO MINUTE';
BEGIN
proc_interval_full_test_k(
1 , 
'0:09:00' , 
v_interval_out_k , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL HOUR TO MINUTE 值 : ' || TO_CHAR(v_interval_out_k::INTERVAL HOUR TO MINUTE));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_l(
p_count INTEGER , 
p_interval_in_l IN INTERVAL HOUR TO SECOND , 
p_interval_out_l OUT INTERVAL HOUR TO SECOND , 
p_log_msg IN OUT VARCHAR
) AS
x INT;
v_interval_l INTERVAL HOUR TO SECOND;
BEGIN
x := 0;
v_interval_l := p_interval_in_l;
INSERT INTO t_table_001l VALUES (1 , v_interval_l);
x := x + SQL%ROWCOUNT;
p_interval_out_l := v_interval_l;
v_interval_l := v_interval_l +'1';
p_log_msg := p_log_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_log_msg);
COMMIT;
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_interval_out_l INTERVAL HOUR TO SECOND;
v_io_msg VARCHAR(200) := 'INTERVAL HOUR TO SECOND';
BEGIN
proc_interval_full_test_l(
1 , 
'0:00:09' , 
v_interval_out_l , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL HOUR TO SECOND 值 : ' || TO_CHAR(v_interval_out_l::INTERVAL HOUR TO SECOND));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE proc_interval_full_test_m(
p_count INTEGER , 
p_interval_in_m IN INTERVAL MINUTE TO SECOND , 
p_interval_out_m OUT INTERVAL MINUTE TO SECOND , 
p_mog_msg IN OUT VARCHAR
) AS
x INT;
v_interval_m INTERVAL MINUTE TO SECOND;
BEGIN
x := 0;
v_interval_m := p_interval_in_m;
INSERT INTO t_table_001m VALUES (1 , v_interval_m);
x := x + SQL%ROWCOUNT;
p_interval_out_m := v_interval_m;
v_interval_m := v_interval_m +'1';
p_mog_msg := p_mog_msg || ' 执行成功 , 共插入 : ' || x || '条';
SEND_MSG(p_mog_msg);
COMMIT;
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_interval_out_m INTERVAL MINUTE TO SECOND;
v_io_msg VARCHAR(200) := 'INTERVAL MINUTE TO SECOND';
BEGIN
proc_interval_full_test_m(
1 , 
'0:00:09' , 
v_interval_out_m , 
v_io_msg
);
SEND_MSG('OUT_INTERVAL MINUTE TO SECOND 值 : ' || TO_CHAR(v_interval_out_m::INTERVAL MINUTE TO SECOND));
SEND_MSG('IN OUT 参数返回消息 : ' || v_io_msg);
END;
/

//删除存储过程
DROP PROCEDURE proc_interval_full_test_a;
DROP PROCEDURE proc_interval_full_test_b;
DROP PROCEDURE proc_interval_full_test_c;
DROP PROCEDURE proc_interval_full_test_d;
DROP PROCEDURE proc_interval_full_test_e;
DROP PROCEDURE proc_interval_full_test_f;
DROP PROCEDURE proc_interval_full_test_g;
DROP PROCEDURE proc_interval_full_test_h;
DROP PROCEDURE proc_interval_full_test_i;
DROP PROCEDURE proc_interval_full_test_j;
DROP PROCEDURE proc_interval_full_test_k;
DROP PROCEDURE proc_interval_full_test_l;
DROP PROCEDURE proc_interval_full_test_m;

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

!4 XG-TYPE-INTERVAL-PROC-002 INTERVAL 作为 IN OUT 参数
//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_a(
p_interval_a IN OUT INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
BEGIN
p_interval_a := '9-0';
p_log_msg_a := p_log_msg_a || ' : INTERVAL YEAR 已覆盖';
SEND_MSG(p_log_msg_a);
END;
/

//执行存储过程
DECLARE
v_interval_a INTERVAL YEAR := '6-0';
v_msg_a VARCHAR(100) := 'INTERVAL YEAR_INOUT_TEST';
BEGIN
proc_interval_inout_test_a(v_interval_a , v_msg_a);
SEND_MSG('IN OUT_INTERVAL YEAR 返回值 : ' || CAST(v_interval_a AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_b(
p_interval_b IN OUT INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
BEGIN
p_interval_b := '0-9';
p_log_msg_b := p_log_msg_b || ' : INTERVAL MONTH 已覆盖';
SEND_MSG(p_log_msg_b);
END;
/

//执行存储过程
DECLARE
v_interval_b INTERVAL MONTH := '0-6';
v_msg_b VARCHAR(100) := 'INTERVAL MONTH_INOUT_TEST';
BEGIN
proc_interval_inout_test_b(v_interval_b , v_msg_b);
SEND_MSG('IN OUT_INTERVAL MONTH 返回值 : ' || CAST(v_interval_b AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_c(
p_interval_c IN OUT INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
BEGIN
p_interval_c := '9 0:00:00';
p_log_msg_c := p_log_msg_c || ' : INTERVAL DAY 已覆盖';
SEND_MSG(p_log_msg_c);
END;
/

//执行存储过程
DECLARE
v_interval_c INTERVAL DAY := '6 0:00:00';
v_msg_c VARCHAR(100) := 'INTERVAL DAY_INOUT_TEST';
BEGIN
proc_interval_inout_test_c(v_interval_c , v_msg_c);
SEND_MSG('IN OUT_INTERVAL DAY 返回值 : ' || CAST(v_interval_c AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_d(
p_interval_d IN OUT INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
BEGIN
p_interval_d := '9:00:00';
p_log_msg_d := p_log_msg_d || ' : INTERVAL HOUR 已覆盖';
SEND_MSG(p_log_msg_d);
END;
/

//执行存储过程
DECLARE
v_interval_d INTERVAL HOUR := '6:00:00';
v_msg_d VARCHAR(100) := 'INTERVAL HOUR_INOUT_TEST';
BEGIN
proc_interval_inout_test_d(v_interval_d , v_msg_d);
SEND_MSG('IN OUT_INTERVAL HOUR 返回值 : ' || CAST(v_interval_d AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_e(
p_interval_e IN OUT INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
BEGIN
p_interval_e := '0:09:00';
p_log_msg_e := p_log_msg_e || ' : INTERVAL MINUTE 已覆盖';
SEND_MSG(p_log_msg_e);
END;
/

//执行存储过程
DECLARE
v_interval_e INTERVAL MINUTE := '0:06:00';
v_msg_e VARCHAR(100) := 'INTERVAL MINUTE_INOUT_TEST';
BEGIN
proc_interval_inout_test_e(v_interval_e , v_msg_e);
SEND_MSG('IN OUT_INTERVAL MINUTE 返回值 : ' || CAST(v_interval_e AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_f(
p_interval_f IN OUT INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
BEGIN
p_interval_f := '0:00:09';
p_log_msg_f := p_log_msg_f || ' : INTERVAL SECOND 已覆盖';
SEND_MSG(p_log_msg_f);
END;
/

//执行存储过程
DECLARE
v_interval_f INTERVAL SECOND := '0:00:06';
v_msg_f VARCHAR(100) := 'INTERVAL SECOND_INOUT_TEST';
BEGIN
proc_interval_inout_test_f(v_interval_f , v_msg_f);
SEND_MSG('IN OUT_INTERVAL SECOND 返回值 : ' || CAST(v_interval_f AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_g(
p_interval_g IN OUT INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
BEGIN
p_interval_g := '0-9';
p_log_msg_g := p_log_msg_g || ' : INTERVAL YEAR TO MONTH 已覆盖';
SEND_MSG(p_log_msg_g);
END;
/

//执行存储过程
DECLARE
v_interval_g INTERVAL YEAR TO MONTH := '0-6';
v_msg_g VARCHAR(100) := 'INTERVAL YEAR TO MONTH_INOUT_TEST';
BEGIN
proc_interval_inout_test_g(v_interval_g , v_msg_g);
SEND_MSG('IN OUT_INTERVAL YEAR TO MONTH 返回值 : ' || CAST(v_interval_g AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_h(
p_interval_h IN OUT INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
BEGIN
p_interval_h := '9:00:00';
p_log_msg_h := p_log_msg_h || ' : INTERVAL DAY TO HOUR 已覆盖';
SEND_MSG(p_log_msg_h);
END;
/

//执行存储过程
DECLARE
v_interval_h INTERVAL DAY TO HOUR := '6:00:00';
v_msg_h VARCHAR(100) := 'INTERVAL DAY TO HOUR_INOUT_TEST';
BEGIN
proc_interval_inout_test_h(v_interval_h , v_msg_h);
SEND_MSG('IN OUT_INTERVAL DAY TO HOUR 返回值 : ' || CAST(v_interval_h AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_i(
p_interval_i IN OUT INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
BEGIN
p_interval_i := '0:09:00';
p_log_msg_i := p_log_msg_i || ' : INTERVAL DAY TO MINUTE 已覆盖';
SEND_MSG(p_log_msg_i);
END;
/

//执行存储过程
DECLARE
v_interval_i INTERVAL DAY TO MINUTE := '0:06:00';
v_msg_i VARCHAR(100) := 'INTERVAL DAY TO MINUTE_INOUT_TEST';
BEGIN
proc_interval_inout_test_i(v_interval_i , v_msg_i);
SEND_MSG('IN OUT_INTERVAL DAY TO MINUTE 返回值 : ' || CAST(v_interval_i AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_j(
p_interval_j IN OUT INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
BEGIN
p_interval_j := '0:00:09';
p_log_msg_j := p_log_msg_j || ' : INTERVAL DAY TO SECOND 已覆盖';
SEND_MSG(p_log_msg_j);
END;
/

//执行存储过程
DECLARE
v_interval_j INTERVAL DAY TO SECOND := '0:00:06';
v_msg_j VARCHAR(100) := 'INTERVAL DAY TO SECOND_INOUT_TEST';
BEGIN
proc_interval_inout_test_j(v_interval_j , v_msg_j);
SEND_MSG('IN OUT_INTERVAL DAY TO SECOND 返回值 : ' || CAST(v_interval_j AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_k(
p_interval_k IN OUT INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
BEGIN
p_interval_k := '0:09:00';
p_log_msg_k := p_log_msg_k || ' : INTERVAL HOUR TO MINUTE 已覆盖';
SEND_MSG(p_log_msg_k);
END;
/

//执行存储过程
DECLARE
v_interval_k INTERVAL HOUR TO MINUTE := '0:06:00';
v_msg_k VARCHAR(100) := 'INTERVAL HOUR TO MINUTE_INOUT_TEST';
BEGIN
proc_interval_inout_test_k(v_interval_k , v_msg_k);
SEND_MSG('IN OUT_INTERVAL HOUR TO MINUTE 返回值 : ' || CAST(v_interval_k AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_l(
p_interval_l IN OUT INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
BEGIN
p_interval_l := '0:00:09';
p_log_msg_l := p_log_msg_l || ' : INTERVAL HOUR TO SECOND 已覆盖';
SEND_MSG(p_log_msg_l);
END;
/

//执行存储过程
DECLARE
v_interval_l INTERVAL HOUR TO SECOND := '0:00:06';
v_msg_l VARCHAR(100) := 'INTERVAL HOUR TO SECOND_INOUT_TEST';
BEGIN
proc_interval_inout_test_l(v_interval_l , v_msg_l);
SEND_MSG('IN OUT_INTERVAL HOUR TO SECOND 返回值 : ' || CAST(v_interval_l AS VARCHAR));
END;
/ 

//创建存储过程
CREATE OR REPLACE PROCEDURE proc_interval_inout_test_m(
p_interval_m IN OUT INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
BEGIN
p_interval_m := '0:00:09';
p_log_msg_m := p_log_msg_m || ' : INTERVAL MINUTE TO SECOND 已覆盖';
SEND_MSG(p_log_msg_m);
END;
/

//执行存储过程
DECLARE
v_interval_m INTERVAL MINUTE TO SECOND := '0:00:06';
v_msg_m VARCHAR(100) := 'INTERVAL MINUTE TO SECOND_INOUT_TEST';
BEGIN
proc_interval_inout_test_m(v_interval_m , v_msg_m);
SEND_MSG('IN OUT_INTERVAL MINUTE TO SECOND 返回值 : ' || CAST(v_interval_m AS VARCHAR));
END;
/ 

//删除存储过程
DROP PROCEDURE proc_interval_inout_test_a;
DROP PROCEDURE proc_interval_inout_test_b;
DROP PROCEDURE proc_interval_inout_test_c;
DROP PROCEDURE proc_interval_inout_test_d;
DROP PROCEDURE proc_interval_inout_test_e;
DROP PROCEDURE proc_interval_inout_test_f;
DROP PROCEDURE proc_interval_inout_test_g;
DROP PROCEDURE proc_interval_inout_test_h;
DROP PROCEDURE proc_interval_inout_test_i;
DROP PROCEDURE proc_interval_inout_test_j;
DROP PROCEDURE proc_interval_inout_test_k;
DROP PROCEDURE proc_interval_inout_test_l;
DROP PROCEDURE proc_interval_inout_test_m;