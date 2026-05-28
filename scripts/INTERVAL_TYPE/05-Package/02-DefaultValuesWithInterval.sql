!4 XG-TYPE-INTERVAL-PKG-002 INTERVAL 参数默认值

//创建 INTERVAL YEAR 包
CREATE OR REPLACE PACKAGE pkg_interval_default_a AS 
FUNCTION f_interval_default_a(p_id_a INT , p_interval_a INTERVAL YEAR DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_a(
p_in_a IN INTERVAL YEAR DEFAULT '8' , 
p_inout_a IN OUT INTERVAL YEAR DEFAULT '7' , 
p_log_a IN OUT VARCHAR
);
END pkg_interval_default_a;
/

//创建 INTERVAL YEAR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_a AS
FUNCTION f_interval_default_a(p_id_a INT , p_interval_a INTERVAL YEAR DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_a = ' || p_id_a || ' , p_time = ' || TO_CHAR(p_interval_a);
END f_interval_default_a;
PROCEDURE p_interval_inout_default_a(
p_in_a IN INTERVAL YEAR DEFAULT '8' , 
p_inout_a IN OUT INTERVAL YEAR DEFAULT '7' , 
p_log_a IN OUT VARCHAR
) AS
BEGIN
p_inout_a := p_inout_a + '1';
p_log_a := p_log_a || ' , IN = ' || TO_CHAR(p_in_a) || ' , INOUT = ' || TO_CHAR(p_inout_a);
SEND_MSG(p_log_a);
END p_interval_inout_default_a;
END pkg_interval_default_a;
/

//测试 INTERVAL YEAR 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_a1 VARCHAR(200);
BEGIN
v_result_a1 := pkg_interval_default_a.f_interval_default_a(1);
SEND_MSG(v_result_a1);
END;
/

//测试 INTERVAL YEAR 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_a2 VARCHAR;
BEGIN
v_result_a2 := pkg_interval_default_a.f_interval_default_a(2 , '6');
SEND_MSG(v_result_a2);
END;
/

//测试 INTERVAL YEAR IN/IN OUT 参数默认值混合
DECLARE
v_msg_a VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_a.p_interval_inout_default_a(p_log_a => v_msg_a);
END;
/

//创建 INTERVAL MONTH 包
CREATE OR REPLACE PACKAGE pkg_interval_default_b AS 
FUNCTION f_interval_default_b(p_id_b INT , p_interval_b INTERVAL MONTH DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_b(
p_in_b IN INTERVAL MONTH DEFAULT '8' , 
p_inout_b IN OUT INTERVAL MONTH DEFAULT '7' , 
p_log_b IN OUT VARCHAR
);
END pkg_interval_default_b;
/

//创建 INTERVAL MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_b AS
FUNCTION f_interval_default_b(p_id_b INT , p_interval_b INTERVAL MONTH DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_b = ' || p_id_b || ' , p_time = ' || TO_CHAR(p_interval_b);
END f_interval_default_b;
PROCEDURE p_interval_inout_default_b(
p_in_b IN INTERVAL MONTH DEFAULT '8' , 
p_inout_b IN OUT INTERVAL MONTH DEFAULT '7' , 
p_log_b IN OUT VARCHAR
) AS
BEGIN
p_inout_b := p_inout_b + '1';
p_log_b := p_log_b || ' , IN = ' || TO_CHAR(p_in_b) || ' , INOUT = ' || TO_CHAR(p_inout_b);
SEND_MSG(p_log_b);
END p_interval_inout_default_b;
END pkg_interval_default_b;
/

//测试 INTERVAL MONTH 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_b1 VARCHAR(200);
BEGIN
v_result_b1 := pkg_interval_default_b.f_interval_default_b(1);
SEND_MSG(v_result_b1);
END;
/

//测试 INTERVAL MONTH 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_b2 VARCHAR;
BEGIN
v_result_b2 := pkg_interval_default_b.f_interval_default_b(2 , '6');
SEND_MSG(v_result_b2);
END;
/

//测试 INTERVAL MONTH IN/IN OUT 参数默认值混合
DECLARE
v_msg_b VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_b.p_interval_inout_default_b(p_log_b => v_msg_b);
END;
/

//创建 INTERVAL DAY 包
CREATE OR REPLACE PACKAGE pkg_interval_default_c AS 
FUNCTION f_interval_default_c(p_id_c INT , p_interval_c INTERVAL DAY DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_c(
p_in_c IN INTERVAL DAY DEFAULT '8' , 
p_inout_c IN OUT INTERVAL DAY DEFAULT '7' , 
p_log_c IN OUT VARCHAR
);
END pkg_interval_default_c;
/

//创建 INTERVAL DAY 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_c AS
FUNCTION f_interval_default_c(p_id_c INT , p_interval_c INTERVAL DAY DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_c = ' || p_id_c || ' , p_time = ' || TO_CHAR(p_interval_c);
END f_interval_default_c;
PROCEDURE p_interval_inout_default_c(
p_in_c IN INTERVAL DAY DEFAULT '8' , 
p_inout_c IN OUT INTERVAL DAY DEFAULT '7' , 
p_log_c IN OUT VARCHAR
) AS
BEGIN
p_inout_c := p_inout_c + '1';
p_log_c := p_log_c || ' , IN = ' || TO_CHAR(p_in_c) || ' , INOUT = ' || TO_CHAR(p_inout_c);
SEND_MSG(p_log_c);
END p_interval_inout_default_c;
END pkg_interval_default_c;
/

//测试 INTERVAL DAY 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_c1 VARCHAR(200);
BEGIN
v_result_c1 := pkg_interval_default_c.f_interval_default_c(1);
SEND_MSG(v_result_c1);
END;
/

//测试 INTERVAL DAY 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_c2 VARCHAR;
BEGIN
v_result_c2 := pkg_interval_default_c.f_interval_default_c(2 , '6');
SEND_MSG(v_result_c2);
END;
/

//测试 INTERVAL DAY IN/IN OUT 参数默认值混合
DECLARE
v_msg_c VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_c.p_interval_inout_default_c(p_log_c => v_msg_c);
END;
/

//创建 INTERVAL HOUR 包
CREATE OR REPLACE PACKAGE pkg_interval_default_d AS 
FUNCTION f_interval_default_d(p_id_d INT , p_interval_d INTERVAL HOUR DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_d(
p_in_d IN INTERVAL HOUR DEFAULT '8' , 
p_inout_d IN OUT INTERVAL HOUR DEFAULT '7' , 
p_log_d IN OUT VARCHAR
);
END pkg_interval_default_d;
/

//创建 INTERVAL HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_d AS
FUNCTION f_interval_default_d(p_id_d INT , p_interval_d INTERVAL HOUR DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_d = ' || p_id_d || ' , p_time = ' || TO_CHAR(p_interval_d);
END f_interval_default_d;
PROCEDURE p_interval_inout_default_d(
p_in_d IN INTERVAL HOUR DEFAULT '8' , 
p_inout_d IN OUT INTERVAL HOUR DEFAULT '7' , 
p_log_d IN OUT VARCHAR
) AS
BEGIN
p_inout_d := p_inout_d + '1';
p_log_d := p_log_d || ' , IN = ' || TO_CHAR(p_in_d) || ' , INOUT = ' || TO_CHAR(p_inout_d);
SEND_MSG(p_log_d);
END p_interval_inout_default_d;
END pkg_interval_default_d;
/

//测试 INTERVAL HOUR 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_d1 VARCHAR(200);
BEGIN
v_result_d1 := pkg_interval_default_d.f_interval_default_d(1);
SEND_MSG(v_result_d1);
END;
/

//测试 INTERVAL HOUR 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_d2 VARCHAR;
BEGIN
v_result_d2 := pkg_interval_default_d.f_interval_default_d(2 , '6');
SEND_MSG(v_result_d2);
END;
/

//测试 INTERVAL HOUR IN/IN OUT 参数默认值混合
DECLARE
v_msg_d VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_d.p_interval_inout_default_d(p_log_d => v_msg_d);
END;
/

//创建 INTERVAL MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_default_e AS 
FUNCTION f_interval_default_e(p_id_e INT , p_interval_e INTERVAL MINUTE DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_e(
p_in_e IN INTERVAL MINUTE DEFAULT '8' , 
p_inout_e IN OUT INTERVAL MINUTE DEFAULT '7' , 
p_log_e IN OUT VARCHAR
);
END pkg_interval_default_e;
/

//创建 INTERVAL MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_e AS
FUNCTION f_interval_default_e(p_id_e INT , p_interval_e INTERVAL MINUTE DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_e = ' || p_id_e || ' , p_time = ' || TO_CHAR(p_interval_e);
END f_interval_default_e;
PROCEDURE p_interval_inout_default_e(
p_in_e IN INTERVAL MINUTE DEFAULT '8' , 
p_inout_e IN OUT INTERVAL MINUTE DEFAULT '7' , 
p_log_e IN OUT VARCHAR
) AS
BEGIN
p_inout_e := p_inout_e + '1';
p_log_e := p_log_e || ' , IN = ' || TO_CHAR(p_in_e) || ' , INOUT = ' || TO_CHAR(p_inout_e);
SEND_MSG(p_log_e);
END p_interval_inout_default_e;
END pkg_interval_default_e;
/

//测试 INTERVAL MINUTE 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_e1 VARCHAR(200);
BEGIN
v_result_e1 := pkg_interval_default_e.f_interval_default_e(1);
SEND_MSG(v_result_e1);
END;
/

//测试 INTERVAL MINUTE 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_e2 VARCHAR;
BEGIN
v_result_e2 := pkg_interval_default_e.f_interval_default_e(2 , '6');
SEND_MSG(v_result_e2);
END;
/

//测试 INTERVAL MINUTE IN/IN OUT 参数默认值混合
DECLARE
v_msg_e VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_e.p_interval_inout_default_e(p_log_e => v_msg_e);
END;
/

//创建 INTERVAL SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_default_f AS 
FUNCTION f_interval_default_f(p_id_f INT , p_interval_f INTERVAL SECOND DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_f(
p_in_f IN INTERVAL SECOND DEFAULT '8' , 
p_inout_f IN OUT INTERVAL SECOND DEFAULT '7' , 
p_log_f IN OUT VARCHAR
);
END pkg_interval_default_f;
/

//创建 INTERVAL SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_f AS
FUNCTION f_interval_default_f(p_id_f INT , p_interval_f INTERVAL SECOND DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_f = ' || p_id_f || ' , p_time = ' || TO_CHAR(p_interval_f);
END f_interval_default_f;
PROCEDURE p_interval_inout_default_f(
p_in_f IN INTERVAL SECOND DEFAULT '8' , 
p_inout_f IN OUT INTERVAL SECOND DEFAULT '7' , 
p_log_f IN OUT VARCHAR
) AS
BEGIN
p_inout_f := p_inout_f + '1';
p_log_f := p_log_f || ' , IN = ' || TO_CHAR(p_in_f) || ' , INOUT = ' || TO_CHAR(p_inout_f);
SEND_MSG(p_log_f);
END p_interval_inout_default_f;
END pkg_interval_default_f;
/

//测试 INTERVAL SECOND 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_f1 VARCHAR(200);
BEGIN
v_result_f1 := pkg_interval_default_f.f_interval_default_f(1);
SEND_MSG(v_result_f1);
END;
/

//测试 INTERVAL SECOND 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_f2 VARCHAR;
BEGIN
v_result_f2 := pkg_interval_default_f.f_interval_default_f(2 , '6');
SEND_MSG(v_result_f2);
END;
/

//测试 INTERVAL SECOND IN/IN OUT 参数默认值混合
DECLARE
v_msg_f VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_f.p_interval_inout_default_f(p_log_f => v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 包
CREATE OR REPLACE PACKAGE pkg_interval_default_g AS 
FUNCTION f_interval_default_g(p_id_g INT , p_interval_g INTERVAL YEAR TO MONTH DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_g(
p_in_g IN INTERVAL YEAR TO MONTH DEFAULT '8' , 
p_inout_g IN OUT INTERVAL YEAR TO MONTH DEFAULT '7' , 
p_log_g IN OUT VARCHAR
);
END pkg_interval_default_g;
/

//创建 INTERVAL YEAR TO MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_g AS
FUNCTION f_interval_default_g(p_id_g INT , p_interval_g INTERVAL YEAR TO MONTH DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_g = ' || p_id_g || ' , p_time = ' || TO_CHAR(p_interval_g);
END f_interval_default_g;
PROCEDURE p_interval_inout_default_g(
p_in_g IN INTERVAL YEAR TO MONTH DEFAULT '8' , 
p_inout_g IN OUT INTERVAL YEAR TO MONTH DEFAULT '7' , 
p_log_g IN OUT VARCHAR
) AS
BEGIN
p_inout_g := p_inout_g + '1';
p_log_g := p_log_g || ' , IN = ' || TO_CHAR(p_in_g) || ' , INOUT = ' || TO_CHAR(p_inout_g);
SEND_MSG(p_log_g);
END p_interval_inout_default_g;
END pkg_interval_default_g;
/

//测试 INTERVAL YEAR TO MONTH 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_g1 VARCHAR(200);
BEGIN
v_result_g1 := pkg_interval_default_g.f_interval_default_g(1);
SEND_MSG(v_result_g1);
END;
/

//测试 INTERVAL YEAR TO MONTH 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_g2 VARCHAR;
BEGIN
v_result_g2 := pkg_interval_default_g.f_interval_default_g(2 , '6');
SEND_MSG(v_result_g2);
END;
/

//测试 INTERVAL YEAR TO MONTH IN/IN OUT 参数默认值混合
DECLARE
v_msg_g VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_g.p_interval_inout_default_g(p_log_g => v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 包
CREATE OR REPLACE PACKAGE pkg_interval_default_h AS 
FUNCTION f_interval_default_h(p_id_h INT , p_interval_h INTERVAL DAY TO HOUR DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_h(
p_in_h IN INTERVAL DAY TO HOUR DEFAULT '8' , 
p_inout_h IN OUT INTERVAL DAY TO HOUR DEFAULT '7' , 
p_log_h IN OUT VARCHAR
);
END pkg_interval_default_h;
/

//创建 INTERVAL DAY TO HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_h AS
FUNCTION f_interval_default_h(p_id_h INT , p_interval_h INTERVAL DAY TO HOUR DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_h = ' || p_id_h || ' , p_time = ' || TO_CHAR(p_interval_h);
END f_interval_default_h;
PROCEDURE p_interval_inout_default_h(
p_in_h IN INTERVAL DAY TO HOUR DEFAULT '8' , 
p_inout_h IN OUT INTERVAL DAY TO HOUR DEFAULT '7' , 
p_log_h IN OUT VARCHAR
) AS
BEGIN
p_inout_h := p_inout_h + '1';
p_log_h := p_log_h || ' , IN = ' || TO_CHAR(p_in_h) || ' , INOUT = ' || TO_CHAR(p_inout_h);
SEND_MSG(p_log_h);
END p_interval_inout_default_h;
END pkg_interval_default_h;
/

//测试 INTERVAL DAY TO HOUR 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_h1 VARCHAR(200);
BEGIN
v_result_h1 := pkg_interval_default_h.f_interval_default_h(1);
SEND_MSG(v_result_h1);
END;
/

//测试 INTERVAL DAY TO HOUR 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_h2 VARCHAR;
BEGIN
v_result_h2 := pkg_interval_default_h.f_interval_default_h(2 , '6');
SEND_MSG(v_result_h2);
END;
/

//测试 INTERVAL DAY TO HOUR IN/IN OUT 参数默认值混合
DECLARE
v_msg_h VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_h.p_interval_inout_default_h(p_log_h => v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_default_i AS 
FUNCTION f_interval_default_i(p_id_i INT , p_interval_i INTERVAL DAY TO MINUTE DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_i(
p_in_i IN INTERVAL DAY TO MINUTE DEFAULT '8' , 
p_inout_i IN OUT INTERVAL DAY TO MINUTE DEFAULT '7' , 
p_log_i IN OUT VARCHAR
);
END pkg_interval_default_i;
/

//创建 INTERVAL DAY TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_i AS
FUNCTION f_interval_default_i(p_id_i INT , p_interval_i INTERVAL DAY TO MINUTE DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_i = ' || p_id_i || ' , p_time = ' || TO_CHAR(p_interval_i);
END f_interval_default_i;
PROCEDURE p_interval_inout_default_i(
p_in_i IN INTERVAL DAY TO MINUTE DEFAULT '8' , 
p_inout_i IN OUT INTERVAL DAY TO MINUTE DEFAULT '7' , 
p_log_i IN OUT VARCHAR
) AS
BEGIN
p_inout_i := p_inout_i + '1';
p_log_i := p_log_i || ' , IN = ' || TO_CHAR(p_in_i) || ' , INOUT = ' || TO_CHAR(p_inout_i);
SEND_MSG(p_log_i);
END p_interval_inout_default_i;
END pkg_interval_default_i;
/

//测试 INTERVAL DAY TO MINUTE 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_i1 VARCHAR(200);
BEGIN
v_result_i1 := pkg_interval_default_i.f_interval_default_i(1);
SEND_MSG(v_result_i1);
END;
/

//测试 INTERVAL DAY TO MINUTE 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_i2 VARCHAR;
BEGIN
v_result_i2 := pkg_interval_default_i.f_interval_default_i(2 , '6');
SEND_MSG(v_result_i2);
END;
/

//测试 INTERVAL DAY TO MINUTE IN/IN OUT 参数默认值混合
DECLARE
v_msg_i VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_i.p_interval_inout_default_i(p_log_i => v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_default_j AS 
FUNCTION f_interval_default_j(p_id_j INT , p_interval_j INTERVAL DAY TO SECOND DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_j(
p_in_j IN INTERVAL DAY TO SECOND DEFAULT '8' , 
p_inout_j IN OUT INTERVAL DAY TO SECOND DEFAULT '7' , 
p_log_j IN OUT VARCHAR
);
END pkg_interval_default_j;
/

//创建 INTERVAL DAY TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_j AS
FUNCTION f_interval_default_j(p_id_j INT , p_interval_j INTERVAL DAY TO SECOND DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_j = ' || p_id_j || ' , p_time = ' || TO_CHAR(p_interval_j);
END f_interval_default_j;
PROCEDURE p_interval_inout_default_j(
p_in_j IN INTERVAL DAY TO SECOND DEFAULT '8' , 
p_inout_j IN OUT INTERVAL DAY TO SECOND DEFAULT '7' , 
p_log_j IN OUT VARCHAR
) AS
BEGIN
p_inout_j := p_inout_j + '1';
p_log_j := p_log_j || ' , IN = ' || TO_CHAR(p_in_j) || ' , INOUT = ' || TO_CHAR(p_inout_j);
SEND_MSG(p_log_j);
END p_interval_inout_default_j;
END pkg_interval_default_j;
/

//测试 INTERVAL DAY TO SECOND 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_j1 VARCHAR(200);
BEGIN
v_result_j1 := pkg_interval_default_j.f_interval_default_j(1);
SEND_MSG(v_result_j1);
END;
/

//测试 INTERVAL DAY TO SECOND 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_j2 VARCHAR;
BEGIN
v_result_j2 := pkg_interval_default_j.f_interval_default_j(2 , '6');
SEND_MSG(v_result_j2);
END;
/

//测试 INTERVAL DAY TO SECOND IN/IN OUT 参数默认值混合
DECLARE
v_msg_j VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_j.p_interval_inout_default_j(p_log_j => v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_default_k AS 
FUNCTION f_interval_default_k(p_id_k INT , p_interval_k INTERVAL HOUR TO MINUTE DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_k(
p_in_k IN INTERVAL HOUR TO MINUTE DEFAULT '8' , 
p_inout_k IN OUT INTERVAL HOUR TO MINUTE DEFAULT '7' , 
p_log_k IN OUT VARCHAR
);
END pkg_interval_default_k;
/

//创建 INTERVAL HOUR TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_k AS
FUNCTION f_interval_default_k(p_id_k INT , p_interval_k INTERVAL HOUR TO MINUTE DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_k = ' || p_id_k || ' , p_time = ' || TO_CHAR(p_interval_k);
END f_interval_default_k;
PROCEDURE p_interval_inout_default_k(
p_in_k IN INTERVAL HOUR TO MINUTE DEFAULT '8' , 
p_inout_k IN OUT INTERVAL HOUR TO MINUTE DEFAULT '7' , 
p_log_k IN OUT VARCHAR
) AS
BEGIN
p_inout_k := p_inout_k + '1';
p_log_k := p_log_k || ' , IN = ' || TO_CHAR(p_in_k) || ' , INOUT = ' || TO_CHAR(p_inout_k);
SEND_MSG(p_log_k);
END p_interval_inout_default_k;
END pkg_interval_default_k;
/

//测试 INTERVAL HOUR TO MINUTE 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_k1 VARCHAR(200);
BEGIN
v_result_k1 := pkg_interval_default_k.f_interval_default_k(1);
SEND_MSG(v_result_k1);
END;
/

//测试 INTERVAL HOUR TO MINUTE 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_k2 VARCHAR;
BEGIN
v_result_k2 := pkg_interval_default_k.f_interval_default_k(2 , '6');
SEND_MSG(v_result_k2);
END;
/

//测试 INTERVAL HOUR TO MINUTE IN/IN OUT 参数默认值混合
DECLARE
v_msg_k VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_k.p_interval_inout_default_k(p_log_k => v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_default_l AS 
FUNCTION f_interval_default_l(p_id_l INT , p_interval_l INTERVAL HOUR TO SECOND DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_l(
p_in_l IN INTERVAL HOUR TO SECOND DEFAULT '8' , 
p_inout_l IN OUT INTERVAL HOUR TO SECOND DEFAULT '7' , 
p_log_l IN OUT VARCHAR
);
END pkg_interval_default_l;
/

//创建 INTERVAL HOUR TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_l AS
FUNCTION f_interval_default_l(p_id_l INT , p_interval_l INTERVAL HOUR TO SECOND DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_l = ' || p_id_l || ' , p_time = ' || TO_CHAR(p_interval_l);
END f_interval_default_l;
PROCEDURE p_interval_inout_default_l(
p_in_l IN INTERVAL HOUR TO SECOND DEFAULT '8' , 
p_inout_l IN OUT INTERVAL HOUR TO SECOND DEFAULT '7' , 
p_log_l IN OUT VARCHAR
) AS
BEGIN
p_inout_l := p_inout_l + '1';
p_log_l := p_log_l || ' , IN = ' || TO_CHAR(p_in_l) || ' , INOUT = ' || TO_CHAR(p_inout_l);
SEND_MSG(p_log_l);
END p_interval_inout_default_l;
END pkg_interval_default_l;
/

//测试 INTERVAL HOUR TO SECOND 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_l1 VARCHAR(200);
BEGIN
v_result_l1 := pkg_interval_default_l.f_interval_default_l(1);
SEND_MSG(v_result_l1);
END;
/

//测试 INTERVAL HOUR TO SECOND 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_l2 VARCHAR;
BEGIN
v_result_l2 := pkg_interval_default_l.f_interval_default_l(2 , '6');
SEND_MSG(v_result_l2);
END;
/

//测试 INTERVAL HOUR TO SECOND IN/IN OUT 参数默认值混合
DECLARE
v_msg_l VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_l.p_interval_inout_default_l(p_log_l => v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_default_m AS 
FUNCTION f_interval_default_m(p_id_m INT , p_interval_m INTERVAL MINUTE TO SECOND DEFAULT '9') RETURN VARCHAR;
PROCEDURE p_interval_inout_default_m(
p_in_m IN INTERVAL MINUTE TO SECOND DEFAULT '8' , 
p_inout_m IN OUT INTERVAL MINUTE TO SECOND DEFAULT '7' , 
p_log_m IN OUT VARCHAR
);
END pkg_interval_default_m;
/

//创建 INTERVAL MINUTE TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_default_m AS
FUNCTION f_interval_default_m(p_id_m INT , p_interval_m INTERVAL MINUTE TO SECOND DEFAULT '9') RETURN VARCHAR AS
BEGIN
RETURN 'p_id_m = ' || p_id_m || ' , p_time = ' || TO_CHAR(p_interval_m);
END f_interval_default_m;
PROCEDURE p_interval_inout_default_m(
p_in_m IN INTERVAL MINUTE TO SECOND DEFAULT '8' , 
p_inout_m IN OUT INTERVAL MINUTE TO SECOND DEFAULT '7' , 
p_log_m IN OUT VARCHAR
) AS
BEGIN
p_inout_m := p_inout_m + '1';
p_log_m := p_log_m || ' , IN = ' || TO_CHAR(p_in_m) || ' , INOUT = ' || TO_CHAR(p_inout_m);
SEND_MSG(p_log_m);
END p_interval_inout_default_m;
END pkg_interval_default_m;
/

//测试 INTERVAL MINUTE TO SECOND 参数默认值 (不传值 , 使用默认值)
DECLARE
v_result_m1 VARCHAR(200);
BEGIN
v_result_m1 := pkg_interval_default_m.f_interval_default_m(1);
SEND_MSG(v_result_m1);
END;
/

//测试 INTERVAL MINUTE TO SECOND 参数默认值 (传值 , 覆盖默认值)
DECLARE
v_result_m2 VARCHAR;
BEGIN
v_result_m2 := pkg_interval_default_m.f_interval_default_m(2 , '6');
SEND_MSG(v_result_m2);
END;
/

//测试 INTERVAL MINUTE TO SECOND IN/IN OUT 参数默认值混合
DECLARE
v_msg_m VARCHAR(200) := 'INTERVAL_DEFAULT_MIX';
BEGIN
pkg_interval_default_m.p_interval_inout_default_m(p_log_m => v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_default_a;
DROP PACKAGE pkg_interval_default_b;
DROP PACKAGE pkg_interval_default_c;
DROP PACKAGE pkg_interval_default_d;
DROP PACKAGE pkg_interval_default_e;
DROP PACKAGE pkg_interval_default_f;
DROP PACKAGE pkg_interval_default_g;
DROP PACKAGE pkg_interval_default_h;
DROP PACKAGE pkg_interval_default_i;
DROP PACKAGE pkg_interval_default_j;
DROP PACKAGE pkg_interval_default_k;
DROP PACKAGE pkg_interval_default_l;
DROP PACKAGE pkg_interval_default_m;