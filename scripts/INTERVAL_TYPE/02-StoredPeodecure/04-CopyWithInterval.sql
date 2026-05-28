!4 XG-TYPE-INTERVAL-PROC-006 INTERVAL 复制类型一致/不一致
CREATE OR REPLACE PROCEDURE p_interval_copy_a(
p_interval_a IN INTERVAL YEAR , 
p_interval_out_a OUT INTERVAL YEAR , 
p_out_str_a OUT VARCHAR , 
p_log_msg_a IN OUT VARCHAR
) AS
v_interval_copy_a INTERVAL YEAR;
v_str_a VARCHAR(50);
BEGIN
v_interval_copy_a := p_interval_a;
p_interval_out_a := v_interval_copy_a;
v_str_a := TO_CHAR(p_interval_a);
p_out_str_a := v_str_a;
p_log_msg_a := p_log_msg_a || '类型复制测试完成';
SEND_MSG(p_log_msg_a);
SEND_MSG('INTERVAL YEAR -> INTERVAL YEAR : ' || TO_CHAR(p_interval_out_a));
SEND_MSG('INTERVAL YEAR -> VARCHAR : ' || p_out_str_a);
END;
/

//执行 INTERVAL YEAR 存储过程
DECLARE
v_interval_a INTERVAL YEAR;
v_str_a VARCHAR(50);
v_msg_a VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_a('9' , v_interval_a , v_str_a , v_msg_a);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_b(
p_interval_b IN INTERVAL MONTH , 
p_interval_out_b OUT INTERVAL MONTH , 
p_out_str_b OUT VARCHAR , 
p_log_msg_b IN OUT VARCHAR
) AS
v_interval_copy_b INTERVAL MONTH;
v_str_b VARCHAR(50);
BEGIN
v_interval_copy_b := p_interval_b;
p_interval_out_b := v_interval_copy_b;
v_str_b := TO_CHAR(p_interval_b);
p_out_str_b := v_str_b;
p_log_msg_b := p_log_msg_b || '类型复制测试完成';
SEND_MSG(p_log_msg_b);
SEND_MSG('INTERVAL MONTH -> INTERVAL MONTH : ' || TO_CHAR(p_interval_out_b));
SEND_MSG('INTERVAL MONTH -> VARCHAR : ' || p_out_str_b);
END;
/

//执行 INTERVAL MONTH 存储过程
DECLARE
v_interval_b INTERVAL MONTH;
v_str_b VARCHAR(50);
v_msg_b VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_b('9' , v_interval_b , v_str_b , v_msg_b);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_c(
p_interval_c IN INTERVAL DAY , 
p_interval_out_c OUT INTERVAL DAY , 
p_out_str_c OUT VARCHAR , 
p_log_msg_c IN OUT VARCHAR
) AS
v_interval_copy_c INTERVAL DAY;
v_str_c VARCHAR(50);
BEGIN
v_interval_copy_c := p_interval_c;
p_interval_out_c := v_interval_copy_c;
v_str_c := TO_CHAR(p_interval_c);
p_out_str_c := v_str_c;
p_log_msg_c := p_log_msg_c || '类型复制测试完成';
SEND_MSG(p_log_msg_c);
SEND_MSG('INTERVAL DAY -> INTERVAL DAY : ' || TO_CHAR(p_interval_out_c));
SEND_MSG('INTERVAL DAY -> VARCHAR : ' || p_out_str_c);
END;
/

