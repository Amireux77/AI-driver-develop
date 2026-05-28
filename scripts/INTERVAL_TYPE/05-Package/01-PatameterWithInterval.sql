!4 XG-TYPE-INTERVAL-PKG-001 INTERVAL IN/OUT/IN OUT 参数覆盖

//创建 INTERVAL YEAR 包
CREATE OR REPLACE PACKAGE pkg_interval_param_a AS 
FUNCTION f_interval_in_a(p_interval_a IN INTERVAL YEAR) RETURN VARCHAR;
PROCEDURE p_interval_out_a(p_out_interval_a OUT INTERVAL YEAR);
PROCEDURE p_interval_inout_a(p_inout_interval_a IN OUT INTERVAL YEAR);
PROCEDURE p_interval_all_a(
p_in_a IN INTERVAL YEAR , 
p_out_a OUT INTERVAL YEAR , 
p_inout_a IN OUT INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
);
END pkg_interval_param_a;
/

//创建 INTERVAL YEAR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_a AS
FUNCTION f_interval_in_a(p_interval_a IN INTERVAL YEAR) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_a);
END f_interval_in_a;
PROCEDURE p_interval_out_a(p_out_interval_a OUT INTERVAL YEAR) AS
BEGIN
p_out_interval_a := '9';
END p_interval_out_a;
PROCEDURE p_interval_inout_a(p_inout_interval_a IN OUT INTERVAL YEAR) AS
BEGIN
p_inout_interval_a := p_inout_interval_a + '1';
END p_interval_inout_a;
PROCEDURE p_interval_all_a(
p_in_a IN INTERVAL YEAR , 
p_out_a OUT INTERVAL YEAR , 
p_inout_a IN OUT INTERVAL YEAR , 
p_log_a IN OUT VARCHAR
) AS
BEGIN
p_out_a := p_in_a;
p_inout_a :=p_inout_a + '1';
p_log_a := p_log_a || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_a);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_a));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_a));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_a));
END p_interval_all_a;
END pkg_interval_param_a;
/

//测试  INTERVAL YEAR 类型 IN 参数
DECLARE
v_result_a VARCHAR(200);
BEGIN
v_result_a := pkg_interval_param_a.f_interval_in_a('9');
SEND_MSG(v_result_a);
END;
/

//测试 INTERVAL YEAR 类型 OUT 参数
DECLARE
v_out_a INTERVAL YEAR;
BEGIN
pkg_interval_param_a.p_interval_out_a(v_out_a);
SEND_MSG('OUT INTERVAL YEAR : ' || TO_CHAR(v_out_a));
END;
/

//测试 INTERVAL YEAR 类型 IN OUT 参数
DECLARE
v_inout_a INTERVAL YEAR := '1'::INTERVAL YEAR;
BEGIN
pkg_interval_param_a.p_interval_inout_a(v_inout_a);
SEND_MSG('INOUT INTERVAL YEAR : ' || TO_CHAR(v_inout_a));
END;
/

//测试 INTERVAL YEAR 类型三种参数混合
DECLARE
v_in_a INTERVAL YEAR := '1'::INTERVAL YEAR;
v_out_a INTERVAL YEAR;
v_inout_a INTERVAL YEAR := '6'::INTERVAL YEAR;
v_log_a VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_a.p_interval_all_a(v_in_a , v_out_a , v_inout_a , v_log_a);
END;
/

//创建 INTERVAL MONTH 包
CREATE OR REPLACE PACKAGE pkg_interval_param_b AS 
FUNCTION f_interval_in_b(p_interval_b IN INTERVAL MONTH) RETURN VARCHAR;
PROCEDURE p_interval_out_b(p_out_interval_b OUT INTERVAL MONTH);
PROCEDURE p_interval_inout_b(p_inout_interval_b IN OUT INTERVAL MONTH);
PROCEDURE p_interval_all_b(
p_in_b IN INTERVAL MONTH , 
p_out_b OUT INTERVAL MONTH , 
p_inout_b IN OUT INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
);
END pkg_interval_param_b;
/

//创建 INTERVAL MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_b AS
FUNCTION f_interval_in_b(p_interval_b IN INTERVAL MONTH) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_b);
END f_interval_in_b;
PROCEDURE p_interval_out_b(p_out_interval_b OUT INTERVAL MONTH) AS
BEGIN
p_out_interval_b := '9';
END p_interval_out_b;
PROCEDURE p_interval_inout_b(p_inout_interval_b IN OUT INTERVAL MONTH) AS
BEGIN
p_inout_interval_b := p_inout_interval_b + '1';
END p_interval_inout_b;
PROCEDURE p_interval_all_b(
p_in_b IN INTERVAL MONTH , 
p_out_b OUT INTERVAL MONTH , 
p_inout_b IN OUT INTERVAL MONTH , 
p_log_b IN OUT VARCHAR
) AS
BEGIN
p_out_b := p_in_b;
p_inout_b :=p_inout_b + '1';
p_log_b := p_log_b || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_b);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_b));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_b));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_b));
END p_interval_all_b;
END pkg_interval_param_b;
/

//测试  INTERVAL MONTH 类型 IN 参数
DECLARE
v_result_b VARCHAR(200);
BEGIN
v_result_b := pkg_interval_param_b.f_interval_in_b('9');
SEND_MSG(v_result_b);
END;
/

