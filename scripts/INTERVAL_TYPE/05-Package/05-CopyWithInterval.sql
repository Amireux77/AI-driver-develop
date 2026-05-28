!4 XG-TYPE-INTERVAL-PKG-006 INTERVAL 复制类型一致/不一致

//创建 INTERVAL YEAR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_a AS
PROCEDURE p_copy_Y_to_Y(p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR);
PROCEDURE p_copy_Y_to_varchar(p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR);
END pkg_interval_copy_a;
/

//创建 INTERVAL YEAR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_a AS
PROCEDURE p_copy_Y_to_Y(p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR) AS
v_interval_copy_a INTERVAL YEAR;
BEGIN
v_interval_copy_a := p_interval_a;
v_interval_copy_a := v_interval_copy_a + '1';
p_log_a := p_log_a || 'INTERVAL YEAR -> INTERVAL YEAR 复制 +1';
SEND_MSG(p_log_a);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_a));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_a));
END p_copy_Y_to_Y;
PROCEDURE p_copy_Y_to_varchar(p_interval_a IN INTERVAL YEAR , p_log_a IN OUT VARCHAR) AS
v_str_a VARCHAR(50);
BEGIN
v_str_a := TO_CHAR(p_interval_a);
p_log_a := p_log_a || 'INTERVAL YEAR -> VARCHAR 转换';
SEND_MSG(p_log_a);
SEND_MSG('INTERVAL YEAR 值 : ' || TO_CHAR(p_interval_a));
SEND_MSG('VARCHAR 值 : ' || v_str_a);
END p_copy_Y_to_varchar;
END pkg_interval_copy_a;
/

//测试 INTERVAL YEAR -> INTERVAL YEAR 类型一致
DECLARE
v_msg_a VARCHAR(100) := 'COPY INTERVAL YEAR : ';
BEGIN
pkg_interval_copy_a.p_copy_Y_to_Y('9' , v_msg_a);
END;
/

//测试 INTERVAL YEAR -> VARCHAR 类型不一致
DECLARE
v_msg_a VARCHAR(100) := 'CONV_INTERVAL YEAR : ';
BEGIN
pkg_interval_copy_a.p_copy_Y_to_varchar('9' , v_msg_a);
END;
/

//创建 INTERVAL MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_b AS
PROCEDURE p_copy_M_to_M(p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR);
PROCEDURE p_copy_M_to_varchar(p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR);
END pkg_interval_copy_b;
/

//创建 INTERVAL MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_b AS
PROCEDURE p_copy_M_to_M(p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR) AS
v_interval_copy_b INTERVAL MONTH;
BEGIN
v_interval_copy_b := p_interval_b;
v_interval_copy_b := v_interval_copy_b + '1';
p_log_b := p_log_b || 'INTERVAL MONTH -> INTERVAL MONTH 复制 +1';
SEND_MSG(p_log_b);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_b));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_b));
END p_copy_M_to_M;
PROCEDURE p_copy_M_to_varchar(p_interval_b IN INTERVAL MONTH , p_log_b IN OUT VARCHAR) AS
v_str_b VARCHAR(50);
BEGIN
v_str_b := TO_CHAR(p_interval_b);
p_log_b := p_log_b || 'INTERVAL MONTH -> VARCHAR 转换';
SEND_MSG(p_log_b);
SEND_MSG('INTERVAL MONTH 值 : ' || TO_CHAR(p_interval_b));
SEND_MSG('VARCHAR 值 : ' || v_str_b);
END p_copy_M_to_varchar;
END pkg_interval_copy_b;
/

//测试 INTERVAL MONTH -> INTERVAL MONTH 类型一致
DECLARE
v_msg_b VARCHAR(100) := 'COPY INTERVAL MONTH : ';
BEGIN
pkg_interval_copy_b.p_copy_M_to_M('9' , v_msg_b);
END;
/

//测试 INTERVAL MONTH -> VARCHAR 类型不一致
DECLARE
v_msg_b VARCHAR(100) := 'CONV_INTERVAL MONTH : ';
BEGIN
pkg_interval_copy_b.p_copy_M_to_varchar('9' , v_msg_b);
END;
/