//执行 INTERVAL DAY 存储过程
DECLARE
v_interval_c INTERVAL DAY;
v_str_c VARCHAR(50);
v_msg_c VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_c('9' , v_interval_c , v_str_c , v_msg_c);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_d(
p_interval_d IN INTERVAL HOUR , 
p_interval_out_d OUT INTERVAL HOUR , 
p_out_str_d OUT VARCHAR , 
p_log_msg_d IN OUT VARCHAR
) AS
v_interval_copy_d INTERVAL HOUR;
v_str_d VARCHAR(50);
BEGIN
v_interval_copy_d := p_interval_d;
p_interval_out_d := v_interval_copy_d;
v_str_d := TO_CHAR(p_interval_d);
p_out_str_d := v_str_d;
p_log_msg_d := p_log_msg_d || '类型复制测试完成';
SEND_MSG(p_log_msg_d);
SEND_MSG('INTERVAL HOUR -> INTERVAL HOUR : ' || TO_CHAR(p_interval_out_d));
SEND_MSG('INTERVAL HOUR -> VARCHAR : ' || p_out_str_d);
END;
/

//执行 INTERVAL HOUR 存储过程
DECLARE
v_interval_d INTERVAL HOUR;
v_str_d VARCHAR(50);
v_msg_d VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_d('9' , v_interval_d , v_str_d , v_msg_d);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_e(
p_interval_e IN INTERVAL MINUTE , 
p_interval_out_e OUT INTERVAL MINUTE , 
p_out_str_e OUT VARCHAR , 
p_log_msg_e IN OUT VARCHAR
) AS
v_interval_copy_e INTERVAL MINUTE;
v_str_e VARCHAR(50);
BEGIN
v_interval_copy_e := p_interval_e;
p_interval_out_e := v_interval_copy_e;
v_str_e := TO_CHAR(p_interval_e);
p_out_str_e := v_str_e;
p_log_msg_e := p_log_msg_e || '类型复制测试完成';
SEND_MSG(p_log_msg_e);
SEND_MSG('INTERVAL MINUTE -> INTERVAL MINUTE : ' || TO_CHAR(p_interval_out_e));
SEND_MSG('INTERVAL MINUTE -> VARCHAR : ' || p_out_str_e);
END;
/

//执行 INTERVAL MINUTE 存储过程
DECLARE
v_interval_e INTERVAL MINUTE;
v_str_e VARCHAR(50);
v_msg_e VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_e('9' , v_interval_e , v_str_e , v_msg_e);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_f(
p_interval_f IN INTERVAL SECOND , 
p_interval_out_f OUT INTERVAL SECOND , 
p_out_str_f OUT VARCHAR , 
p_log_msg_f IN OUT VARCHAR
) AS
v_interval_copy_f INTERVAL SECOND;
v_str_f VARCHAR(50);
BEGIN
v_interval_copy_f := p_interval_f;
p_interval_out_f := v_interval_copy_f;
v_str_f := TO_CHAR(p_interval_f);
p_out_str_f := v_str_f;
p_log_msg_f := p_log_msg_f || '类型复制测试完成';
SEND_MSG(p_log_msg_f);
SEND_MSG('INTERVAL SECOND -> INTERVAL SECOND : ' || TO_CHAR(p_interval_out_f));
SEND_MSG('INTERVAL SECOND -> VARCHAR : ' || p_out_str_f);
END;
/

//执行 INTERVAL SECOND 存储过程
DECLARE
v_interval_f INTERVAL SECOND;
v_str_f VARCHAR(50);
v_msg_f VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_f('9' , v_interval_f , v_str_f , v_msg_f);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_g(
p_interval_g IN INTERVAL YEAR TO MONTH , 
p_interval_out_g OUT INTERVAL YEAR TO MONTH , 
p_out_str_g OUT VARCHAR , 
p_log_msg_g IN OUT VARCHAR
) AS
v_interval_copy_g INTERVAL YEAR TO MONTH;
v_str_g VARCHAR(50);
BEGIN
v_interval_copy_g := p_interval_g;
p_interval_out_g := v_interval_copy_g;
v_str_g := TO_CHAR(p_interval_g);
p_out_str_g := v_str_g;
p_log_msg_g := p_log_msg_g || '类型复制测试完成';
SEND_MSG(p_log_msg_g);
SEND_MSG('INTERVAL YEAR TO MONTH -> INTERVAL YEAR TO MONTH : ' || TO_CHAR(p_interval_out_g));
SEND_MSG('INTERVAL YEAR TO MONTH -> VARCHAR : ' || p_out_str_g);
END;
/