//测试 INTERVAL MONTH 类型 OUT 参数
DECLARE
v_out_b INTERVAL MONTH;
BEGIN
pkg_interval_param_b.p_interval_out_b(v_out_b);
SEND_MSG('OUT INTERVAL MONTH : ' || TO_CHAR(v_out_b));
END;
/

//测试 INTERVAL MONTH 类型 IN OUT 参数
DECLARE
v_inout_b INTERVAL MONTH := '1'::INTERVAL MONTH;
BEGIN
pkg_interval_param_b.p_interval_inout_b(v_inout_b);
SEND_MSG('INOUT INTERVAL MONTH : ' || TO_CHAR(v_inout_b));
END;
/

//测试 INTERVAL MONTH 类型三种参数混合
DECLARE
v_in_b INTERVAL MONTH := '1'::INTERVAL MONTH;
v_out_b INTERVAL MONTH;
v_inout_b INTERVAL MONTH := '6'::INTERVAL MONTH;
v_log_b VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_b.p_interval_all_b(v_in_b , v_out_b , v_inout_b , v_log_b);
END;
/

//创建 INTERVAL DAY 包
CREATE OR REPLACE PACKAGE pkg_interval_param_c AS 
FUNCTION f_interval_in_c(p_interval_c IN INTERVAL DAY) RETURN VARCHAR;
PROCEDURE p_interval_out_c(p_out_interval_c OUT INTERVAL DAY);
PROCEDURE p_interval_inout_c(p_inout_interval_c IN OUT INTERVAL DAY);
PROCEDURE p_interval_all_c(
p_in_c IN INTERVAL DAY , 
p_out_c OUT INTERVAL DAY , 
p_inout_c IN OUT INTERVAL DAY , 
p_log_c IN OUT VARCHAR
);
END pkg_interval_param_c;
/

//创建 INTERVAL DAY 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_c AS
FUNCTION f_interval_in_c(p_interval_c IN INTERVAL DAY) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_c);
END f_interval_in_c;
PROCEDURE p_interval_out_c(p_out_interval_c OUT INTERVAL DAY) AS
BEGIN
p_out_interval_c := '9';
END p_interval_out_c;
PROCEDURE p_interval_inout_c(p_inout_interval_c IN OUT INTERVAL DAY) AS
BEGIN
p_inout_interval_c := p_inout_interval_c + '1';
END p_interval_inout_c;
PROCEDURE p_interval_all_c(
p_in_c IN INTERVAL DAY , 
p_out_c OUT INTERVAL DAY , 
p_inout_c IN OUT INTERVAL DAY , 
p_log_c IN OUT VARCHAR
) AS
BEGIN
p_out_c := p_in_c;
p_inout_c :=p_inout_c + '1';
p_log_c := p_log_c || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_c);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_c));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_c));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_c));
END p_interval_all_c;
END pkg_interval_param_c;
/

//测试  INTERVAL DAY 类型 IN 参数
DECLARE
v_result_c VARCHAR(200);
BEGIN
v_result_c := pkg_interval_param_c.f_interval_in_c('9');
SEND_MSG(v_result_c);
END;
/

//测试 INTERVAL DAY 类型 OUT 参数
DECLARE
v_out_c INTERVAL DAY;
BEGIN
pkg_interval_param_c.p_interval_out_c(v_out_c);
SEND_MSG('OUT INTERVAL DAY : ' || TO_CHAR(v_out_c));
END;
/

//测试 INTERVAL DAY 类型 IN OUT 参数
DECLARE
v_inout_c INTERVAL DAY := '1'::INTERVAL DAY;
BEGIN
pkg_interval_param_c.p_interval_inout_c(v_inout_c);
SEND_MSG('INOUT INTERVAL DAY : ' || TO_CHAR(v_inout_c));
END;
/

//测试 INTERVAL DAY 类型三种参数混合
DECLARE
v_in_c INTERVAL DAY := '1'::INTERVAL DAY;
v_out_c INTERVAL DAY;
v_inout_c INTERVAL DAY := '6'::INTERVAL DAY;
v_log_c VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_c.p_interval_all_c(v_in_c , v_out_c , v_inout_c , v_log_c);
END;
/

//创建 INTERVAL HOUR 包
CREATE OR REPLACE PACKAGE pkg_interval_param_d AS 
FUNCTION f_interval_in_d(p_interval_d IN INTERVAL HOUR) RETURN VARCHAR;
PROCEDURE p_interval_out_d(p_out_interval_d OUT INTERVAL HOUR);
PROCEDURE p_interval_inout_d(p_inout_interval_d IN OUT INTERVAL HOUR);
PROCEDURE p_interval_all_d(
p_in_d IN INTERVAL HOUR , 
p_out_d OUT INTERVAL HOUR , 
p_inout_d IN OUT INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
);
END pkg_interval_param_d;
/

//创建 INTERVAL HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_d AS
FUNCTION f_interval_in_d(p_interval_d IN INTERVAL HOUR) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_d);
END f_interval_in_d;
PROCEDURE p_interval_out_d(p_out_interval_d OUT INTERVAL HOUR) AS
BEGIN
p_out_interval_d := '9';
END p_interval_out_d;
PROCEDURE p_interval_inout_d(p_inout_interval_d IN OUT INTERVAL HOUR) AS
BEGIN
p_inout_interval_d := p_inout_interval_d + '1';
END p_interval_inout_d;
PROCEDURE p_interval_all_d(
p_in_d IN INTERVAL HOUR , 
p_out_d OUT INTERVAL HOUR , 
p_inout_d IN OUT INTERVAL HOUR , 
p_log_d IN OUT VARCHAR
) AS
BEGIN
p_out_d := p_in_d;
p_inout_d :=p_inout_d + '1';
p_log_d := p_log_d || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_d);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_d));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_d));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_d));
END p_interval_all_d;
END pkg_interval_param_d;
/

