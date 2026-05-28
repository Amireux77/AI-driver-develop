!4 XG-TYPE-INTERVAL-FUNC-007 INTERVAL 复制类型一致/不一致

//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_a(
f_interval_a IN INTERVAL YEAR
) RETURN VARCHAR
AS
v_interval_a INTERVAL YEAR;
v_str_a VARCHAR(50);
BEGIN
v_interval_a := f_interval_a;
v_interval_a := v_interval_a + '1';
v_str_a := TO_CHAR(v_interval_a);
RETURN 'INTERVAL YEAR -> INTERVAL YEAR : ' || TO_CHAR(v_interval_a) || ' , INTERVAL YEAR -> VARCHAR : ' || v_str_a;
END;
/

//执行函数
SELECT func_interval_copy_a('8') AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_b(
f_interval_b IN INTERVAL MONTH
) RETURN VARCHAR
AS
v_interval_b INTERVAL MONTH;
v_str_b VARCHAR(50);
BEGIN
v_interval_b := f_interval_b;
v_interval_b := v_interval_b + '1';
v_str_b := TO_CHAR(v_interval_b);
RETURN 'INTERVAL MONTH -> INTERVAL MONTH : ' || TO_CHAR(v_interval_b) || ' , INTERVAL MONTH -> VARCHAR : ' || v_str_b;
END;
/

//执行函数
SELECT func_interval_copy_b('8') AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_c(
f_interval_c IN INTERVAL DAY
) RETURN VARCHAR
AS
v_interval_c INTERVAL DAY;
v_str_c VARCHAR(50);
BEGIN
v_interval_c := f_interval_c;
v_interval_c := v_interval_c + '1';
v_str_c := TO_CHAR(v_interval_c);
RETURN 'INTERVAL DAY -> INTERVAL DAY : ' || TO_CHAR(v_interval_c) || ' , INTERVAL DAY -> VARCHAR : ' || v_str_c;
END;
/

//执行函数
SELECT func_interval_copy_c('8') AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_d(
f_interval_d IN INTERVAL HOUR
) RETURN VARCHAR
AS
v_interval_d INTERVAL HOUR;
v_str_d VARCHAR(50);
BEGIN
v_interval_d := f_interval_d;
v_interval_d := v_interval_d + '1';
v_str_d := TO_CHAR(v_interval_d);
RETURN 'INTERVAL HOUR -> INTERVAL HOUR : ' || TO_CHAR(v_interval_d) || ' , INTERVAL HOUR -> VARCHAR : ' || v_str_d;
END;
/

//执行函数
SELECT func_interval_copy_d('8') AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_e(
f_interval_e IN INTERVAL MINUTE
) RETURN VARCHAR
AS
v_interval_e INTERVAL MINUTE;
v_str_e VARCHAR(50);
BEGIN
v_interval_e := f_interval_e;
v_interval_e := v_interval_e + '1';
v_str_e := TO_CHAR(v_interval_e);
RETURN 'INTERVAL MINUTE -> INTERVAL MINUTE : ' || TO_CHAR(v_interval_e) || ' , INTERVAL MINUTE -> VARCHAR : ' || v_str_e;
END;
/

//执行函数
SELECT func_interval_copy_e('8') AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_f(
f_interval_f IN INTERVAL SECOND
) RETURN VARCHAR
AS
v_interval_f INTERVAL SECOND;
v_str_f VARCHAR(50);
BEGIN
v_interval_f := f_interval_f;
v_interval_f := v_interval_f + '1';
v_str_f := TO_CHAR(v_interval_f);
RETURN 'INTERVAL SECOND -> INTERVAL SECOND : ' || TO_CHAR(v_interval_f) || ' , INTERVAL SECOND -> VARCHAR : ' || v_str_f;
END;
/

//执行函数
SELECT func_interval_copy_f('8') AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_g(
f_interval_g IN INTERVAL YEAR TO MONTH
) RETURN VARCHAR
AS
v_interval_g INTERVAL YEAR TO MONTH;
v_str_g VARCHAR(50);
BEGIN
v_interval_g := f_interval_g;
v_interval_g := v_interval_g + '1';
v_str_g := TO_CHAR(v_interval_g);
RETURN 'INTERVAL YEAR TO MONTH -> INTERVAL YEAR TO MONTH : ' || TO_CHAR(v_interval_g) || ' , INTERVAL YEAR TO MONTH -> VARCHAR : ' || v_str_g;
END;
/