//执行 INTERVAL YEAR TO MONTH 存储过程
DECLARE
v_interval_g INTERVAL YEAR TO MONTH;
v_str_g VARCHAR(50);
v_msg_g VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_g('9' , v_interval_g , v_str_g , v_msg_g);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_h(
p_interval_h IN INTERVAL DAY TO HOUR , 
p_interval_out_h OUT INTERVAL DAY TO HOUR , 
p_out_str_h OUT VARCHAR , 
p_log_msg_h IN OUT VARCHAR
) AS
v_interval_copy_h INTERVAL DAY TO HOUR;
v_str_h VARCHAR(50);
BEGIN
v_interval_copy_h := p_interval_h;
p_interval_out_h := v_interval_copy_h;
v_str_h := TO_CHAR(p_interval_h);
p_out_str_h := v_str_h;
p_log_msg_h := p_log_msg_h || '类型复制测试完成';
SEND_MSG(p_log_msg_h);
SEND_MSG('INTERVAL DAY TO HOUR -> INTERVAL DAY TO HOUR : ' || TO_CHAR(p_interval_out_h));
SEND_MSG('INTERVAL DAY TO HOUR -> VARCHAR : ' || p_out_str_h);
END;
/

//执行 INTERVAL DAY TO HOUR 存储过程
DECLARE
v_interval_h INTERVAL DAY TO HOUR;
v_str_h VARCHAR(50);
v_msg_h VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_h('9' , v_interval_h , v_str_h , v_msg_h);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_i(
p_interval_i IN INTERVAL DAY TO MINUTE , 
p_interval_out_i OUT INTERVAL DAY TO MINUTE , 
p_out_str_i OUT VARCHAR , 
p_log_msg_i IN OUT VARCHAR
) AS
v_interval_copy_i INTERVAL DAY TO MINUTE;
v_str_i VARCHAR(50);
BEGIN
v_interval_copy_i := p_interval_i;
p_interval_out_i := v_interval_copy_i;
v_str_i := TO_CHAR(p_interval_i);
p_out_str_i := v_str_i;
p_log_msg_i := p_log_msg_i || '类型复制测试完成';
SEND_MSG(p_log_msg_i);
SEND_MSG('INTERVAL DAY TO MINUTE -> INTERVAL DAY TO MINUTE : ' || TO_CHAR(p_interval_out_i));
SEND_MSG('INTERVAL DAY TO MINUTE -> VARCHAR : ' || p_out_str_i);
END;
/

//执行 INTERVAL DAY TO MINUTE 存储过程
DECLARE
v_interval_i INTERVAL DAY TO MINUTE;
v_str_i VARCHAR(50);
v_msg_i VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_i('9' , v_interval_i , v_str_i , v_msg_i);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_j(
p_interval_j IN INTERVAL DAY TO SECOND , 
p_interval_out_j OUT INTERVAL DAY TO SECOND , 
p_out_str_j OUT VARCHAR , 
p_log_msg_j IN OUT VARCHAR
) AS
v_interval_copy_j INTERVAL DAY TO SECOND;
v_str_j VARCHAR(50);
BEGIN
v_interval_copy_j := p_interval_j;
p_interval_out_j := v_interval_copy_j;
v_str_j := TO_CHAR(p_interval_j);
p_out_str_j := v_str_j;
p_log_msg_j := p_log_msg_j || '类型复制测试完成';
SEND_MSG(p_log_msg_j);
SEND_MSG('INTERVAL DAY TO SECOND -> INTERVAL DAY TO SECOND : ' || TO_CHAR(p_interval_out_j));
SEND_MSG('INTERVAL DAY TO SECOND -> VARCHAR : ' || p_out_str_j);
END;
/