//测试  INTERVAL HOUR 类型 IN 参数
DECLARE
v_result_d VARCHAR(200);
BEGIN
v_result_d := pkg_interval_param_d.f_interval_in_d('9');
SEND_MSG(v_result_d);
END;
/

//测试 INTERVAL HOUR 类型 OUT 参数
DECLARE
v_out_d INTERVAL HOUR;
BEGIN
pkg_interval_param_d.p_interval_out_d(v_out_d);
SEND_MSG('OUT INTERVAL HOUR : ' || TO_CHAR(v_out_d));
END;
/

//测试 INTERVAL HOUR 类型 IN OUT 参数
DECLARE
v_inout_d INTERVAL HOUR := '1'::INTERVAL HOUR;
BEGIN
pkg_interval_param_d.p_interval_inout_d(v_inout_d);
SEND_MSG('INOUT INTERVAL HOUR : ' || TO_CHAR(v_inout_d));
END;
/

//测试 INTERVAL HOUR 类型三种参数混合
DECLARE
v_in_d INTERVAL HOUR := '1'::INTERVAL HOUR;
v_out_d INTERVAL HOUR;
v_inout_d INTERVAL HOUR := '6'::INTERVAL HOUR;
v_log_d VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_d.p_interval_all_d(v_in_d , v_out_d , v_inout_d , v_log_d);
END;
/

//创建 INTERVAL MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_param_e AS 
FUNCTION f_interval_in_e(p_interval_e IN INTERVAL MINUTE) RETURN VARCHAR;
PROCEDURE p_interval_out_e(p_out_interval_e OUT INTERVAL MINUTE);
PROCEDURE p_interval_inout_e(p_inout_interval_e IN OUT INTERVAL MINUTE);
PROCEDURE p_interval_all_e(
p_in_e IN INTERVAL MINUTE , 
p_out_e OUT INTERVAL MINUTE , 
p_inout_e IN OUT INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
);
END pkg_interval_param_e;
/

//创建 INTERVAL MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_e AS
FUNCTION f_interval_in_e(p_interval_e IN INTERVAL MINUTE) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_e);
END f_interval_in_e;
PROCEDURE p_interval_out_e(p_out_interval_e OUT INTERVAL MINUTE) AS
BEGIN
p_out_interval_e := '9';
END p_interval_out_e;
PROCEDURE p_interval_inout_e(p_inout_interval_e IN OUT INTERVAL MINUTE) AS
BEGIN
p_inout_interval_e := p_inout_interval_e + '1';
END p_interval_inout_e;
PROCEDURE p_interval_all_e(
p_in_e IN INTERVAL MINUTE , 
p_out_e OUT INTERVAL MINUTE , 
p_inout_e IN OUT INTERVAL MINUTE , 
p_log_e IN OUT VARCHAR
) AS
BEGIN
p_out_e := p_in_e;
p_inout_e :=p_inout_e + '1';
p_log_e := p_log_e || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_e);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_e));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_e));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_e));
END p_interval_all_e;
END pkg_interval_param_e;
/

//测试  INTERVAL MINUTE 类型 IN 参数
DECLARE
v_result_e VARCHAR(200);
BEGIN
v_result_e := pkg_interval_param_e.f_interval_in_e('9');
SEND_MSG(v_result_e);
END;
/

//测试 INTERVAL MINUTE 类型 OUT 参数
DECLARE
v_out_e INTERVAL MINUTE;
BEGIN
pkg_interval_param_e.p_interval_out_e(v_out_e);
SEND_MSG('OUT INTERVAL MINUTE : ' || TO_CHAR(v_out_e));
END;
/

//测试 INTERVAL MINUTE 类型 IN OUT 参数
DECLARE
v_inout_e INTERVAL MINUTE := '1'::INTERVAL MINUTE;
BEGIN
pkg_interval_param_e.p_interval_inout_e(v_inout_e);
SEND_MSG('INOUT INTERVAL MINUTE : ' || TO_CHAR(v_inout_e));
END;
/

//测试 INTERVAL MINUTE 类型三种参数混合
DECLARE
v_in_e INTERVAL MINUTE := '1'::INTERVAL MINUTE;
v_out_e INTERVAL MINUTE;
v_inout_e INTERVAL MINUTE := '6'::INTERVAL MINUTE;
v_log_e VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_e.p_interval_all_e(v_in_e , v_out_e , v_inout_e , v_log_e);
END;
/

//创建 INTERVAL SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_param_f AS 
FUNCTION f_interval_in_f(p_interval_f IN INTERVAL SECOND) RETURN VARCHAR;
PROCEDURE p_interval_out_f(p_out_interval_f OUT INTERVAL SECOND);
PROCEDURE p_interval_inout_f(p_inout_interval_f IN OUT INTERVAL SECOND);
PROCEDURE p_interval_all_f(
p_in_f IN INTERVAL SECOND , 
p_out_f OUT INTERVAL SECOND , 
p_inout_f IN OUT INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
);
END pkg_interval_param_f;
/