//创建 INTERVAL DAY 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_c AS
PROCEDURE p_copy_D_to_D(p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR);
PROCEDURE p_copy_D_to_varchar(p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR);
END pkg_interval_copy_c;
/

//创建 INTERVAL DAY 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_c AS
PROCEDURE p_copy_D_to_D(p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR) AS
v_interval_copy_c INTERVAL DAY;
BEGIN
v_interval_copy_c := p_interval_c;
v_interval_copy_c := v_interval_copy_c + '1';
p_log_c := p_log_c || 'INTERVAL DAY -> INTERVAL DAY 复制 +1';
SEND_MSG(p_log_c);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_c));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_c));
END p_copy_D_to_D;
PROCEDURE p_copy_D_to_varchar(p_interval_c IN INTERVAL DAY , p_log_c IN OUT VARCHAR) AS
v_str_c VARCHAR(50);
BEGIN
v_str_c := TO_CHAR(p_interval_c);
p_log_c := p_log_c || 'INTERVAL DAY -> VARCHAR 转换';
SEND_MSG(p_log_c);
SEND_MSG('INTERVAL DAY 值 : ' || TO_CHAR(p_interval_c));
SEND_MSG('VARCHAR 值 : ' || v_str_c);
END p_copy_D_to_varchar;
END pkg_interval_copy_c;
/

//测试 INTERVAL DAY -> INTERVAL DAY 类型一致
DECLARE
v_msg_c VARCHAR(100) := 'COPY INTERVAL DAY : ';
BEGIN
pkg_interval_copy_c.p_copy_D_to_D('9' , v_msg_c);
END;
/

//测试 INTERVAL DAY -> VARCHAR 类型不一致
DECLARE
v_msg_c VARCHAR(100) := 'CONV_INTERVAL DAY : ';
BEGIN
pkg_interval_copy_c.p_copy_D_to_varchar('9' , v_msg_c);
END;
/

//创建 INTERVAL HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_d AS
PROCEDURE p_copy_H_to_H(p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR);
PROCEDURE p_copy_H_to_varchar(p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR);
END pkg_interval_copy_d;
/

//创建 INTERVAL HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_d AS
PROCEDURE p_copy_H_to_H(p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR) AS
v_interval_copy_d INTERVAL HOUR;
BEGIN
v_interval_copy_d := p_interval_d;
v_interval_copy_d := v_interval_copy_d + '1';
p_log_d := p_log_d || 'INTERVAL HOUR -> INTERVAL HOUR 复制 +1';
SEND_MSG(p_log_d);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_d));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_d));
END p_copy_H_to_H;
PROCEDURE p_copy_H_to_varchar(p_interval_d IN INTERVAL HOUR , p_log_d IN OUT VARCHAR) AS
v_str_d VARCHAR(50);
BEGIN
v_str_d := TO_CHAR(p_interval_d);
p_log_d := p_log_d || 'INTERVAL HOUR -> VARCHAR 转换';
SEND_MSG(p_log_d);
SEND_MSG('INTERVAL HOUR 值 : ' || TO_CHAR(p_interval_d));
SEND_MSG('VARCHAR 值 : ' || v_str_d);
END p_copy_H_to_varchar;
END pkg_interval_copy_d;
/

//测试 INTERVAL HOUR -> INTERVAL HOUR 类型一致
DECLARE
v_msg_d VARCHAR(100) := 'COPY INTERVAL HOUR : ';
BEGIN
pkg_interval_copy_d.p_copy_H_to_H('9' , v_msg_d);
END;
/

//测试 INTERVAL HOUR -> VARCHAR 类型不一致
DECLARE
v_msg_d VARCHAR(100) := 'CONV_INTERVAL HOUR : ';
BEGIN
pkg_interval_copy_d.p_copy_H_to_varchar('9' , v_msg_d);
END;
/

//创建 INTERVAL MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_e AS
PROCEDURE p_copy_MIN_to_MIN(p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR);
PROCEDURE p_copy_MIN_to_varchar(p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR);
END pkg_interval_copy_e;
/