//执行 INTERVAL DAY TO SECOND 存储过程
DECLARE
v_interval_j INTERVAL DAY TO SECOND;
v_str_j VARCHAR(50);
v_msg_j VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_j('9' , v_interval_j , v_str_j , v_msg_j);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_k(
p_interval_k IN INTERVAL HOUR TO MINUTE , 
p_interval_out_k OUT INTERVAL HOUR TO MINUTE , 
p_out_str_k OUT VARCHAR , 
p_log_msg_k IN OUT VARCHAR
) AS
v_interval_copy_k INTERVAL HOUR TO MINUTE;
v_str_k VARCHAR(50);
BEGIN
v_interval_copy_k := p_interval_k;
p_interval_out_k := v_interval_copy_k;
v_str_k := TO_CHAR(p_interval_k);
p_out_str_k := v_str_k;
p_log_msg_k := p_log_msg_k || '类型复制测试完成';
SEND_MSG(p_log_msg_k);
SEND_MSG('INTERVAL HOUR TO MINUTE -> INTERVAL HOUR TO MINUTE : ' || TO_CHAR(p_interval_out_k));
SEND_MSG('INTERVAL HOUR TO MINUTE -> VARCHAR : ' || p_out_str_k);
END;
/

//执行 INTERVAL HOUR TO MINUTE 存储过程
DECLARE
v_interval_k INTERVAL HOUR TO MINUTE;
v_str_k VARCHAR(50);
v_msg_k VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_k('9' , v_interval_k , v_str_k , v_msg_k);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_l(
p_interval_l IN INTERVAL HOUR TO SECOND , 
p_interval_out_l OUT INTERVAL HOUR TO SECOND , 
p_out_str_l OUT VARCHAR , 
p_log_msg_l IN OUT VARCHAR
) AS
v_interval_copy_l INTERVAL HOUR TO SECOND;
v_str_l VARCHAR(50);
BEGIN
v_interval_copy_l := p_interval_l;
p_interval_out_l := v_interval_copy_l;
v_str_l := TO_CHAR(p_interval_l);
p_out_str_l := v_str_l;
p_log_msg_l := p_log_msg_l || '类型复制测试完成';
SEND_MSG(p_log_msg_l);
SEND_MSG('INTERVAL HOUR TO SECOND -> INTERVAL HOUR TO SECOND : ' || TO_CHAR(p_interval_out_l));
SEND_MSG('INTERVAL HOUR TO SECOND -> VARCHAR : ' || p_out_str_l);
END;
/

//执行 INTERVAL HOUR TO SECOND 存储过程
DECLARE
v_interval_l INTERVAL HOUR TO SECOND;
v_str_l VARCHAR(50);
v_msg_l VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_l('9' , v_interval_l , v_str_l , v_msg_l);
END;
/

CREATE OR REPLACE PROCEDURE p_interval_copy_m(
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_interval_out_m OUT INTERVAL MINUTE TO SECOND , 
p_out_str_m OUT VARCHAR , 
p_log_msg_m IN OUT VARCHAR
) AS
v_interval_copy_m INTERVAL MINUTE TO SECOND;
v_str_m VARCHAR(50);
BEGIN
v_interval_copy_m := p_interval_m;
p_interval_out_m := v_interval_copy_m;
v_str_m := TO_CHAR(p_interval_m);
p_out_str_m := v_str_m;
p_log_msg_m := p_log_msg_m || '类型复制测试完成';
SEND_MSG(p_log_msg_m);
SEND_MSG('INTERVAL MINUTE TO SECOND -> INTERVAL MINUTE TO SECOND : ' || TO_CHAR(p_interval_out_m));
SEND_MSG('INTERVAL MINUTE TO SECOND -> VARCHAR : ' || p_out_str_m);
END;
/

//执行 INTERVAL MINUTE TO SECOND 存储过程
DECLARE
v_interval_m INTERVAL MINUTE TO SECOND;
v_str_m VARCHAR(50);
v_msg_m VARCHAR(100) := 'INTERVAL_COPY_TEST';
BEGIN
p_interval_copy_m('9' , v_interval_m , v_str_m , v_msg_m);
END;
/