//创建 INTERVAL SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_f AS
FUNCTION f_interval_in_f(p_interval_f IN INTERVAL SECOND) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_f);
END f_interval_in_f;
PROCEDURE p_interval_out_f(p_out_interval_f OUT INTERVAL SECOND) AS
BEGIN
p_out_interval_f := '9';
END p_interval_out_f;
PROCEDURE p_interval_inout_f(p_inout_interval_f IN OUT INTERVAL SECOND) AS
BEGIN
p_inout_interval_f := p_inout_interval_f + '1';
END p_interval_inout_f;
PROCEDURE p_interval_all_f(
p_in_f IN INTERVAL SECOND , 
p_out_f OUT INTERVAL SECOND , 
p_inout_f IN OUT INTERVAL SECOND , 
p_log_f IN OUT VARCHAR
) AS
BEGIN
p_out_f := p_in_f;
p_inout_f :=p_inout_f + '1';
p_log_f := p_log_f || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_f);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_f));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_f));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_f));
END p_interval_all_f;
END pkg_interval_param_f;
/

//测试  INTERVAL SECOND 类型 IN 参数
DECLARE
v_result_f VARCHAR(200);
BEGIN
v_result_f := pkg_interval_param_f.f_interval_in_f('9');
SEND_MSG(v_result_f);
END;
/

//测试 INTERVAL SECOND 类型 OUT 参数
DECLARE
v_out_f INTERVAL SECOND;
BEGIN
pkg_interval_param_f.p_interval_out_f(v_out_f);
SEND_MSG('OUT INTERVAL SECOND : ' || TO_CHAR(v_out_f));
END;
/

//测试 INTERVAL SECOND 类型 IN OUT 参数
DECLARE
v_inout_f INTERVAL SECOND := '1'::INTERVAL SECOND;
BEGIN
pkg_interval_param_f.p_interval_inout_f(v_inout_f);
SEND_MSG('INOUT INTERVAL SECOND : ' || TO_CHAR(v_inout_f));
END;
/

//测试 INTERVAL SECOND 类型三种参数混合
DECLARE
v_in_f INTERVAL SECOND := '1'::INTERVAL SECOND;
v_out_f INTERVAL SECOND;
v_inout_f INTERVAL SECOND := '6'::INTERVAL SECOND;
v_log_f VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_f.p_interval_all_f(v_in_f , v_out_f , v_inout_f , v_log_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 包
CREATE OR REPLACE PACKAGE pkg_interval_param_g AS 
FUNCTION f_interval_in_g(p_interval_g IN INTERVAL YEAR TO MONTH) RETURN VARCHAR;
PROCEDURE p_interval_out_g(p_out_interval_g OUT INTERVAL YEAR TO MONTH);
PROCEDURE p_interval_inout_g(p_inout_interval_g IN OUT INTERVAL YEAR TO MONTH);
PROCEDURE p_interval_all_g(
p_in_g IN INTERVAL YEAR TO MONTH , 
p_out_g OUT INTERVAL YEAR TO MONTH , 
p_inout_g IN OUT INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
);
END pkg_interval_param_g;
/

//创建 INTERVAL YEAR TO MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_g AS
FUNCTION f_interval_in_g(p_interval_g IN INTERVAL YEAR TO MONTH) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_g);
END f_interval_in_g;
PROCEDURE p_interval_out_g(p_out_interval_g OUT INTERVAL YEAR TO MONTH) AS
BEGIN
p_out_interval_g := '9';
END p_interval_out_g;
PROCEDURE p_interval_inout_g(p_inout_interval_g IN OUT INTERVAL YEAR TO MONTH) AS
BEGIN
p_inout_interval_g := p_inout_interval_g + '1';
END p_interval_inout_g;
PROCEDURE p_interval_all_g(
p_in_g IN INTERVAL YEAR TO MONTH , 
p_out_g OUT INTERVAL YEAR TO MONTH , 
p_inout_g IN OUT INTERVAL YEAR TO MONTH , 
p_log_g IN OUT VARCHAR
) AS
BEGIN
p_out_g := p_in_g;
p_inout_g :=p_inout_g + '1';
p_log_g := p_log_g || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_g);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_g));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_g));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_g));
END p_interval_all_g;
END pkg_interval_param_g;
/

//测试  INTERVAL YEAR TO MONTH 类型 IN 参数
DECLARE
v_result_g VARCHAR(200);
BEGIN
v_result_g := pkg_interval_param_g.f_interval_in_g('9');
SEND_MSG(v_result_g);
END;
/

//测试 INTERVAL YEAR TO MONTH 类型 OUT 参数
DECLARE
v_out_g INTERVAL YEAR TO MONTH;
BEGIN
pkg_interval_param_g.p_interval_out_g(v_out_g);
SEND_MSG('OUT INTERVAL YEAR TO MONTH : ' || TO_CHAR(v_out_g));
END;
/

//测试 INTERVAL YEAR TO MONTH 类型 IN OUT 参数
DECLARE
v_inout_g INTERVAL YEAR TO MONTH := '1'::INTERVAL YEAR TO MONTH;
BEGIN
pkg_interval_param_g.p_interval_inout_g(v_inout_g);
SEND_MSG('INOUT INTERVAL YEAR :  TO MONTH' || TO_CHAR(v_inout_g));
END;
/