//创建 INTERVAL MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_e AS
PROCEDURE p_copy_MIN_to_MIN(p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR) AS
v_interval_copy_e INTERVAL MINUTE;
BEGIN
v_interval_copy_e := p_interval_e;
v_interval_copy_e := v_interval_copy_e + '1';
p_log_e := p_log_e || 'MIN INTERVAL MINUTE -> INTERVAL MINUTE 复制 +1';
SEND_MSG(p_log_e);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_e));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_e));
END p_copy_MIN_to_MIN;
PROCEDURE p_copy_MIN_to_varchar(p_interval_e IN INTERVAL MINUTE , p_log_e IN OUT VARCHAR) AS
v_str_e VARCHAR(50);
BEGIN
v_str_e := TO_CHAR(p_interval_e);
p_log_e := p_log_e || 'INTERVAL MINUTE -> VARCHAR 转换';
SEND_MSG(p_log_e);
SEND_MSG('INTERVAL MINUTE 值 : ' || TO_CHAR(p_interval_e));
SEND_MSG('VARCHAR 值 : ' || v_str_e);
END p_copy_MIN_to_varchar;
END pkg_interval_copy_e;
/

//测试 INTERVAL MINUTE -> INTERVAL MINUTE 类型一致
DECLARE
v_msg_e VARCHAR(100) := 'COPY INTERVAL MINUTE : ';
BEGIN
pkg_interval_copy_e.p_copy_MIN_to_MIN('9' , v_msg_e);
END;
/

//测试 INTERVAL MINUTE -> VARCHAR 类型不一致
DECLARE
v_msg_e VARCHAR(100) := 'CONV_INTERVAL MINUTE : ';
BEGIN
pkg_interval_copy_e.p_copy_MIN_to_varchar('9' , v_msg_e);
END;
/

//创建 INTERVAL SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_f AS
PROCEDURE p_copy_S_to_S(p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR);
PROCEDURE p_copy_S_to_varchar(p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR);
END pkg_interval_copy_f;
/

//创建 INTERVAL SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_f AS
PROCEDURE p_copy_S_to_S(p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR) AS
v_interval_copy_f INTERVAL SECOND;
BEGIN
v_interval_copy_f := p_interval_f;
v_interval_copy_f := v_interval_copy_f + '1';
p_log_f := p_log_f || 'INTERVAL SECOND -> INTERVAL SECOND 复制 +1';
SEND_MSG(p_log_f);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_f));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_f));
END p_copy_S_to_S;
PROCEDURE p_copy_S_to_varchar(p_interval_f IN INTERVAL SECOND , p_log_f IN OUT VARCHAR) AS
v_str_f VARCHAR(50);
BEGIN
v_str_f := TO_CHAR(p_interval_f);
p_log_f := p_log_f || 'INTERVAL SECOND -> VARCHAR 转换';
SEND_MSG(p_log_f);
SEND_MSG('INTERVAL SECOND 值 : ' || TO_CHAR(p_interval_f));
SEND_MSG('VARCHAR 值 : ' || v_str_f);
END p_copy_S_to_varchar;
END pkg_interval_copy_f;
/

//测试 INTERVAL SECOND -> INTERVAL SECOND 类型一致
DECLARE
v_msg_f VARCHAR(100) := 'COPY INTERVAL SECOND : ';
BEGIN
pkg_interval_copy_f.p_copy_S_to_S('9' , v_msg_f);
END;
/

//测试 INTERVAL SECOND -> VARCHAR 类型不一致
DECLARE
v_msg_f VARCHAR(100) := 'CONV_INTERVAL SECOND : ';
BEGIN
pkg_interval_copy_f.p_copy_S_to_varchar('9' , v_msg_f);
END;
/

//创建 INTERVAL YEAR TO MONTH 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_g AS
PROCEDURE p_copy_Y2M_to_Y2M(p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR);
PROCEDURE p_copy_Y2M_to_varchar(p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR);
END pkg_interval_copy_g;
/

