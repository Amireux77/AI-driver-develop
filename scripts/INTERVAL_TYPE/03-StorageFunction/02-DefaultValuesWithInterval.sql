!4 XG-TYPE-INTERVAL-FUNC-003 INTERVAL 参数默认值
//创建 INTERVAL YEAR 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_a(
f_id_a IN INT , 
f_interval_a IN INTERVAL YEAR DEFAULT '9-0'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_a = ' || f_id_a || ' , f_interval_a = ' || TO_CHAR(f_interval_a);
END;
/

//不传 f_interval_a , 使用默认值
SELECT func_interval_default_a(f_id_a => 1) AS res FROM DUAL;

//传入 f_interval_a , 覆盖默认值
SELECT func_interval_default_a(f_id_a => 2 , f_interval_a => '8') AS res FROM DUAL;

//创建 INTERVAL MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_b(
f_id_b IN INT , 
f_interval_b IN INTERVAL MONTH DEFAULT '0-9'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_b = ' || f_id_b || ' , f_interval_b = ' || TO_CHAR(f_interval_b);
END;
/

//不传 f_interval_b , 使用默认值
SELECT func_interval_default_b(f_id_b => 1) AS res FROM DUAL;

//传入 f_interval_b , 覆盖默认值
SELECT func_interval_default_b(f_id_b => 2 , f_interval_b => '8') AS res FROM DUAL;

//创建 INTERVAL DAY 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_c(
f_id_c IN INT , 
f_interval_c IN INTERVAL DAY DEFAULT '9 0:00:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_c = ' || f_id_c || ' , f_interval_c = ' || TO_CHAR(f_interval_c);
END;
/

//不传 f_interval_c , 使用默认值
SELECT func_interval_default_c(f_id_c => 1) AS res FROM DUAL;

//传入 f_interval_c , 覆盖默认值
SELECT func_interval_default_c(f_id_c => 2 , f_interval_c => '8') AS res FROM DUAL;

//创建 INTERVAL HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_d(
f_id_d IN INT , 
f_interval_d IN INTERVAL HOUR DEFAULT '9:00:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_d = ' || f_id_d || ' , f_interval_d = ' || TO_CHAR(f_interval_d);
END;
/

//不传 f_interval_d , 使用默认值
SELECT func_interval_default_d(f_id_d => 1) AS res FROM DUAL;

//传入 f_interval_d , 覆盖默认值
SELECT func_interval_default_d(f_id_d => 2 , f_interval_d => '8') AS res FROM DUAL;

//创建 INTERVAL MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_e(
f_id_e IN INT , 
f_interval_e IN INTERVAL MINUTE DEFAULT '0:09:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_e = ' || f_id_e || ' , f_interval_e = ' || TO_CHAR(f_interval_e);
END;
/

//不传 f_interval_e , 使用默认值
SELECT func_interval_default_e(f_id_e => 1) AS res FROM DUAL;

//传入 f_interval_e , 覆盖默认值
SELECT func_interval_default_e(f_id_e => 2 , f_interval_e => '8') AS res FROM DUAL;

//创建 INTERVAL SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_f(
f_id_f IN INT , 
f_interval_f IN INTERVAL SECOND DEFAULT '0:00:09'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_f = ' || f_id_f || ' , f_interval_f = ' || TO_CHAR(f_interval_f);
END;
/

//不传 f_interval_f , 使用默认值
SELECT func_interval_default_f(f_id_f => 1) AS res FROM DUAL;

//传入 f_interval_f , 覆盖默认值
SELECT func_interval_default_f(f_id_f => 2 , f_interval_f => '8') AS res FROM DUAL;

//创建 INTERVAL YEAR TO MONTH 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_g(
f_id_g IN INT , 
f_interval_g IN INTERVAL YEAR TO MONTH DEFAULT '0-9'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_g = ' || f_id_g || ' , f_interval_g = ' || TO_CHAR(f_interval_g);
END;
/

//不传 f_interval_g , 使用默认值
SELECT func_interval_default_g(f_id_g => 1) AS res FROM DUAL;

//传入 f_interval_g , 覆盖默认值
SELECT func_interval_default_g(f_id_g => 2 , f_interval_g => '8') AS res FROM DUAL;