//测试 INTERVAL YEAR TO MONTH 类型三种参数混合
DECLARE
v_in_g INTERVAL YEAR TO MONTH := '1'::INTERVAL YEAR TO MONTH;
v_out_g INTERVAL YEAR TO MONTH;
v_inout_g INTERVAL YEAR TO MONTH := '6'::INTERVAL YEAR TO MONTH;
v_log_g VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_g.p_interval_all_g(v_in_g , v_out_g , v_inout_g , v_log_g);
END;
/

//创建 INTERVAL DAY TO HOUR 包
CREATE OR REPLACE PACKAGE pkg_interval_param_h AS 
FUNCTION f_interval_in_h(p_interval_h IN INTERVAL DAY TO HOUR) RETURN VARCHAR;
PROCEDURE p_interval_out_h(p_out_interval_h OUT INTERVAL DAY TO HOUR);
PROCEDURE p_interval_inout_h(p_inout_interval_h IN OUT INTERVAL DAY TO HOUR);
PROCEDURE p_interval_all_h(
p_in_h IN INTERVAL DAY TO HOUR , 
p_out_h OUT INTERVAL DAY TO HOUR , 
p_inout_h IN OUT INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
);
END pkg_interval_param_h;
/

//创建 INTERVAL DAY TO HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_h AS
FUNCTION f_interval_in_h(p_interval_h IN INTERVAL DAY TO HOUR) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_h);
END f_interval_in_h;
PROCEDURE p_interval_out_h(p_out_interval_h OUT INTERVAL DAY TO HOUR) AS
BEGIN
p_out_interval_h := '9';
END p_interval_out_h;
PROCEDURE p_interval_inout_h(p_inout_interval_h IN OUT INTERVAL DAY TO HOUR) AS
BEGIN
p_inout_interval_h := p_inout_interval_h + '1';
END p_interval_inout_h;
PROCEDURE p_interval_all_h(
p_in_h IN INTERVAL DAY TO HOUR , 
p_out_h OUT INTERVAL DAY TO HOUR , 
p_inout_h IN OUT INTERVAL DAY TO HOUR , 
p_log_h IN OUT VARCHAR
) AS
BEGIN
p_out_h := p_in_h;
p_inout_h :=p_inout_h + '1';
p_log_h := p_log_h || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_h);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_h));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_h));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_h));
END p_interval_all_h;
END pkg_interval_param_h;
/

//测试  INTERVAL DAY TO HOUR 类型 IN 参数
DECLARE
v_result_h VARCHAR(200);
BEGIN
v_result_h := pkg_interval_param_h.f_interval_in_h('9');
SEND_MSG(v_result_h);
END;
/

//测试 INTERVAL DAY TO HOUR 类型 OUT 参数
DECLARE
v_out_h INTERVAL DAY TO HOUR;
BEGIN
pkg_interval_param_h.p_interval_out_h(v_out_h);
SEND_MSG('OUT INTERVAL DAY TO HOUR : ' || TO_CHAR(v_out_h));
END;
/

//测试 INTERVAL DAY TO HOUR 类型 IN OUT 参数
DECLARE
v_inout_h INTERVAL DAY TO HOUR := '1'::INTERVAL DAY TO HOUR;
BEGIN
pkg_interval_param_h.p_interval_inout_h(v_inout_h);
SEND_MSG('INOUT INTERVAL DAY  : TO HOUR' || TO_CHAR(v_inout_h));
END;
/

//测试 INTERVAL DAY TO HOUR 类型三种参数混合
DECLARE
v_in_h INTERVAL DAY TO HOUR := '1'::INTERVAL DAY TO HOUR;
v_out_h INTERVAL DAY TO HOUR;
v_inout_h INTERVAL DAY TO HOUR := '6'::INTERVAL DAY TO HOUR;
v_log_h VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_h.p_interval_all_h(v_in_h , v_out_h , v_inout_h , v_log_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_param_i AS 
FUNCTION f_interval_in_i(p_interval_i IN INTERVAL DAY TO MINUTE) RETURN VARCHAR;
PROCEDURE p_interval_out_i(p_out_interval_i OUT INTERVAL DAY TO MINUTE);
PROCEDURE p_interval_inout_i(p_inout_interval_i IN OUT INTERVAL DAY TO MINUTE);
PROCEDURE p_interval_all_i(
p_in_i IN INTERVAL DAY TO MINUTE , 
p_out_i OUT INTERVAL DAY TO MINUTE , 
p_inout_i IN OUT INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
);
END pkg_interval_param_i;
/

//创建 INTERVAL DAY TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_i AS
FUNCTION f_interval_in_i(p_interval_i IN INTERVAL DAY TO MINUTE) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_i);
END f_interval_in_i;
PROCEDURE p_interval_out_i(p_out_interval_i OUT INTERVAL DAY TO MINUTE) AS
BEGIN
p_out_interval_i := '9';
END p_interval_out_i;
PROCEDURE p_interval_inout_i(p_inout_interval_i IN OUT INTERVAL DAY TO MINUTE) AS
BEGIN
p_inout_interval_i := p_inout_interval_i + '1';
END p_interval_inout_i;
PROCEDURE p_interval_all_i(
p_in_i IN INTERVAL DAY TO MINUTE , 
p_out_i OUT INTERVAL DAY TO MINUTE , 
p_inout_i IN OUT INTERVAL DAY TO MINUTE , 
p_log_i IN OUT VARCHAR
) AS
BEGIN
p_out_i := p_in_i;
p_inout_i :=p_inout_i + '1';
p_log_i := p_log_i || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_i);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_i));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_i));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_i));
END p_interval_all_i;
END pkg_interval_param_i;
/