//创建 INTERVAL YEAR TO MONTH 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_g AS
PROCEDURE p_copy_Y2M_to_Y2M(p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR) AS
v_interval_copy_g INTERVAL YEAR TO MONTH;
BEGIN
v_interval_copy_g := p_interval_g;
v_interval_copy_g := v_interval_copy_g + '1';
p_log_g := p_log_g || 'Y2M INTERVAL YEAR TO MONTH -> INTERVAL YEAR TO MONTH 复制 +1';
SEND_MSG(p_log_g);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_g));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_g));
END p_copy_Y2M_to_Y2M;
PROCEDURE p_copy_Y2M_to_varchar(p_interval_g IN INTERVAL YEAR TO MONTH , p_log_g IN OUT VARCHAR) AS
v_str_g VARCHAR(50);
BEGIN
v_str_g := TO_CHAR(p_interval_g);
p_log_g := p_log_g || 'INTERVAL YEAR TO MONTH -> VARCHAR 转换';
SEND_MSG(p_log_g);
SEND_MSG('INTERVAL YEAR TO MONTH 值 : ' || TO_CHAR(p_interval_g));
SEND_MSG('VARCHAR 值 : ' || v_str_g);
END p_copy_Y2M_to_varchar;
END pkg_interval_copy_g;
/

//测试 INTERVAL YEAR TO MONTH -> INTERVAL YEAR TO MONTH 类型一致
DECLARE
v_msg_g VARCHAR(100) := 'COPY INTERVAL YEAR TO MONTH : ';
BEGIN
pkg_interval_copy_g.p_copy_Y2M_to_Y2M('9' , v_msg_g);
END;
/

//测试 INTERVAL YEAR TO MONTH -> VARCHAR 类型不一致
DECLARE
v_msg_g VARCHAR(100) := 'CONV_INTERVAL YEAR TO MONTH : ';
BEGIN
pkg_interval_copy_g.p_copy_Y2M_to_varchar('9' , v_msg_g);
END;
/

//创建 INTERVAL DAY TO HOUR 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_h AS
PROCEDURE p_copy_D2H_to_D2H(p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR);
PROCEDURE p_copy_D2H_to_varchar(p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR);
END pkg_interval_copy_h;
/

//创建 INTERVAL DAY TO HOUR 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_h AS
PROCEDURE p_copy_D2H_to_D2H(p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR) AS
v_interval_copy_h INTERVAL DAY TO HOUR;
BEGIN
v_interval_copy_h := p_interval_h;
v_interval_copy_h := v_interval_copy_h + '1';
p_log_h := p_log_h || 'D2H INTERVAL DAY TO HOUR -> INTERVAL DAY TO HOUR 复制 +1';
SEND_MSG(p_log_h);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_h));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_h));
END p_copy_D2H_to_D2H;
PROCEDURE p_copy_D2H_to_varchar(p_interval_h IN INTERVAL DAY TO HOUR , p_log_h IN OUT VARCHAR) AS
v_str_h VARCHAR(50);
BEGIN
v_str_h := TO_CHAR(p_interval_h);
p_log_h := p_log_h || 'INTERVAL DAY TO HOUR -> VARCHAR 转换';
SEND_MSG(p_log_h);
SEND_MSG('INTERVAL DAY TO HOUR 值 : ' || TO_CHAR(p_interval_h));
SEND_MSG('VARCHAR 值 : ' || v_str_h);
END p_copy_D2H_to_varchar;
END pkg_interval_copy_h;
/

//测试 INTERVAL DAY TO HOUR -> INTERVAL DAY TO HOUR 类型一致
DECLARE
v_msg_h VARCHAR(100) := 'COPY INTERVAL DAY TO HOUR : ';
BEGIN
pkg_interval_copy_h.p_copy_D2H_to_D2H('9' , v_msg_h);
END;
/

//测试 INTERVAL DAY TO HOUR -> VARCHAR 类型不一致
DECLARE
v_msg_h VARCHAR(100) := 'CONV_INTERVAL DAY TO HOUR : ';
BEGIN
pkg_interval_copy_h.p_copy_D2H_to_varchar('9' , v_msg_h);
END;
/