// INTERVAL TO CHAR 类型复制测试
CREATE OR REPLACE PROCEDURE p_interval_copy_char(
p_interval_a IN INTERVAL YEAR ,
p_interval_b IN INTERVAL MONTH ,
p_interval_c IN INTERVAL DAY ,
p_interval_d IN INTERVAL HOUR ,
p_interval_e IN INTERVAL MINUTE ,
p_interval_f IN INTERVAL SECOND ,
p_interval_g IN INTERVAL YEAR TO MONTH ,
p_interval_h IN INTERVAL DAY TO HOUR ,
p_interval_i IN INTERVAL DAY TO MINUTE ,
p_interval_j IN INTERVAL DAY TO SECOND ,
p_interval_k IN INTERVAL HOUR TO MINUTE ,
p_interval_l IN INTERVAL HOUR TO SECOND ,
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_out_char_a OUT CHAR (50) ,
p_out_char_b OUT CHAR (50) ,
p_out_char_c OUT CHAR (50) ,
p_out_char_d OUT CHAR (50) ,
p_out_char_e OUT CHAR (50) ,
p_out_char_f OUT CHAR (50) ,
p_out_char_g OUT CHAR (50) ,
p_out_char_h OUT CHAR (50) ,
p_out_char_i OUT CHAR (50) ,
p_out_char_j OUT CHAR (50) ,
p_out_char_k OUT CHAR (50) ,
p_out_char_l OUT CHAR (50) ,
p_out_char_m OUT CHAR (50) ,
p_log_msg IN OUT VARCHAR
) AS
v_interval_copy_a CHAR;
v_interval_copy_b CHAR;
v_interval_copy_c CHAR;
v_interval_copy_d CHAR;
v_interval_copy_e CHAR;
v_interval_copy_f CHAR;
v_interval_copy_g CHAR;
v_interval_copy_h CHAR;
v_interval_copy_i CHAR;
v_interval_copy_j CHAR;
v_interval_copy_k CHAR;
v_interval_copy_l CHAR;
v_interval_copy_m CHAR;
BEGIN
v_interval_copy_a := p_interval_a;
v_interval_copy_b := p_interval_b;
v_interval_copy_c := p_interval_c;
v_interval_copy_d := p_interval_d;
v_interval_copy_e := p_interval_e;
v_interval_copy_f := p_interval_f;
v_interval_copy_g := p_interval_g;
v_interval_copy_h := p_interval_h;
v_interval_copy_i := p_interval_i;
v_interval_copy_j := p_interval_j;
v_interval_copy_k := p_interval_k;
v_interval_copy_l := p_interval_l;
v_interval_copy_m := p_interval_m;
p_out_char_a := v_interval_copy_a;
p_out_char_b := v_interval_copy_b;
p_out_char_c := v_interval_copy_c;
p_out_char_d := v_interval_copy_d;
p_out_char_e := v_interval_copy_e;
p_out_char_f := v_interval_copy_f;
p_out_char_g := v_interval_copy_g;
p_out_char_h := v_interval_copy_h;
p_out_char_i := v_interval_copy_i;
p_out_char_j := v_interval_copy_j;
p_out_char_k := v_interval_copy_k;
p_out_char_l := v_interval_copy_l;
p_out_char_m := v_interval_copy_m;
p_log_msg := p_log_msg || 'INTERVAL TO CHAR 类型复制测试完成';
SEND_MSG(p_log_msg);
SEND_MSG('INTERVAL YEAR -> CHAR : ' || p_out_char_a);
SEND_MSG('INTERVAL MONTH -> CHAR : ' || p_out_char_b);
SEND_MSG('INTERVAL DAY -> CHAR : ' || p_out_char_c);
SEND_MSG('INTERVAL HOUR -> CHAR : ' || p_out_char_d);
SEND_MSG('INTERVAL MINUTE -> CHAR : ' || p_out_char_e);
SEND_MSG('INTERVAL SECOND -> CHAR : ' || p_out_char_f);
SEND_MSG('INTERVAL YEAR TO MONTH -> CHAR : ' || p_out_char_g);
SEND_MSG('INTERVAL DAY TO HOUR -> CHAR : ' || p_out_char_h);
SEND_MSG('INTERVAL DAY TO MINUTE -> CHAR : ' || p_out_char_i);
SEND_MSG('INTERVAL DAY TO SECOND -> CHAR : ' || p_out_char_j);
SEND_MSG('INTERVAL HOUR TO MINUTE -> CHAR : ' || p_out_char_k);
SEND_MSG('INTERVAL HOUR TO SECOND -> CHAR : ' || p_out_char_l);
SEND_MSG('INTERVAL MINUTE TO SECOND -> CHAR : ' || p_out_char_m);
END;
/