//测试  INTERVAL DAY TO MINUTE 类型 IN 参数
DECLARE
v_result_i VARCHAR(200);
BEGIN
v_result_i := pkg_interval_param_i.f_interval_in_i('9');
SEND_MSG(v_result_i);
END;
/

//测试 INTERVAL DAY TO MINUTE 类型 OUT 参数
DECLARE
v_out_i INTERVAL DAY TO MINUTE;
BEGIN
pkg_interval_param_i.p_interval_out_i(v_out_i);
SEND_MSG('OUT INTERVAL DAY TO MINUTE : ' || TO_CHAR(v_out_i));
END;
/

//测试 INTERVAL DAY TO MINUTE 类型 IN OUT 参数
DECLARE
v_inout_i INTERVAL DAY TO MINUTE := '1'::INTERVAL DAY TO MINUTE;
BEGIN
pkg_interval_param_i.p_interval_inout_i(v_inout_i);
SEND_MSG('INOUT INTERVAL DAY TO MINUTE : ' || TO_CHAR(v_inout_i));
END;
/

//测试 INTERVAL DAY TO MINUTE 类型三种参数混合
DECLARE
v_in_i INTERVAL DAY TO MINUTE := '1'::INTERVAL DAY TO MINUTE;
v_out_i INTERVAL DAY TO MINUTE;
v_inout_i INTERVAL DAY TO MINUTE := '6'::INTERVAL DAY TO MINUTE;
v_log_i VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_i.p_interval_all_i(v_in_i , v_out_i , v_inout_i , v_log_i);
END;
/

//创建 INTERVAL DAY TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_param_j AS 
FUNCTION f_interval_in_j(p_interval_j IN INTERVAL DAY TO SECOND) RETURN VARCHAR;
PROCEDURE p_interval_out_j(p_out_interval_j OUT INTERVAL DAY TO SECOND);
PROCEDURE p_interval_inout_j(p_inout_interval_j IN OUT INTERVAL DAY TO SECOND);
PROCEDURE p_interval_all_j(
p_in_j IN INTERVAL DAY TO SECOND , 
p_out_j OUT INTERVAL DAY TO SECOND , 
p_inout_j IN OUT INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
);
END pkg_interval_param_j;
/

//创建 INTERVAL DAY TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_j AS
FUNCTION f_interval_in_j(p_interval_j IN INTERVAL DAY TO SECOND) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_j);
END f_interval_in_j;
PROCEDURE p_interval_out_j(p_out_interval_j OUT INTERVAL DAY TO SECOND) AS
BEGIN
p_out_interval_j := '9';
END p_interval_out_j;
PROCEDURE p_interval_inout_j(p_inout_interval_j IN OUT INTERVAL DAY TO SECOND) AS
BEGIN
p_inout_interval_j := p_inout_interval_j + '1';
END p_interval_inout_j;
PROCEDURE p_interval_all_j(
p_in_j IN INTERVAL DAY TO SECOND , 
p_out_j OUT INTERVAL DAY TO SECOND , 
p_inout_j IN OUT INTERVAL DAY TO SECOND , 
p_log_j IN OUT VARCHAR
) AS
BEGIN
p_out_j := p_in_j;
p_inout_j :=p_inout_j + '1';
p_log_j := p_log_j || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_j);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_j));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_j));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_j));
END p_interval_all_j;
END pkg_interval_param_j;
/

//测试  INTERVAL DAY TO SECOND 类型 IN 参数
DECLARE
v_result_j VARCHAR(200);
BEGIN
v_result_j := pkg_interval_param_j.f_interval_in_j('9');
SEND_MSG(v_result_j);
END;
/

//测试 INTERVAL DAY TO SECOND 类型 OUT 参数
DECLARE
v_out_j INTERVAL DAY TO SECOND;
BEGIN
pkg_interval_param_j.p_interval_out_j(v_out_j);
SEND_MSG('OUT INTERVAL DAY TO SECOND : ' || TO_CHAR(v_out_j));
END;
/

//测试 INTERVAL DAY TO SECOND 类型 IN OUT 参数
DECLARE
v_inout_j INTERVAL DAY TO SECOND := '1'::INTERVAL DAY TO SECOND;
BEGIN
pkg_interval_param_j.p_interval_inout_j(v_inout_j);
SEND_MSG('INOUT INTERVAL DAY TO SECOND : ' || TO_CHAR(v_inout_j));
END;
/

