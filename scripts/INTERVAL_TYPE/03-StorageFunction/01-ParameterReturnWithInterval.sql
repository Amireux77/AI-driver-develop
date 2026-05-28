!4 XG-TYPE-INTERVAL-FUNC-001 INTERVAL IN 参数传入与 RETURN 返回

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_a(
f_in_interval_a IN INTERVAL YEAR , 
f_vals_a IN VARCHAR
) RETURN INTERVAL YEAR
AS
v_result_a INTERVAL YEAR;
BEGIN
v_result_a := f_in_interval_a + f_vals_a;
RETURN v_result_a;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 9-0>
SELECT func_interval_a('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 9-0>
SELECT func_interval_a(f_in_interval_a => '8' , f_vals_a => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 9-0>
SELECT TO_CHAR(func_interval_a('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_b(
f_in_interval_b IN INTERVAL MONTH , 
f_vals_b IN VARCHAR
) RETURN INTERVAL MONTH
AS
v_result_b INTERVAL MONTH;
BEGIN
v_result_b := f_in_interval_b + f_vals_b;
RETURN v_result_b;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0-9>
SELECT func_interval_b('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0-9>
SELECT func_interval_b(f_in_interval_b => '8' , f_vals_b => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0-9>
SELECT TO_CHAR(func_interval_b('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_c(
f_in_interval_c IN INTERVAL DAY , 
f_vals_c IN VARCHAR
) RETURN INTERVAL DAY
AS
v_result_c INTERVAL DAY;
BEGIN
v_result_c := f_in_interval_c + f_vals_c;
RETURN v_result_c;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 9 0:00:00>
SELECT func_interval_c('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 9 0:00:00>
SELECT func_interval_c(f_in_interval_c => '8' , f_vals_c => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 9 0:00:00>
SELECT TO_CHAR(func_interval_c('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_d(
f_in_interval_d IN INTERVAL HOUR , 
f_vals_d IN VARCHAR
) RETURN INTERVAL HOUR
AS
v_result_d INTERVAL HOUR;
BEGIN
v_result_d := f_in_interval_d + f_vals_d;
RETURN v_result_d;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 9:00:00>
SELECT func_interval_d('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 9:00:00>
SELECT func_interval_d(f_in_interval_d => '8' , f_vals_d => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 9:00:00>
SELECT TO_CHAR(func_interval_d('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_e(
f_in_interval_e IN INTERVAL MINUTE , 
f_vals_e IN VARCHAR
) RETURN INTERVAL MINUTE
AS
v_result_e INTERVAL MINUTE;
BEGIN
v_result_e := f_in_interval_e + f_vals_e;
RETURN v_result_e;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:09:00>
SELECT func_interval_e('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:09:00>
SELECT func_interval_e(f_in_interval_e => '8' , f_vals_e => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:09:00>
SELECT TO_CHAR(func_interval_e('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_f(
f_in_interval_f IN INTERVAL SECOND , 
f_vals_f IN VARCHAR
) RETURN INTERVAL SECOND
AS
v_result_f INTERVAL SECOND;
BEGIN
v_result_f := f_in_interval_f + f_vals_f;
RETURN v_result_f;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:00:09>
SELECT func_interval_f('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:00:09>
SELECT func_interval_f(f_in_interval_f => '8' , f_vals_f => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:00:09>
SELECT TO_CHAR(func_interval_f('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_g(
f_in_interval_g IN INTERVAL YEAR TO MONTH , 
f_vals_g IN VARCHAR
) RETURN INTERVAL YEAR TO MONTH
AS
v_result_g INTERVAL YEAR TO MONTH;
BEGIN
v_result_g := f_in_interval_g + f_vals_g;
RETURN v_result_g;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0-9>
SELECT func_interval_g('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0-9>
SELECT func_interval_g(f_in_interval_g => '8' , f_vals_g => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0-9>
SELECT TO_CHAR(func_interval_g('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_h(
f_in_interval_h IN INTERVAL DAY TO HOUR , 
f_vals_h IN VARCHAR
) RETURN INTERVAL DAY TO HOUR
AS
v_result_h INTERVAL DAY TO HOUR;
BEGIN
v_result_h := f_in_interval_h + f_vals_h;
RETURN v_result_h;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 9:00:00>
SELECT func_interval_h('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 9:00:00>
SELECT func_interval_h(f_in_interval_h => '8' , f_vals_h => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 9:00:00>
SELECT TO_CHAR(func_interval_h('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_i(
f_in_interval_i IN INTERVAL DAY TO MINUTE , 
f_vals_i IN VARCHAR
) RETURN INTERVAL DAY TO MINUTE
AS
v_result_i INTERVAL DAY TO MINUTE;
BEGIN
v_result_i := f_in_interval_i + f_vals_i;
RETURN v_result_i;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:09:00>
SELECT func_interval_i('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:09:00>
SELECT func_interval_i(f_in_interval_i => '8' , f_vals_i => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:09:00>
SELECT TO_CHAR(func_interval_i('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_j(
f_in_interval_j IN INTERVAL DAY TO SECOND , 
f_vals_j IN VARCHAR
) RETURN INTERVAL DAY TO SECOND
AS
v_result_j INTERVAL DAY TO SECOND;
BEGIN
v_result_j := f_in_interval_j + f_vals_j;
RETURN v_result_j;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:00:09>
SELECT func_interval_j('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:00:09>
SELECT func_interval_j(f_in_interval_j => '8' , f_vals_j => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:00:09>
SELECT TO_CHAR(func_interval_j('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_k(
f_in_interval_k IN INTERVAL HOUR TO MINUTE , 
f_vals_k IN VARCHAR
) RETURN INTERVAL HOUR TO MINUTE
AS
v_result_k INTERVAL HOUR TO MINUTE;
BEGIN
v_result_k := f_in_interval_k + f_vals_k;
RETURN v_result_k;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:09:00>
SELECT func_interval_k('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:09:00>
SELECT func_interval_k(f_in_interval_k => '8' , f_vals_k => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:09:00>
SELECT TO_CHAR(func_interval_k('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_l(
f_in_interval_l IN INTERVAL HOUR TO SECOND , 
f_vals_l IN VARCHAR
) RETURN INTERVAL HOUR TO SECOND
AS
v_result_l INTERVAL HOUR TO SECOND;
BEGIN
v_result_l := f_in_interval_l + f_vals_l;
RETURN v_result_l;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:00:09>
SELECT func_interval_l('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:00:09>
SELECT func_interval_l(f_in_interval_l => '8' , f_vals_l => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:00:09>
SELECT TO_CHAR(func_interval_l('8' , 1)) AS res_expr FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_m(
f_in_interval_m IN INTERVAL MINUTE TO SECOND , 
f_vals_m IN VARCHAR
) RETURN INTERVAL MINUTE TO SECOND
AS
v_result_m INTERVAL MINUTE TO SECOND;
BEGIN
v_result_m := f_in_interval_m + f_vals_m;
RETURN v_result_m;
END;
/

//方式一 : 普通 SELECT 调用
<预期结果 : 0:00:09>
SELECT func_interval_m('8' , 1) AS res_out FROM DUAL;

//方式二 : 命名参数调用
<预期结果 : 0:00:09>
SELECT func_interval_m(f_in_interval_m => '8' , f_vals_m => 1) AS res_inout FROM DUAL;

//方式三 : 在表达式中调用
<预期结果 : 0:00:09>
SELECT TO_CHAR(func_interval_m('8' , 1)) AS res_expr FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_a;
DROP FUNCTION func_interval_b;
DROP FUNCTION func_interval_c;
DROP FUNCTION func_interval_d;
DROP FUNCTION func_interval_e;
DROP FUNCTION func_interval_f;
DROP FUNCTION func_interval_g;
DROP FUNCTION func_interval_h;
DROP FUNCTION func_interval_i;
DROP FUNCTION func_interval_j;
DROP FUNCTION func_interval_k;
DROP FUNCTION func_interval_l;
DROP FUNCTION func_interval_m;

!4 XG-TYPE-INTERVAL-FUNC-002 INTERVAL 函数返回与调用方式

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_a(
f_id_a IN INT , 
f_interval_a INTERVAL YEAR
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_a = ' || f_id_a || ' , f_interval_a = ' || TO_CHAR(f_interval_a);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_a(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_a(f_id_a => 2 , f_interval_a => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_a(3 , INTERVAL '1' YEAR + '1');

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_b(
f_id_b IN INT , 
f_interval_b INTERVAL MONTH
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_b = ' || f_id_b || ' , f_interval_b = ' || TO_CHAR(f_interval_b);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_b(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_b(f_id_b => 2 , f_interval_b => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_b(3 , INTERVAL '1' MONTH + '1');

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_c(
f_id_c IN INT , 
f_interval_c INTERVAL DAY
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_c = ' || f_id_c || ' , f_interval_c = ' || TO_CHAR(f_interval_c);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_c(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_c(f_id_c => 2 , f_interval_c => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_c(3 , INTERVAL '1' DAY + '1');

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_d(
f_id_d IN INT , 
f_interval_d INTERVAL HOUR
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_d = ' || f_id_d || ' , f_interval_d = ' || TO_CHAR(f_interval_d);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_d(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_d(f_id_d => 2 , f_interval_d => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_d(3 , INTERVAL '1' HOUR + '1');

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_e(
f_id_e IN INT , 
f_interval_e INTERVAL MINUTE
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_e = ' || f_id_e || ' , f_interval_e = ' || TO_CHAR(f_interval_e);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_e(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_e(f_id_e => 2 , f_interval_e => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_e(3 , INTERVAL '1' MINUTE + '1');

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_f(
f_id_f IN INT , 
f_interval_f INTERVAL SECOND
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_f = ' || f_id_f || ' , f_interval_f = ' || TO_CHAR(f_interval_f);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_f(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_f(f_id_f => 2 , f_interval_f => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_f(3 , INTERVAL '1' SECOND + '1');

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_g(
f_id_g IN INT , 
f_interval_g INTERVAL YEAR TO MONTH
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_g = ' || f_id_g || ' , f_interval_g = ' || TO_CHAR(f_interval_g);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_g(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_g(f_id_g => 2 , f_interval_g => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_g(3 , INTERVAL '1' YEAR TO MONTH + '1');

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_h(
f_id_h IN INT , 
f_interval_h INTERVAL DAY TO HOUR
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_h = ' || f_id_h || ' , f_interval_h = ' || TO_CHAR(f_interval_h);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_h(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_h(f_id_h => 2 , f_interval_h => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_h(3 , INTERVAL '1' DAY TO HOUR + '1');

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_i(
f_id_i IN INT , 
f_interval_i INTERVAL DAY TO MINUTE
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_i = ' || f_id_i || ' , f_interval_i = ' || TO_CHAR(f_interval_i);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_i(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_i(f_id_i => 2 , f_interval_i => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_i(3 , INTERVAL '1' DAY TO MINUTE + '1');

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_j(
f_id_j IN INT , 
f_interval_j INTERVAL DAY TO SECOND
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_j = ' || f_id_j || ' , f_interval_j = ' || TO_CHAR(f_interval_j);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_j(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_j(f_id_j => 2 , f_interval_j => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_j(3 , INTERVAL '1' DAY TO SECOND + '1');

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_k(
f_id_k IN INT , 
f_interval_k INTERVAL HOUR TO MINUTE
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_k = ' || f_id_k || ' , f_interval_k = ' || TO_CHAR(f_interval_k);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_k(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_k(f_id_k => 2 , f_interval_k => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_k(3 , INTERVAL '1' HOUR TO MINUTE + '1');

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_l(
f_id_l IN INT , 
f_interval_l INTERVAL HOUR TO SECOND
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_l = ' || f_id_l || ' , f_interval_l = ' || TO_CHAR(f_interval_l);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_l(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_l(f_id_l => 2 , f_interval_l => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_l(3 , INTERVAL '1' HOUR TO SECOND + '1');

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_call_method_m(
f_id_m IN INT , 
f_interval_m INTERVAL MINUTE TO SECOND
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_m = ' || f_id_m || ' , f_interval_m = ' || TO_CHAR(f_interval_m);
END;
/

//方式一 : 普通 SELECT 调用
SELECT func_interval_call_method_m(1 , '9') AS res FROM DUAL;

//方式二 : 命名参数调用
SELECT func_interval_call_method_m(f_id_m => 2 , f_interval_m => '8') AS res FROM DUAL;

//方式三 : 在表达式中调用
SELECT func_interval_call_method_m(3 , INTERVAL '1' MINUTE TO SECOND + '1');

//删除存储函数
DROP FUNCTION func_interval_call_method_a;
DROP FUNCTION func_interval_call_method_b;
DROP FUNCTION func_interval_call_method_c;
DROP FUNCTION func_interval_call_method_d;
DROP FUNCTION func_interval_call_method_e;
DROP FUNCTION func_interval_call_method_f;
DROP FUNCTION func_interval_call_method_g;
DROP FUNCTION func_interval_call_method_h;
DROP FUNCTION func_interval_call_method_i;
DROP FUNCTION func_interval_call_method_j;
DROP FUNCTION func_interval_call_method_k;
DROP FUNCTION func_interval_call_method_l;
DROP FUNCTION func_interval_call_method_m;