//创建 INTERVAL DAY TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_i AS
PROCEDURE p_copy_D2M_to_D2M(p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR);
PROCEDURE p_copy_D2M_to_varchar(p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR);
END pkg_interval_copy_i;
/

//创建 INTERVAL DAY TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_i AS
PROCEDURE p_copy_D2M_to_D2M(p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR) AS
v_interval_copy_i INTERVAL DAY TO MINUTE;
BEGIN
v_interval_copy_i := p_interval_i;
v_interval_copy_i := v_interval_copy_i + '1';
p_log_i := p_log_i || 'D2M INTERVAL DAY TO MINUTE -> INTERVAL DAY TO MINUTE 复制 +1';
SEND_MSG(p_log_i);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_i));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_i));
END p_copy_D2M_to_D2M;
PROCEDURE p_copy_D2M_to_varchar(p_interval_i IN INTERVAL DAY TO MINUTE , p_log_i IN OUT VARCHAR) AS
v_str_i VARCHAR(50);
BEGIN
v_str_i := TO_CHAR(p_interval_i);
p_log_i := p_log_i || 'INTERVAL DAY TO MINUTE -> VARCHAR 转换';
SEND_MSG(p_log_i);
SEND_MSG('INTERVAL DAY TO MINUTE 值 : ' || TO_CHAR(p_interval_i));
SEND_MSG('VARCHAR 值 : ' || v_str_i);
END p_copy_D2M_to_varchar;
END pkg_interval_copy_i;
/

//测试 INTERVAL DAY TO MINUTE -> INTERVAL DAY TO MINUTE 类型一致
DECLARE
v_msg_i VARCHAR(100) := 'COPY INTERVAL DAY TO MINUTE : ';
BEGIN
pkg_interval_copy_i.p_copy_D2M_to_D2M('9' , v_msg_i);
END;
/

//测试 INTERVAL DAY TO MINUTE -> VARCHAR 类型不一致
DECLARE
v_msg_i VARCHAR(100) := 'CONV_INTERVAL DAY TO MINUTE : ';
BEGIN
pkg_interval_copy_i.p_copy_D2M_to_varchar('9' , v_msg_i);
END;
/

//创建 INTERVAL DAY TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_j AS
PROCEDURE p_copy_D2S_to_D2S(p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR);
PROCEDURE p_copy_D2S_to_varchar(p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR);
END pkg_interval_copy_j;
/

//创建 INTERVAL DAY TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_j AS
PROCEDURE p_copy_D2S_to_D2S(p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR) AS
v_interval_copy_j INTERVAL DAY TO SECOND;
BEGIN
v_interval_copy_j := p_interval_j;
v_interval_copy_j := v_interval_copy_j + '1';
p_log_j := p_log_j || 'D2S INTERVAL DAY TO SECOND -> INTERVAL DAY TO SECOND 复制 +1';
SEND_MSG(p_log_j);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_j));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_j));
END p_copy_D2S_to_D2S;
PROCEDURE p_copy_D2S_to_varchar(p_interval_j IN INTERVAL DAY TO SECOND , p_log_j IN OUT VARCHAR) AS
v_str_j VARCHAR(50);
BEGIN
v_str_j := TO_CHAR(p_interval_j);
p_log_j := p_log_j || 'INTERVAL DAY TO SECOND -> VARCHAR 转换';
SEND_MSG(p_log_j);
SEND_MSG('INTERVAL DAY TO SECOND 值 : ' || TO_CHAR(p_interval_j));
SEND_MSG('VARCHAR 值 : ' || v_str_j);
END p_copy_D2S_to_varchar;
END pkg_interval_copy_j;
/

//测试 INTERVAL DAY TO SECOND -> INTERVAL DAY TO SECOND 类型一致
DECLARE
v_msg_j VARCHAR(100) := 'COPY INTERVAL DAY TO SECOND : ';
BEGIN
pkg_interval_copy_j.p_copy_D2S_to_D2S('9' , v_msg_j);
END;
/