//测试 INTERVAL DAY TO SECOND 类型三种参数混合
DECLARE
v_in_j INTERVAL DAY TO SECOND := '1'::INTERVAL DAY TO SECOND;
v_out_j INTERVAL DAY TO SECOND;
v_inout_j INTERVAL DAY TO SECOND := '6'::INTERVAL DAY TO SECOND;
v_log_j VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_j.p_interval_all_j(v_in_j , v_out_j , v_inout_j , v_log_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 包
CREATE OR REPLACE PACKAGE pkg_interval_param_k AS 
FUNCTION f_interval_in_k(p_interval_k IN INTERVAL HOUR TO MINUTE) RETURN VARCHAR;
PROCEDURE p_interval_out_k(p_out_interval_k OUT INTERVAL HOUR TO MINUTE);
PROCEDURE p_interval_inout_k(p_inout_interval_k IN OUT INTERVAL HOUR TO MINUTE);
PROCEDURE p_interval_all_k(
p_in_k IN INTERVAL HOUR TO MINUTE , 
p_out_k OUT INTERVAL HOUR TO MINUTE , 
p_inout_k IN OUT INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
);
END pkg_interval_param_k;
/

//创建 INTERVAL HOUR TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_k AS
FUNCTION f_interval_in_k(p_interval_k IN INTERVAL HOUR TO MINUTE) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_k);
END f_interval_in_k;
PROCEDURE p_interval_out_k(p_out_interval_k OUT INTERVAL HOUR TO MINUTE) AS
BEGIN
p_out_interval_k := '9';
END p_interval_out_k;
PROCEDURE p_interval_inout_k(p_inout_interval_k IN OUT INTERVAL HOUR TO MINUTE) AS
BEGIN
p_inout_interval_k := p_inout_interval_k + '1';
END p_interval_inout_k;
PROCEDURE p_interval_all_k(
p_in_k IN INTERVAL HOUR TO MINUTE , 
p_out_k OUT INTERVAL HOUR TO MINUTE , 
p_inout_k IN OUT INTERVAL HOUR TO MINUTE , 
p_log_k IN OUT VARCHAR
) AS
BEGIN
p_out_k := p_in_k;
p_inout_k :=p_inout_k + '1';
p_log_k := p_log_k || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_k);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_k));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_k));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_k));
END p_interval_all_k;
END pkg_interval_param_k;
/

//测试  INTERVAL HOUR TO MINUTE 类型 IN 参数
DECLARE
v_result_k VARCHAR(200);
BEGIN
v_result_k := pkg_interval_param_k.f_interval_in_k('9');
SEND_MSG(v_result_k);
END;
/

//测试 INTERVAL HOUR TO MINUTE 类型 OUT 参数
DECLARE
v_out_k INTERVAL HOUR TO MINUTE;
BEGIN
pkg_interval_param_k.p_interval_out_k(v_out_k);
SEND_MSG('OUT INTERVAL HOUR TO MINUTE : ' || TO_CHAR(v_out_k));
END;
/

//测试 INTERVAL HOUR TO MINUTE 类型 IN OUT 参数
DECLARE
v_inout_k INTERVAL HOUR TO MINUTE := '1'::INTERVAL HOUR TO MINUTE;
BEGIN
pkg_interval_param_k.p_interval_inout_k(v_inout_k);
SEND_MSG('INOUT INTERVAL HOUR TO MINUTE : ' || TO_CHAR(v_inout_k));
END;
/

//测试 INTERVAL HOUR TO MINUTE 类型三种参数混合
DECLARE
v_in_k INTERVAL HOUR TO MINUTE := '1'::INTERVAL HOUR TO MINUTE;
v_out_k INTERVAL HOUR TO MINUTE;
v_inout_k INTERVAL HOUR TO MINUTE := '6'::INTERVAL HOUR TO MINUTE;
v_log_k VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_k.p_interval_all_k(v_in_k , v_out_k , v_inout_k , v_log_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_param_l AS 
FUNCTION f_interval_in_l(p_interval_l IN INTERVAL HOUR TO SECOND) RETURN VARCHAR;
PROCEDURE p_interval_out_l(p_out_interval_l OUT INTERVAL HOUR TO SECOND);
PROCEDURE p_interval_inout_l(p_inout_interval_l IN OUT INTERVAL HOUR TO SECOND);
PROCEDURE p_interval_all_l(
p_in_l IN INTERVAL HOUR TO SECOND , 
p_out_l OUT INTERVAL HOUR TO SECOND , 
p_inout_l IN OUT INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
);
END pkg_interval_param_l;
/

//创建 INTERVAL HOUR TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_l AS
FUNCTION f_interval_in_l(p_interval_l IN INTERVAL HOUR TO SECOND) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_l);
END f_interval_in_l;
PROCEDURE p_interval_out_l(p_out_interval_l OUT INTERVAL HOUR TO SECOND) AS
BEGIN
p_out_interval_l := '9';
END p_interval_out_l;
PROCEDURE p_interval_inout_l(p_inout_interval_l IN OUT INTERVAL HOUR TO SECOND) AS
BEGIN
p_inout_interval_l := p_inout_interval_l + '1';
END p_interval_inout_l;
PROCEDURE p_interval_all_l(
p_in_l IN INTERVAL HOUR TO SECOND , 
p_out_l OUT INTERVAL HOUR TO SECOND , 
p_inout_l IN OUT INTERVAL HOUR TO SECOND , 
p_log_l IN OUT VARCHAR
) AS
BEGIN
p_out_l := p_in_l;
p_inout_l :=p_inout_l + '1';
p_log_l := p_log_l || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_l);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_l));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_l));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_l));
END p_interval_all_l;
END pkg_interval_param_l;
/

//测试  INTERVAL HOUR TO SECOND 类型 IN 参数
DECLARE
v_result_l VARCHAR(200);
BEGIN
v_result_l := pkg_interval_param_l.f_interval_in_l('9');
SEND_MSG(v_result_l);
END;
/

//测试 INTERVAL HOUR TO SECOND 类型 OUT 参数
DECLARE
v_out_l INTERVAL HOUR TO SECOND;
BEGIN
pkg_interval_param_l.p_interval_out_l(v_out_l);
SEND_MSG('OUT INTERVAL HOUR TO SECOND : ' || TO_CHAR(v_out_l));
END;
/

