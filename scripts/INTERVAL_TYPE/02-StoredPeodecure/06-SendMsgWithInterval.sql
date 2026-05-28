!4 XG-TYPE-INTERVAL-PROC-010 INTERVAL 打印 SEND_MSG
//创建 INTERVAL YEAR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_a(
p_interval_a IN INTERVAL YEAR , 
p_log_msg_a IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_a);
SEND_MSG('=====================================');
p_log_msg_a := p_log_msg_a || '打印测试完成';
SEND_MSG(p_log_msg_a);
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_msg_a VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_a('9' , v_msg_a);
END;
/

//创建 INTERVAL MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_b(
p_interval_b IN INTERVAL MONTH , 
p_log_msg_b IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_b);
SEND_MSG('=====================================');
p_log_msg_b := p_log_msg_b || '打印测试完成';
SEND_MSG(p_log_msg_b);
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_msg_b VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_b('9' , v_msg_b);
END;
/

//创建 INTERVAL DAY 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_c(
p_interval_c IN INTERVAL DAY , 
p_log_msg_c IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_c);
SEND_MSG('=====================================');
p_log_msg_c := p_log_msg_c || '打印测试完成';
SEND_MSG(p_log_msg_c);
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_msg_c VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_c('9' , v_msg_c);
END;
/

//创建 INTERVAL HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_d(
p_interval_d IN INTERVAL HOUR , 
p_log_msg_d IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_d);
SEND_MSG('=====================================');
p_log_msg_d := p_log_msg_d || '打印测试完成';
SEND_MSG(p_log_msg_d);
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_msg_d VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_d('9' , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_e(
p_interval_e IN INTERVAL MINUTE , 
p_log_msg_e IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_e);
SEND_MSG('=====================================');
p_log_msg_e := p_log_msg_e || '打印测试完成';
SEND_MSG(p_log_msg_e);
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_msg_e VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_e('9' , v_msg_e);
END;
/

//创建 INTERVAL SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_f(
p_interval_f IN INTERVAL SECOND , 
p_log_msg_f IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_f);
SEND_MSG('=====================================');
p_log_msg_f := p_log_msg_f || '打印测试完成';
SEND_MSG(p_log_msg_f);
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_msg_f VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_f('9' , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_g(
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_log_msg_g IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_g);
SEND_MSG('=====================================');
p_log_msg_g := p_log_msg_g || '打印测试完成';
SEND_MSG(p_log_msg_g);
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_msg_g VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_g('9' , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_h(
p_interval_h IN INTERVAL DAY TO HOUR , 
p_log_msg_h IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_h);
SEND_MSG('=====================================');
p_log_msg_h := p_log_msg_h || '打印测试完成';
SEND_MSG(p_log_msg_h);
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_msg_h VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_h('9' , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_i(
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_log_msg_i IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_i);
SEND_MSG('=====================================');
p_log_msg_i := p_log_msg_i || '打印测试完成';
SEND_MSG(p_log_msg_i);
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_msg_i VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_i('9' , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_j(
p_interval_j IN INTERVAL DAY TO SECOND , 
p_log_msg_j IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_j);
SEND_MSG('=====================================');
p_log_msg_j := p_log_msg_j || '打印测试完成';
SEND_MSG(p_log_msg_j);
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_msg_j VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_j('9' , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_k(
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_log_msg_k IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_k);
SEND_MSG('=====================================');
p_log_msg_k := p_log_msg_k || '打印测试完成';
SEND_MSG(p_log_msg_k);
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_msg_k VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_k('9' , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_l(
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_log_msg_l IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_l);
SEND_MSG('=====================================');
p_log_msg_l := p_log_msg_l || '打印测试完成';
SEND_MSG(p_log_msg_l);
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_msg_l VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_l('9' , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 存储过程
CREATE OR REPLACE PROCEDURE p_interval_print_m(
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_log_msg_m IN OUT VARCHAR
) AS
BEGIN
SEND_MSG('========== INTERVAL 打印测试 ==========');
SEND_MSG('输入参数 : ' || p_interval_m);
SEND_MSG('=====================================');
p_log_msg_m := p_log_msg_m || '打印测试完成';
SEND_MSG(p_log_msg_m);
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_msg_m VARCHAR(100) := 'INTERVAL_PRINT_TEST';
BEGIN
p_interval_print_m('9' , v_msg_m);
END;
/

//删除存储过程
DROP PROCEDURE p_interval_print_a;
DROP PROCEDURE p_interval_print_b;
DROP PROCEDURE p_interval_print_c;
DROP PROCEDURE p_interval_print_d;
DROP PROCEDURE p_interval_print_e;
DROP PROCEDURE p_interval_print_f;
DROP PROCEDURE p_interval_print_g;
DROP PROCEDURE p_interval_print_h;
DROP PROCEDURE p_interval_print_i;
DROP PROCEDURE p_interval_print_j;
DROP PROCEDURE p_interval_print_k;
DROP PROCEDURE p_interval_print_l;
DROP PROCEDURE p_interval_print_m;