//测试 INTERVAL DAY TO SECOND -> VARCHAR 类型不一致
DECLARE
v_msg_j VARCHAR(100) := 'CONV_INTERVAL DAY TO SECOND : ';
BEGIN
pkg_interval_copy_j.p_copy_D2S_to_varchar('9' , v_msg_j);
END;
/

//创建 INTERVAL HOUR TO MINUTE 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_k AS
PROCEDURE p_copy_H2M_to_H2M(p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR);
PROCEDURE p_copy_H2M_to_varchar(p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR);
END pkg_interval_copy_k;
/

//创建 INTERVAL HOUR TO MINUTE 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_k AS
PROCEDURE p_copy_H2M_to_H2M(p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR) AS
v_interval_copy_k INTERVAL HOUR TO MINUTE;
BEGIN
v_interval_copy_k := p_interval_k;
v_interval_copy_k := v_interval_copy_k + '1';
p_log_k := p_log_k || 'H2M INTERVAL HOUR TO MINUTE -> INTERVAL HOUR TO MINUTE 复制 +1';
SEND_MSG(p_log_k);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_k));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_k));
END p_copy_H2M_to_H2M;
PROCEDURE p_copy_H2M_to_varchar(p_interval_k IN INTERVAL HOUR TO MINUTE , p_log_k IN OUT VARCHAR) AS
v_str_k VARCHAR(50);
BEGIN
v_str_k := TO_CHAR(p_interval_k);
p_log_k := p_log_k || 'INTERVAL HOUR TO MINUTE -> VARCHAR 转换';
SEND_MSG(p_log_k);
SEND_MSG('INTERVAL HOUR TO MINUTE 值 : ' || TO_CHAR(p_interval_k));
SEND_MSG('VARCHAR 值 : ' || v_str_k);
END p_copy_H2M_to_varchar;
END pkg_interval_copy_k;
/

//测试 INTERVAL HOUR TO MINUTE -> INTERVAL HOUR TO MINUTE 类型一致
DECLARE
v_msg_k VARCHAR(100) := 'COPY INTERVAL HOUR TO MINUTE : ';
BEGIN
pkg_interval_copy_k.p_copy_H2M_to_H2M('9' , v_msg_k);
END;
/

//测试 INTERVAL HOUR TO MINUTE -> VARCHAR 类型不一致
DECLARE
v_msg_k VARCHAR(100) := 'CONV_INTERVAL HOUR TO MINUTE : ';
BEGIN
pkg_interval_copy_k.p_copy_H2M_to_varchar('9' , v_msg_k);
END;
/

//创建 INTERVAL HOUR TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_l AS
PROCEDURE p_copy_H2S_to_H2S(p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR);
PROCEDURE p_copy_H2S_to_varchar(p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR);
END pkg_interval_copy_l;
/

//创建 INTERVAL HOUR TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_l AS
PROCEDURE p_copy_H2S_to_H2S(p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR) AS
v_interval_copy_l INTERVAL HOUR TO SECOND;
BEGIN
v_interval_copy_l := p_interval_l;
v_interval_copy_l := v_interval_copy_l + '1';
p_log_l := p_log_l || 'H2S INTERVAL HOUR TO SECOND -> INTERVAL HOUR TO SECOND 复制 +1';
SEND_MSG(p_log_l);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_l));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_l));
END p_copy_H2S_to_H2S;
PROCEDURE p_copy_H2S_to_varchar(p_interval_l IN INTERVAL HOUR TO SECOND , p_log_l IN OUT VARCHAR) AS
v_str_l VARCHAR(50);
BEGIN
v_str_l := TO_CHAR(p_interval_l);
p_log_l := p_log_l || 'INTERVAL HOUR TO SECOND -> VARCHAR 转换';
SEND_MSG(p_log_l);
SEND_MSG('INTERVAL HOUR TO SECOND 值 : ' || TO_CHAR(p_interval_l));
SEND_MSG('VARCHAR 值 : ' || v_str_l);
END p_copy_H2S_to_varchar;
END pkg_interval_copy_l;
/