//测试 INTERVAL HOUR TO SECOND 类型 IN OUT 参数
DECLARE
v_inout_l INTERVAL HOUR TO SECOND := '1'::INTERVAL HOUR TO SECOND;
BEGIN
pkg_interval_param_l.p_interval_inout_l(v_inout_l);
SEND_MSG('INOUT INTERVAL HOUR TO SECOND : ' || TO_CHAR(v_inout_l));
END;
/

//测试 INTERVAL HOUR TO SECOND 类型三种参数混合
DECLARE
v_in_l INTERVAL HOUR TO SECOND := '1'::INTERVAL HOUR TO SECOND;
v_out_l INTERVAL HOUR TO SECOND;
v_inout_l INTERVAL HOUR TO SECOND := '6'::INTERVAL HOUR TO SECOND;
v_log_l VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_l.p_interval_all_l(v_in_l , v_out_l , v_inout_l , v_log_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 包
CREATE OR REPLACE PACKAGE pkg_interval_param_m AS 
FUNCTION f_interval_in_m(p_interval_m IN INTERVAL MINUTE TO SECOND) RETURN VARCHAR;
PROCEDURE p_interval_out_m(p_out_interval_m OUT INTERVAL MINUTE TO SECOND);
PROCEDURE p_interval_inout_m(p_inout_interval_m IN OUT INTERVAL MINUTE TO SECOND);
PROCEDURE p_interval_all_m(
p_in_m IN INTERVAL MINUTE TO SECOND , 
p_out_m OUT INTERVAL MINUTE TO SECOND , 
p_inout_m IN OUT INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
);
END pkg_interval_param_m;
/

//创建 INTERVAL MINUTE TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_param_m AS
FUNCTION f_interval_in_m(p_interval_m IN INTERVAL MINUTE TO SECOND) RETURN VARCHAR AS
BEGIN
RETURN 'IN TIME : ' || TO_CHAR(p_interval_m);
END f_interval_in_m;
PROCEDURE p_interval_out_m(p_out_interval_m OUT INTERVAL MINUTE TO SECOND) AS
BEGIN
p_out_interval_m := '9';
END p_interval_out_m;
PROCEDURE p_interval_inout_m(p_inout_interval_m IN OUT INTERVAL MINUTE TO SECOND) AS
BEGIN
p_inout_interval_m := p_inout_interval_m + '1';
END p_interval_inout_m;
PROCEDURE p_interval_all_m(
p_in_m IN INTERVAL MINUTE TO SECOND , 
p_out_m OUT INTERVAL MINUTE TO SECOND , 
p_inout_m IN OUT INTERVAL MINUTE TO SECOND , 
p_log_m IN OUT VARCHAR
) AS
BEGIN
p_out_m := p_in_m;
p_inout_m :=p_inout_m + '1';
p_log_m := p_log_m || 'INTERVAL IN/OUT/INOUT 完成';
SEND_MSG(p_log_m);
SEND_MSG('IN 参数 : ' || TO_CHAR(p_in_m));
SEND_MSG('OUT 参数 : ' || TO_CHAR(p_out_m));
SEND_MSG('INOUT 参数 : ' || TO_CHAR(p_inout_m));
END p_interval_all_m;
END pkg_interval_param_m;
/

//测试  INTERVAL MINUTE TO SECOND 类型 IN 参数
DECLARE
v_result_m VARCHAR(200);
BEGIN
v_result_m := pkg_interval_param_m.f_interval_in_m('9');
SEND_MSG(v_result_m);
END;
/

//测试 INTERVAL MINUTE TO SECOND 类型 OUT 参数
DECLARE
v_out_m INTERVAL MINUTE TO SECOND;
BEGIN
pkg_interval_param_m.p_interval_out_m(v_out_m);
SEND_MSG('OUT INTERVAL MINUTE TO SECOND : ' || TO_CHAR(v_out_m));
END;
/

//测试 INTERVAL MINUTE TO SECOND 类型 IN OUT 参数
DECLARE
v_inout_m INTERVAL MINUTE TO SECOND := '1'::INTERVAL MINUTE TO SECOND;
BEGIN
pkg_interval_param_m.p_interval_inout_m(v_inout_m);
SEND_MSG('INOUT INTERVAL MINUTE TO SECOND : ' || TO_CHAR(v_inout_m));
END;
/

//测试 INTERVAL MINUTE TO SECOND 类型三种参数混合
DECLARE
v_in_m INTERVAL MINUTE TO SECOND := '1'::INTERVAL MINUTE TO SECOND;
v_out_m INTERVAL MINUTE TO SECOND;
v_inout_m INTERVAL MINUTE TO SECOND := '6'::INTERVAL MINUTE TO SECOND;
v_log_m VARCHAR(200) := 'INTERVAL_PARAM_TEST : ';
BEGIN
pkg_interval_param_m.p_interval_all_m(v_in_m , v_out_m , v_inout_m , v_log_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_param_a;
DROP PACKAGE pkg_interval_param_b;
DROP PACKAGE pkg_interval_param_c;
DROP PACKAGE pkg_interval_param_d;
DROP PACKAGE pkg_interval_param_e;
DROP PACKAGE pkg_interval_param_f;
DROP PACKAGE pkg_interval_param_g;
DROP PACKAGE pkg_interval_param_h;
DROP PACKAGE pkg_interval_param_i;
DROP PACKAGE pkg_interval_param_j;
DROP PACKAGE pkg_interval_param_k;
DROP PACKAGE pkg_interval_param_l;
DROP PACKAGE pkg_interval_param_m;