//执行函数
SELECT func_interval_copy_g('8') AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_h(
f_interval_h IN INTERVAL DAY TO HOUR
) RETURN VARCHAR
AS
v_interval_h INTERVAL DAY TO HOUR;
v_str_h VARCHAR(50);
BEGIN
v_interval_h := f_interval_h;
v_interval_h := v_interval_h + '1';
v_str_h := TO_CHAR(v_interval_h);
RETURN 'INTERVAL DAY TO HOUR -> INTERVAL DAY TO HOUR : ' || TO_CHAR(v_interval_h) || ' , INTERVAL DAY TO HOUR -> VARCHAR : ' || v_str_h;
END;
/

//执行函数
SELECT func_interval_copy_h('8') AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_i(
f_interval_i IN INTERVAL DAY TO MINUTE
) RETURN VARCHAR
AS
v_interval_i INTERVAL DAY TO MINUTE;
v_str_i VARCHAR(50);
BEGIN
v_interval_i := f_interval_i;
v_interval_i := v_interval_i + '1';
v_str_i := TO_CHAR(v_interval_i);
RETURN 'INTERVAL DAY TO MINUTE -> INTERVAL DAY TO MINUTE : ' || TO_CHAR(v_interval_i) || ' , INTERVAL DAY TO MINUTE -> VARCHAR : ' || v_str_i;
END;
/

//执行函数
SELECT func_interval_copy_i('8') AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_j(
f_interval_j IN INTERVAL DAY TO SECOND
) RETURN VARCHAR
AS
v_interval_j INTERVAL DAY TO SECOND;
v_str_j VARCHAR(50);
BEGIN
v_interval_j := f_interval_j;
v_interval_j := v_interval_j + '1';
v_str_j := TO_CHAR(v_interval_j);
RETURN 'INTERVAL DAY TO SECOND -> INTERVAL DAY TO SECOND : ' || TO_CHAR(v_interval_j) || ' , INTERVAL DAY TO SECOND -> VARCHAR : ' || v_str_j;
END;
/

//执行函数
SELECT func_interval_copy_j('8') AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_k(
f_interval_k IN INTERVAL HOUR TO MINUTE
) RETURN VARCHAR
AS
v_interval_k INTERVAL HOUR TO MINUTE;
v_str_k VARCHAR(50);
BEGIN
v_interval_k := f_interval_k;
v_interval_k := v_interval_k + '1';
v_str_k := TO_CHAR(v_interval_k);
RETURN 'INTERVAL HOUR TO MINUTE -> INTERVAL HOUR TO MINUTE : ' || TO_CHAR(v_interval_k) || ' , INTERVAL HOUR TO MINUTE -> VARCHAR : ' || v_str_k;
END;
/

//执行函数
SELECT func_interval_copy_k('8') AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_l(
f_interval_l IN INTERVAL HOUR TO SECOND
) RETURN VARCHAR
AS
v_interval_l INTERVAL HOUR TO SECOND;
v_str_l VARCHAR(50);
BEGIN
v_interval_l := f_interval_l;
v_interval_l := v_interval_l + '1';
v_str_l := TO_CHAR(v_interval_l);
RETURN 'INTERVAL HOUR TO SECOND -> INTERVAL HOUR TO SECOND : ' || TO_CHAR(v_interval_l) || ' , INTERVAL HOUR TO SECOND -> VARCHAR : ' || v_str_l;
END;
/

//执行函数
SELECT func_interval_copy_l('8') AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_copy_m(
f_interval_m IN INTERVAL MINUTE TO SECOND
) RETURN VARCHAR
AS
v_interval_m INTERVAL MINUTE TO SECOND;
v_str_m VARCHAR(50);
BEGIN
v_interval_m := f_interval_m;
v_interval_m := v_interval_m + '1';
v_str_m := TO_CHAR(v_interval_m);
RETURN 'INTERVAL MINUTE TO SECOND -> INTERVAL MINUTE TO SECOND : ' || TO_CHAR(v_interval_m) || ' , INTERVAL MINUTE TO SECOND -> VARCHAR : ' || v_str_m;
END;
/

//执行函数
SELECT func_interval_copy_m('8') AS res FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_copy_a;
DROP FUNCTION func_interval_copy_b;
DROP FUNCTION func_interval_copy_c;
DROP FUNCTION func_interval_copy_d;
DROP FUNCTION func_interval_copy_e;
DROP FUNCTION func_interval_copy_f;
DROP FUNCTION func_interval_copy_g;
DROP FUNCTION func_interval_copy_h;
DROP FUNCTION func_interval_copy_i;
DROP FUNCTION func_interval_copy_j;
DROP FUNCTION func_interval_copy_k;
DROP FUNCTION func_interval_copy_l;
DROP FUNCTION func_interval_copy_m;