//测试 INTERVAL HOUR TO SECOND -> INTERVAL HOUR TO SECOND 类型一致
DECLARE
v_msg_l VARCHAR(100) := 'COPY INTERVAL HOUR TO SECOND : ';
BEGIN
pkg_interval_copy_l.p_copy_H2S_to_H2S('9' , v_msg_l);
END;
/

//测试 INTERVAL HOUR TO SECOND -> VARCHAR 类型不一致
DECLARE
v_msg_l VARCHAR(100) := 'CONV_INTERVAL HOUR TO SECOND : ';
BEGIN
pkg_interval_copy_l.p_copy_H2S_to_varchar('9' , v_msg_l);
END;
/

//创建 INTERVAL MINUTE TO SECOND 类型包
CREATE OR REPLACE PACKAGE pkg_interval_copy_m AS
PROCEDURE p_copy_M2S_to_M2S(p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR);
PROCEDURE p_copy_M2S_to_varchar(p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR);
END pkg_interval_copy_m;
/

//创建 INTERVAL MINUTE TO SECOND 包体
CREATE OR REPLACE PACKAGE BODY pkg_interval_copy_m AS
PROCEDURE p_copy_M2S_to_M2S(p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR) AS
v_interval_copy_m INTERVAL MINUTE TO SECOND;
BEGIN
v_interval_copy_m := p_interval_m;
v_interval_copy_m := v_interval_copy_m + '1';
p_log_m := p_log_m || 'M2S INTERVAL MINUTE TO SECOND -> INTERVAL MINUTE TO SECOND 复制 +1';
SEND_MSG(p_log_m);
SEND_MSG('原始值 : ' || TO_CHAR(p_interval_m));
SEND_MSG('复制后 : ' || TO_CHAR(v_interval_copy_m));
END p_copy_M2S_to_M2S;
PROCEDURE p_copy_M2S_to_varchar(p_interval_m IN INTERVAL MINUTE TO SECOND , p_log_m IN OUT VARCHAR) AS
v_str_m VARCHAR(50);
BEGIN
v_str_m := TO_CHAR(p_interval_m);
p_log_m := p_log_m || 'INTERVAL MINUTE TO SECOND -> VARCHAR 转换';
SEND_MSG(p_log_m);
SEND_MSG('INTERVAL MINUTE TO SECOND 值 : ' || TO_CHAR(p_interval_m));
SEND_MSG('VARCHAR 值 : ' || v_str_m);
END p_copy_M2S_to_varchar;
END pkg_interval_copy_m;
/

//测试 INTERVAL MINUTE TO SECOND -> INTERVAL MINUTE TO SECOND 类型一致
DECLARE
v_msg_m VARCHAR(100) := 'COPY INTERVAL MINUTE TO SECOND : ';
BEGIN
pkg_interval_copy_m.p_copy_M2S_to_M2S('9' , v_msg_m);
END;
/

//测试 INTERVAL MINUTE TO SECOND -> VARCHAR 类型不一致
DECLARE
v_msg_m VARCHAR(100) := 'CONV_INTERVAL MINUTE TO SECOND : ';
BEGIN
pkg_interval_copy_m.p_copy_M2S_to_varchar('9' , v_msg_m);
END;
/

//删除包
DROP PACKAGE pkg_interval_copy_a;
DROP PACKAGE pkg_interval_copy_b;
DROP PACKAGE pkg_interval_copy_c;
DROP PACKAGE pkg_interval_copy_d;
DROP PACKAGE pkg_interval_copy_e;
DROP PACKAGE pkg_interval_copy_f;
DROP PACKAGE pkg_interval_copy_g;
DROP PACKAGE pkg_interval_copy_h;
DROP PACKAGE pkg_interval_copy_i;
DROP PACKAGE pkg_interval_copy_j;
DROP PACKAGE pkg_interval_copy_k;
DROP PACKAGE pkg_interval_copy_l;
DROP PACKAGE pkg_interval_copy_m;