//执行 INTERVAL TO CHAR 存储过程
DECLARE
v_char_a CHAR(50);
v_char_b CHAR(50);
v_char_c CHAR(50);
v_char_d CHAR(50);
v_char_e CHAR(50);
v_char_f CHAR(50);
v_char_g CHAR(50);
v_char_h CHAR(50);
v_char_i CHAR(50);
v_char_j CHAR(50);
v_char_k CHAR(50);
v_char_l CHAR(50);
v_char_m CHAR(50);
v_msg VARCHAR(100) := 'INTERVAL_COPY_TEST_CHAR : ';
BEGIN
p_interval_copy_char(
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
v_char_a , 
v_char_b , 
v_char_c , 
v_char_d , 
v_char_e , 
v_char_f , 
v_char_g , 
v_char_h , 
v_char_i , 
v_char_j , 
v_char_k , 
v_char_l , 
v_char_m , 
v_msg 
);
END;
/

// INTERVAL 不同 类型复制测试
CREATE OR REPLACE PROCEDURE p_interval_copy_different(
p_interval_a IN INTERVAL YEAR ,
p_interval_b IN INTERVAL MONTH ,
p_interval_c IN INTERVAL DAY ,
p_interval_d IN INTERVAL HOUR ,
p_interval_e IN INTERVAL MINUTE ,
p_interval_f IN INTERVAL SECOND ,
p_interval_g IN INTERVAL YEAR TO MONTH ,
p_interval_h IN INTERVAL DAY TO HOUR ,
p_interval_i IN INTERVAL DAY TO MINUTE ,
p_interval_j IN INTERVAL DAY TO SECOND ,
p_interval_k IN INTERVAL HOUR TO MINUTE ,
p_interval_l IN INTERVAL HOUR TO SECOND ,
p_interval_m IN INTERVAL MINUTE TO SECOND , 
p_out_2M_a OUT INTERVAL MONTH ,
p_out_2M_b OUT INTERVAL MONTH ,
p_out_2S_c OUT INTERVAL SECOND ,
p_out_2S_d OUT INTERVAL SECOND ,
p_out_2S_e OUT INTERVAL SECOND ,
p_out_2S_f OUT INTERVAL SECOND ,
p_out_2M_g OUT INTERVAL MONTH ,
p_out_2S_h OUT INTERVAL SECOND ,
p_out_2S_i OUT INTERVAL SECOND ,
p_out_2S_j OUT INTERVAL SECOND ,
p_out_2S_k OUT INTERVAL SECOND ,
p_out_2S_l OUT INTERVAL SECOND ,
p_out_2S_m OUT INTERVAL SECOND ,
p_log_msg IN OUT VARCHAR
) AS
v_interval_copy_a INTERVAL MONTH ;
v_interval_copy_b INTERVAL MONTH ;
v_interval_copy_c INTERVAL SECOND ;
v_interval_copy_d INTERVAL SECOND ;
v_interval_copy_e INTERVAL SECOND ;
v_interval_copy_f INTERVAL SECOND ;
v_interval_copy_g INTERVAL MONTH ;
v_interval_copy_h INTERVAL SECOND ;
v_interval_copy_i INTERVAL SECOND ;
v_interval_copy_j INTERVAL SECOND ;
v_interval_copy_k INTERVAL SECOND ;
v_interval_copy_l INTERVAL SECOND ;
v_interval_copy_m INTERVAL SECOND ;
BEGIN
v_interval_copy_a := p_interval_a;
v_interval_copy_b := p_interval_b;
v_interval_copy_c := p_interval_c;
v_interval_copy_d := p_interval_d;
v_interval_copy_e := p_interval_e;
v_interval_copy_f := p_interval_f;
v_interval_copy_g := p_interval_g;
v_interval_copy_h := p_interval_h;
v_interval_copy_i := p_interval_i;
v_interval_copy_j := p_interval_j;
v_interval_copy_k := p_interval_k;
v_interval_copy_l := p_interval_l;
v_interval_copy_m := p_interval_m;
p_out_2M_a := v_interval_copy_a;
p_out_2M_b := v_interval_copy_b;
p_out_2S_c := v_interval_copy_c;
p_out_2S_d := v_interval_copy_d;
p_out_2S_e := v_interval_copy_e;
p_out_2S_f := v_interval_copy_f;
p_out_2M_g := v_interval_copy_g;
p_out_2S_h := v_interval_copy_h;
p_out_2S_i := v_interval_copy_i;
p_out_2S_j := v_interval_copy_j;
p_out_2S_k := v_interval_copy_k;
p_out_2S_l := v_interval_copy_l;
p_out_2S_m := v_interval_copy_m;
p_log_msg := p_log_msg || 'INTERVAL 不同类型复制测试完成';
SEND_MSG(p_log_msg);
SEND_MSG('INTERVAL YEAR -> INTERVAL MONTH : ' || p_out_2M_a);
SEND_MSG('INTERVAL MONTH -> INTERVAL MONTH : ' || p_out_2M_b);
SEND_MSG('INTERVAL DAY -> INTERVAL SECOND : ' || p_out_2S_c);
SEND_MSG('INTERVAL HOUR -> INTERVAL SECOND : ' || p_out_2S_d);
SEND_MSG('INTERVAL MINUTE -> INTERVAL SECOND : ' || p_out_2S_e);
SEND_MSG('INTERVAL SECOND -> INTERVAL SECOND : ' || p_out_2S_f);
SEND_MSG('INTERVAL YEAR TO MONTH -> INTERVAL MONTH : ' || p_out_2M_g);
SEND_MSG('INTERVAL DAY TO HOUR -> INTERVAL SECOND : ' || p_out_2S_h);
SEND_MSG('INTERVAL DAY TO MINUTE -> INTERVAL SECOND : ' || p_out_2S_i);
SEND_MSG('INTERVAL DAY TO SECOND -> INTERVAL SECOND : ' || p_out_2S_j);
SEND_MSG('INTERVAL HOUR TO MINUTE -> INTERVAL SECOND : ' || p_out_2S_k);
SEND_MSG('INTERVAL HOUR TO SECOND -> INTERVAL SECOND : ' || p_out_2S_l);
SEND_MSG('INTERVAL MINUTE TO SECOND -> INTERVAL SECOND : ' || p_out_2S_m);
END;
/