//创建 INTERVAL DAY TO HOUR 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_h(
f_id_h IN INT , 
f_interval_h IN INTERVAL DAY TO HOUR DEFAULT '9:00:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_h = ' || f_id_h || ' , f_interval_h = ' || TO_CHAR(f_interval_h);
END;
/

//不传 f_interval_h , 使用默认值
SELECT func_interval_default_h(f_id_h => 1) AS res FROM DUAL;

//传入 f_interval_h , 覆盖默认值
SELECT func_interval_default_h(f_id_h => 2 , f_interval_h => '8') AS res FROM DUAL;

//创建 INTERVAL DAY TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_i(
f_id_i IN INT , 
f_interval_i IN INTERVAL DAY TO MINUTE DEFAULT '0:09:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_i = ' || f_id_i || ' , f_interval_i = ' || TO_CHAR(f_interval_i);
END;
/

//不传 f_interval_i , 使用默认值
SELECT func_interval_default_i(f_id_i => 1) AS res FROM DUAL;

//传入 f_interval_i , 覆盖默认值
SELECT func_interval_default_i(f_id_i => 2 , f_interval_i => '8') AS res FROM DUAL;

//创建 INTERVAL DAY TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_j(
f_id_j IN INT , 
f_interval_j IN INTERVAL DAY TO SECOND DEFAULT '0:00:09'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_j = ' || f_id_j || ' , f_interval_j = ' || TO_CHAR(f_interval_j);
END;
/

//不传 f_interval_j , 使用默认值
SELECT func_interval_default_j(f_id_j => 1) AS res FROM DUAL;

//传入 f_interval_j , 覆盖默认值
SELECT func_interval_default_j(f_id_j => 2 , f_interval_j => '8') AS res FROM DUAL;

//创建 INTERVAL HOUR TO MINUTE 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_k(
f_id_k IN INT , 
f_interval_k IN INTERVAL HOUR TO MINUTE DEFAULT '0:09:00'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_k = ' || f_id_k || ' , f_interval_k = ' || TO_CHAR(f_interval_k);
END;
/

//不传 f_interval_k , 使用默认值
SELECT func_interval_default_k(f_id_k => 1) AS res FROM DUAL;

//传入 f_interval_k , 覆盖默认值
SELECT func_interval_default_k(f_id_k => 2 , f_interval_k => '8') AS res FROM DUAL;

//创建 INTERVAL HOUR TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_l(
f_id_l IN INT , 
f_interval_l IN INTERVAL HOUR TO SECOND DEFAULT '0:00:09'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_l = ' || f_id_l || ' , f_interval_l = ' || TO_CHAR(f_interval_l);
END;
/

//不传 f_interval_l , 使用默认值
SELECT func_interval_default_l(f_id_l => 1) AS res FROM DUAL;

//传入 f_interval_l , 覆盖默认值
SELECT func_interval_default_l(f_id_l => 2 , f_interval_l => '8') AS res FROM DUAL;

//创建 INTERVAL MINUTE TO SECOND 存储函数
CREATE OR REPLACE FUNCTION func_interval_default_m(
f_id_m IN INT , 
f_interval_m IN INTERVAL MINUTE TO SECOND DEFAULT '0:00:09'
) RETURN VARCHAR
AS
BEGIN
RETURN 'f_id_m = ' || f_id_m || ' , f_interval_m = ' || TO_CHAR(f_interval_m);
END;
/

//不传 f_interval_m , 使用默认值
SELECT func_interval_default_m(f_id_m => 1) AS res FROM DUAL;

//传入 f_interval_m , 覆盖默认值
SELECT func_interval_default_m(f_id_m => 2 , f_interval_m => '8') AS res FROM DUAL;

//删除存储函数
DROP FUNCTION func_interval_default_a;
DROP FUNCTION func_interval_default_b;
DROP FUNCTION func_interval_default_c;
DROP FUNCTION func_interval_default_d;
DROP FUNCTION func_interval_default_e;
DROP FUNCTION func_interval_default_f;
DROP FUNCTION func_interval_default_g;
DROP FUNCTION func_interval_default_h;
DROP FUNCTION func_interval_default_i;
DROP FUNCTION func_interval_default_j;
DROP FUNCTION func_interval_default_k;
DROP FUNCTION func_interval_default_l;
DROP FUNCTION func_interval_default_m;