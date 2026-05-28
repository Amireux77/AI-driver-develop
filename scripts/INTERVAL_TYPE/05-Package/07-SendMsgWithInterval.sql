!4 XG-TYPE-INTERVAL-PKG-010 INTERVAL 打印 SEND_MSG

//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_a AS
PROCEDURE p_print_time_a(p_interval_a IN INTERVAL YEAR ,  p_log_a IN OUT VARCHAR);
END pkg_interval_print_a;
/

//创建 INTERVAL YEAR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_a AS
PROCEDURE p_print_time_a(p_interval_a IN INTERVAL YEAR ,  p_log_a IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL YEAR 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_a);
SEND_MSG('===================================');
p_log_a := p_log_a || ' INTERVAL YEAR 打印完成';
SEND_MSG(p_log_a);
END p_print_time_a;
END pkg_interval_print_a;
/

//测试 INTERVAL YEAR SEND 打印
DECLARE
v_msg_a VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_a.p_print_time_a('9' ,  v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_b AS
PROCEDURE p_print_time_b(p_interval_b IN INTERVAL MONTH ,  p_log_b IN OUT VARCHAR);
END pkg_interval_print_b;
/

//创建 INTERVAL MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_b AS
PROCEDURE p_print_time_b(p_interval_b IN INTERVAL MONTH ,  p_log_b IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL MONTH 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_b);
SEND_MSG('===================================');
p_log_b := p_log_b || ' INTERVAL MONTH 打印完成';
SEND_MSG(p_log_b);
END p_print_time_b;
END pkg_interval_print_b;
/

//测试 INTERVAL MONTH SEND 打印
DECLARE
v_msg_b VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_b.p_print_time_b('9' ,  v_msg_b);
END;


//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_c AS
PROCEDURE p_print_time_c(p_interval_c IN INTERVAL DAY ,  p_log_c IN OUT VARCHAR);
END pkg_interval_print_c;
/

//创建 INTERVAL DAY 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_c AS
PROCEDURE p_print_time_c(p_interval_c IN INTERVAL DAY ,  p_log_c IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL DAY 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_c);
SEND_MSG('===================================');
p_log_c := p_log_c || ' INTERVAL DAY 打印完成';
SEND_MSG(p_log_c);
END p_print_time_c;
END pkg_interval_print_c;
/

//测试 INTERVAL DAY SEND 打印
DECLARE
v_msg_c VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_c.p_print_time_c('9' ,  v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_d AS
PROCEDURE p_print_time_d(p_interval_d IN INTERVAL HOUR ,  p_log_d IN OUT VARCHAR);
END pkg_interval_print_d;
/

//创建 INTERVAL HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_d AS
PROCEDURE p_print_time_d(p_interval_d IN INTERVAL HOUR ,  p_log_d IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL HOUR 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_d);
SEND_MSG('===================================');
p_log_d := p_log_d || ' INTERVAL HOUR 打印完成';
SEND_MSG(p_log_d);
END p_print_time_d;
END pkg_interval_print_d;
/

//测试 INTERVAL HOUR SEND 打印
DECLARE
v_msg_d VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_d.p_print_time_d('9' ,  v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_e AS
PROCEDURE p_print_time_e(p_interval_e IN INTERVAL MINUTE ,  p_log_e IN OUT VARCHAR);
END pkg_interval_print_e;
/

//创建 INTERVAL MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_e AS
PROCEDURE p_print_time_e(p_interval_e IN INTERVAL MINUTE ,  p_log_e IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL MINUTE 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_e);
SEND_MSG('===================================');
p_log_e := p_log_e || ' INTERVAL MINUTE 打印完成';
SEND_MSG(p_log_e);
END p_print_time_e;
END pkg_interval_print_e;
/

//测试 INTERVAL MINUTE SEND 打印
DECLARE
v_msg_e VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_e.p_print_time_e('9' ,  v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_f AS
PROCEDURE p_print_time_f(p_interval_f IN INTERVAL SECOND ,  p_log_f IN OUT VARCHAR);
END pkg_interval_print_f;
/

//创建 INTERVAL SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_f AS
PROCEDURE p_print_time_f(p_interval_f IN INTERVAL SECOND ,  p_log_f IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL SECOND 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_f);
SEND_MSG('===================================');
p_log_f := p_log_f || ' INTERVAL SECOND 打印完成';
SEND_MSG(p_log_f);
END p_print_time_f;
END pkg_interval_print_f;
/

//测试 INTERVAL SECOND SEND 打印
DECLARE
v_msg_f VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_f.p_print_time_f('9' ,  v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_g AS
PROCEDURE p_print_time_g(p_interval_g IN INTERVAL YEAR TO MONTH ,  p_log_g IN OUT VARCHAR);
END pkg_interval_print_g;
/

//创建 INTERVAL YEAR TO MONTH 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_g AS
PROCEDURE p_print_time_g(p_interval_g IN INTERVAL YEAR TO MONTH ,  p_log_g IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL YEAR TO MONTH 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_g);
SEND_MSG('===================================');
p_log_g := p_log_g || ' INTERVAL YEAR TO MONTH 打印完成';
SEND_MSG(p_log_g);
END p_print_time_g;
END pkg_interval_print_g;
/

//测试 INTERVAL YEAR TO MONTH SEND 打印
DECLARE
v_msg_g VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_g.p_print_time_g('9' ,  v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_h AS
PROCEDURE p_print_time_h(p_interval_h IN INTERVAL DAY TO HOUR ,  p_log_h IN OUT VARCHAR);
END pkg_interval_print_h;
/

//创建 INTERVAL DAY TO HOUR 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_h AS
PROCEDURE p_print_time_h(p_interval_h IN INTERVAL DAY TO HOUR ,  p_log_h IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL DAY TO HOUR 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_h);
SEND_MSG('===================================');
p_log_h := p_log_h || ' INTERVAL DAY TO HOUR 打印完成';
SEND_MSG(p_log_h);
END p_print_time_h;
END pkg_interval_print_h;
/

//测试 INTERVAL DAY TO HOUR SEND 打印
DECLARE
v_msg_h VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_h.p_print_time_h('9' ,  v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_i AS
PROCEDURE p_print_time_i(p_interval_i IN INTERVAL DAY TO MINUTE ,  p_log_i IN OUT VARCHAR);
END pkg_interval_print_i;
/

//创建 INTERVAL DAY TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_i AS
PROCEDURE p_print_time_i(p_interval_i IN INTERVAL DAY TO MINUTE ,  p_log_i IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL DAY TO MINUTE 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_i);
SEND_MSG('===================================');
p_log_i := p_log_i || ' INTERVAL DAY TO MINUTE 打印完成';
SEND_MSG(p_log_i);
END p_print_time_i;
END pkg_interval_print_i;
/

//测试 INTERVAL DAY TO MINUTE SEND 打印
DECLARE
v_msg_i VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_i.p_print_time_i('9' ,  v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_j AS
PROCEDURE p_print_time_j(p_interval_j IN INTERVAL DAY TO SECOND ,  p_log_j IN OUT VARCHAR);
END pkg_interval_print_j;
/

//创建 INTERVAL DAY TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_j AS
PROCEDURE p_print_time_j(p_interval_j IN INTERVAL DAY TO SECOND ,  p_log_j IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL DAY TO SECOND 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_j);
SEND_MSG('===================================');
p_log_j := p_log_j || ' INTERVAL DAY TO SECOND 打印完成';
SEND_MSG(p_log_j);
END p_print_time_j;
END pkg_interval_print_j;
/

//测试 INTERVAL DAY TO SECOND SEND 打印
DECLARE
v_msg_j VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_j.p_print_time_j('9' ,  v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_k AS
PROCEDURE p_print_time_k(p_interval_k IN INTERVAL HOUR TO MINUTE ,  p_log_k IN OUT VARCHAR);
END pkg_interval_print_k;
/

//创建 INTERVAL HOUR TO MINUTE 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_k AS
PROCEDURE p_print_time_k(p_interval_k IN INTERVAL HOUR TO MINUTE ,  p_log_k IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL HOUR TO MINUTE 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_k);
SEND_MSG('===================================');
p_log_k := p_log_k || ' INTERVAL HOUR TO MINUTE 打印完成';
SEND_MSG(p_log_k);
END p_print_time_k;
END pkg_interval_print_k;
/

//测试 INTERVAL HOUR TO MINUTE SEND 打印
DECLARE
v_msg_k VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_k.p_print_time_k('9' ,  v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_l AS
PROCEDURE p_print_time_l(p_interval_l IN INTERVAL HOUR TO SECOND ,  p_log_l IN OUT VARCHAR);
END pkg_interval_print_l;
/

//创建 INTERVAL HOUR TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_l AS
PROCEDURE p_print_time_l(p_interval_l IN INTERVAL HOUR TO SECOND ,  p_log_l IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL HOUR TO SECOND 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_l);
SEND_MSG('===================================');
p_log_l := p_log_l || ' INTERVAL HOUR TO SECOND 打印完成';
SEND_MSG(p_log_l);
END p_print_time_l;
END pkg_interval_print_l;
/

//测试 INTERVAL HOUR TO SECOND SEND 打印
DECLARE
v_msg_l VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_l.p_print_time_l('9' ,  v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_print_m AS
PROCEDURE p_print_time_m(p_interval_m IN INTERVAL MINUTE TO SECOND ,  p_log_m IN OUT VARCHAR);
END pkg_interval_print_m;
/

//创建 INTERVAL MINUTE TO SECOND 类型包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_print_m AS
PROCEDURE p_print_time_m(p_interval_m IN INTERVAL MINUTE TO SECOND ,  p_log_m IN OUT VARCHAR) AS
BEGIN
SEND_MSG('========== INTERVAL MINUTE TO SECOND 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_m);
SEND_MSG('===================================');
p_log_m := p_log_m || ' INTERVAL MINUTE TO SECOND 打印完成';
SEND_MSG(p_log_m);
END p_print_time_m;
END pkg_interval_print_m;
/

//测试 INTERVAL MINUTE TO SECOND SEND 打印
DECLARE
v_msg_m VARCHAR(100) := 'TIME_PRINT';
BEGIN
pkg_interval_print_m.p_print_time_m('9' ,  v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_print_a;
DROP PACKAGE pkg_interval_print_b;
DROP PACKAGE pkg_interval_print_c;
DROP PACKAGE pkg_interval_print_d;
DROP PACKAGE pkg_interval_print_e;
DROP PACKAGE pkg_interval_print_f;
DROP PACKAGE pkg_interval_print_g;
DROP PACKAGE pkg_interval_print_h;
DROP PACKAGE pkg_interval_print_i;
DROP PACKAGE pkg_interval_print_j;
DROP PACKAGE pkg_interval_print_k;
DROP PACKAGE pkg_interval_print_l;
DROP PACKAGE pkg_interval_print_m;