//执行 INTERVAL DIFFERENT 存储过程
DECLARE
v_2M_a INTERVAL MONTH ;
v_2M_b INTERVAL MONTH ;
v_2S_c INTERVAL SECOND ;
v_2S_d INTERVAL SECOND ;
v_2S_e INTERVAL SECOND ;
v_2S_f INTERVAL SECOND ;
v_2M_g INTERVAL MONTH ;
v_2S_h INTERVAL SECOND ;
v_2S_i INTERVAL SECOND ;
v_2S_j INTERVAL SECOND ;
v_2S_k INTERVAL SECOND ;
v_2S_l INTERVAL SECOND ;
v_2S_m INTERVAL SECOND ;
v_msg VARCHAR(100) := 'INTERVAL_COPY_TEST_DIFFERENT : ';
BEGIN
p_interval_copy_different(
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
v_2M_a , 
v_2M_b , 
v_2S_c , 
v_2S_d , 
v_2S_e , 
v_2S_f , 
v_2M_g , 
v_2S_h , 
v_2S_i , 
v_2S_j , 
v_2S_k , 
v_2S_l , 
v_2S_m , 
v_msg 
);
END;
/

//执行 INTERVAL DIFFERENT 存储过程 : 变量类型不一致 , 不可隐式转换
DECLARE
v_2M_a VARCHAR;
v_2M_b VARCHAR;
v_2S_c VARCHAR;
v_2S_d VARCHAR;
v_2S_e VARCHAR;
v_2S_f VARCHAR;
v_2M_g VARCHAR;
v_2S_h VARCHAR;
v_2S_i VARCHAR;
v_2S_j VARCHAR;
v_2S_k VARCHAR;
v_2S_l VARCHAR;
v_2S_m VARCHAR;
v_msg VARCHAR(100) := 'INTERVAL_COPY_TEST_DIFFERENT : ';
BEGIN
p_interval_copy_different(
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
v_2M_a , 
v_2M_b , 
v_2S_c , 
v_2S_d , 
v_2S_e , 
v_2S_f , 
v_2M_g , 
v_2S_h , 
v_2S_i , 
v_2S_j , 
v_2S_k , 
v_2S_l , 
v_2S_m , 
v_msg 
);
END;
/

//执行 INTERVAL DIFFERENT 存储过程 : 变量类型不一致 , 可隐式转换
{{{在实际情况中,INTERVAL YEAR 可以与 INTERVAL MONTH 进行隐式转换, 天时分秒 都可以向 INTERVAL SECOND 进行隐式转换,但是此处将传入的参数类型定义为可隐式转换的类型,测试并未通过,推测执行过程的传入参数类型需要与存储过程定义的接收参数类型完全一致,否则会报错}}}
DECLARE
v_2M_a INTERVAL YEAR ;
v_2M_b INTERVAL MONTH ;
v_2S_c INTERVAL DAY ;
v_2S_d INTERVAL HOUR ;
v_2S_e INTERVAL MINUTE ;
v_2S_f INTERVAL SECOND ;
v_2M_g INTERVAL YEAR TO MONTH ;
v_2S_h INTERVAL DAY TO HOUR ;
v_2S_i INTERVAL DAY TO MINUTE ;
v_2S_j INTERVAL DAY TO SECOND ;
v_2S_k INTERVAL HOUR TO MINUTE ;
v_2S_l INTERVAL HOUR TO SECOND ;
v_2S_m INTERVAL MINUTE TO SECOND ;
v_msg VARCHAR(100) := 'INTERVAL_COPY_TEST_DIFFERENT : ';
BEGIN
p_interval_copy_different(
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
'9' , 
v_2M_a , 
v_2M_b , 
v_2S_c , 
v_2S_d , 
v_2S_e , 
v_2S_f , 
v_2M_g , 
v_2S_h , 
v_2S_i , 
v_2S_j , 
v_2S_k , 
v_2S_l , 
v_2S_m , 
v_msg 
);
END;
/

//删除存储过程
DROP PROCEDURE p_interval_copy_a;
DROP PROCEDURE p_interval_copy_b;
DROP PROCEDURE p_interval_copy_c;
DROP PROCEDURE p_interval_copy_d;
DROP PROCEDURE p_interval_copy_e;
DROP PROCEDURE p_interval_copy_f;
DROP PROCEDURE p_interval_copy_g;
DROP PROCEDURE p_interval_copy_h;
DROP PROCEDURE p_interval_copy_i;
DROP PROCEDURE p_interval_copy_j;
DROP PROCEDURE p_interval_copy_k;
DROP PROCEDURE p_interval_copy_l;
DROP PROCEDURE p_interval_copy_m;
DROP PROCEDURE p_interval_copy_char;
DROP PROCEDURE p_interval_copy_different;