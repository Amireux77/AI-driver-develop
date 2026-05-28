!4 XG-TYPE-INTERVAL-CONSTRAIN-001 主键约束测试
//创建表
CREATE TABLE t_table_001a (c1 INTERVAL YEAR PRIMARY KEY);
CREATE TABLE t_table_001b (c1 INTERVAL MONTH PRIMARY KEY);
CREATE TABLE t_table_001c (c1 INTERVAL DAY PRIMARY KEY);
CREATE TABLE t_table_001d (c1 INTERVAL HOUR PRIMARY KEY);
CREATE TABLE t_table_001e (c1 INTERVAL MINUTE PRIMARY KEY);
CREATE TABLE t_table_001f (c1 INTERVAL SECOND PRIMARY KEY);
CREATE TABLE t_table_001g (c1 INTERVAL YEAR TO MONTH PRIMARY KEY);
CREATE TABLE t_table_001h (c1 INTERVAL DAY TO HOUR PRIMARY KEY);
CREATE TABLE t_table_001i (c1 INTERVAL DAY TO MINUTE PRIMARY KEY);
CREATE TABLE t_table_001j (c1 INTERVAL DAY TO SECOND PRIMARY KEY);
CREATE TABLE t_table_001k (c1 INTERVAL HOUR TO MINUTE PRIMARY KEY);
CREATE TABLE t_table_001l (c1 INTERVAL HOUR TO SECOND PRIMARY KEY);
CREATE TABLE t_table_001m (c1 INTERVAL MINUTE TO SECOND PRIMARY KEY);

//插入数据
INSERT INTO t_table_001a VALUES ('9');
INSERT INTO t_table_001b VALUES ('9');
INSERT INTO t_table_001c VALUES ('9');
INSERT INTO t_table_001d VALUES ('9');
INSERT INTO t_table_001e VALUES ('9');
INSERT INTO t_table_001f VALUES ('9');
INSERT INTO t_table_001g VALUES ('9');
INSERT INTO t_table_001h VALUES ('9');
INSERT INTO t_table_001i VALUES ('9');
INSERT INTO t_table_001j VALUES ('9');
INSERT INTO t_table_001k VALUES ('9');
INSERT INTO t_table_001l VALUES ('9');
INSERT INTO t_table_001m VALUES ('9');

//再次插入数据
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001a VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001b VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001c VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001d VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001e VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001f VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001g VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001h VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001i VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001j VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001k VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001l VALUES ('9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_001m VALUES ('9');

//插入 NULL
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001a VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001b VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001c VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001d VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001e VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001f VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001g VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001h VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001i VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001j VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001k VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001l VALUES (NULL);
<预期结果 : 插入失败 , 主键不允许为空>
INSERT INTO t_table_001m VALUES (NULL);

//查询内容
<预期结果 : 9-0>
SELECT * FROM t_table_001a;
<预期结果 : 0-9>
SELECT * FROM t_table_001b;
<预期结果 : 9 0:00:00>
SELECT * FROM t_table_001c;
<预期结果 : 9:00:00>
SELECT * FROM t_table_001d;
<预期结果 : 0:09:00>
SELECT * FROM t_table_001e;
<预期结果 : 0:00:09>
SELECT * FROM t_table_001f;
<预期结果 : 0-9>
SELECT * FROM t_table_001g;
<预期结果 : 9:00:00>
SELECT * FROM t_table_001h;
<预期结果 : 0:09:00>
SELECT * FROM t_table_001i;
<预期结果 : 0:00:09>
SELECT * FROM t_table_001j;
<预期结果 : 0:09:00>
SELECT * FROM t_table_001k;
<预期结果 : 0:00:09>
SELECT * FROM t_table_001l;
<预期结果 : 0:00:09>
SELECT * FROM t_table_001m;

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

!4 XG-TYPE-INTERVAL-CONSTRAIN-002 外键约束测试
//创建父表
CREATE TABLE t_parent_002a (c1 INTERVAL YEAR PRIMARY KEY);
CREATE TABLE t_parent_002b (c1 INTERVAL MONTH PRIMARY KEY);
CREATE TABLE t_parent_002c (c1 INTERVAL DAY PRIMARY KEY);
CREATE TABLE t_parent_002d (c1 INTERVAL HOUR PRIMARY KEY);
CREATE TABLE t_parent_002e (c1 INTERVAL MINUTE PRIMARY KEY);
CREATE TABLE t_parent_002f (c1 INTERVAL SECOND PRIMARY KEY);
CREATE TABLE t_parent_002g (c1 INTERVAL YEAR TO MONTH PRIMARY KEY);
CREATE TABLE t_parent_002h (c1 INTERVAL DAY TO HOUR PRIMARY KEY);
CREATE TABLE t_parent_002i (c1 INTERVAL DAY TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_002j (c1 INTERVAL DAY TO SECOND PRIMARY KEY);
CREATE TABLE t_parent_002k (c1 INTERVAL HOUR TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_002l (c1 INTERVAL HOUR TO SECOND PRIMARY KEY);
CREATE TABLE t_parent_002m (c1 INTERVAL MINUTE TO SECOND PRIMARY KEY);

//创建子表
CREATE TABLE t_child_002a (id INT , c1 INTERVAL YEAR , FOREIGN KEY(c1) REFERENCES t_parent_002a(c1));
CREATE TABLE t_child_002b (id INT , c1 INTERVAL MONTH , FOREIGN KEY(c1) REFERENCES t_parent_002b(c1));
CREATE TABLE t_child_002c (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002c(c1));
CREATE TABLE t_child_002d (id INT , c1 INTERVAL HOUR , FOREIGN KEY(c1) REFERENCES t_parent_002d(c1));
CREATE TABLE t_child_002e (id INT , c1 INTERVAL MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002e(c1));
CREATE TABLE t_child_002f (id INT , c1 INTERVAL SECOND , FOREIGN KEY(c1) REFERENCES t_parent_002f(c1));
CREATE TABLE t_child_002g (id INT , c1 INTERVAL YEAR TO MONTH , FOREIGN KEY(c1) REFERENCES t_parent_002g(c1));
CREATE TABLE t_child_002h (id INT , c1 INTERVAL DAY TO HOUR , FOREIGN KEY(c1) REFERENCES t_parent_002h(c1));
CREATE TABLE t_child_002i (id INT , c1 INTERVAL DAY TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002i(c1));
CREATE TABLE t_child_002j (id INT , c1 INTERVAL DAY TO SECOND , FOREIGN KEY(c1) REFERENCES t_parent_002j(c1));
CREATE TABLE t_child_002k (id INT , c1 INTERVAL HOUR TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002k(c1));
CREATE TABLE t_child_002l (id INT , c1 INTERVAL HOUR TO SECOND , FOREIGN KEY(c1) REFERENCES t_parent_002l(c1));
CREATE TABLE t_child_002m (id INT , c1 INTERVAL MINUTE TO SECOND , FOREIGN KEY(c1) REFERENCES t_parent_002m(c1));

//创建不同类型外键关联
{{{
    在 INTERVAL 中年月与天时分秒两类格式各自之间均可以由较大单元向较小单元隐式转换,只有在字面量为标准格式时才能隐式转换
    例如列类型为 INTERVAL MONTH 时,可插入 '9-0',列类型为 INTERVAL SECOND 时,可插入 '9 0:00:00'
    此处测试可隐式转换类型作为外键时能否与主键建立关联
}}}
CREATE TABLE t_child_002b_1 (id INT , c1 INTERVAL YEAR , FOREIGN KEY(c1) REFERENCES t_parent_002b(c1));
CREATE TABLE t_child_002d_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002d(c1));
CREATE TABLE t_child_002e_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002e(c1));
CREATE TABLE t_child_002f_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002f(c1));
CREATE TABLE t_child_002g_1 (id INT , c1 INTERVAL YEAR , FOREIGN KEY(c1) REFERENCES t_parent_002g(c1));
CREATE TABLE t_child_002h_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002h(c1));
CREATE TABLE t_child_002i_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002i(c1));
CREATE TABLE t_child_002j_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002j(c1));
CREATE TABLE t_child_002k_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002k(c1));
CREATE TABLE t_child_002l_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002l(c1));
CREATE TABLE t_child_002m_1 (id INT , c1 INTERVAL DAY , FOREIGN KEY(c1) REFERENCES t_parent_002m(c1));

//向父表插入数据
INSERT INTO t_parent_002a VALUES ('9');
INSERT INTO t_parent_002b VALUES ('9');
INSERT INTO t_parent_002c VALUES ('9');
INSERT INTO t_parent_002d VALUES ('9');
INSERT INTO t_parent_002e VALUES ('9');
INSERT INTO t_parent_002f VALUES ('9');
INSERT INTO t_parent_002g VALUES ('9');
INSERT INTO t_parent_002h VALUES ('9');
INSERT INTO t_parent_002i VALUES ('9');
INSERT INTO t_parent_002j VALUES ('9');
INSERT INTO t_parent_002k VALUES ('9');
INSERT INTO t_parent_002l VALUES ('9');
INSERT INTO t_parent_002m VALUES ('9');

//向子表插入父表中存在的数据
INSERT INTO t_child_002a VALUES (1 , '9');
INSERT INTO t_child_002b VALUES (1 , '9');
INSERT INTO t_child_002c VALUES (1 , '9');
INSERT INTO t_child_002d VALUES (1 , '9');
INSERT INTO t_child_002e VALUES (1 , '9');
INSERT INTO t_child_002f VALUES (1 , '9');
INSERT INTO t_child_002g VALUES (1 , '9');
INSERT INTO t_child_002h VALUES (1 , '9');
INSERT INTO t_child_002i VALUES (1 , '9');
INSERT INTO t_child_002j VALUES (1 , '9');
INSERT INTO t_child_002k VALUES (1 , '9');
INSERT INTO t_child_002l VALUES (1 , '9');
INSERT INTO t_child_002m VALUES (1 , '9');

//向子表插入父表中不存在的数据
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002a VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002b VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002c VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002d VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002e VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002f VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002g VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002h VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002i VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002j VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002k VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002l VALUES (1 , '8');
<预期结果 : 插入失败 , 违反外键约束>
INSERT INTO t_child_002m VALUES (1 , '8');

//查询父表内容
<预期结果 : 9-0>
SELECT * FROM t_parent_002a;
<预期结果 : 0-9>
SELECT * FROM t_parent_002b;
<预期结果 : 9 0:00:00>
SELECT * FROM t_parent_002c;
<预期结果 : 9:00:00>
SELECT * FROM t_parent_002d;
<预期结果 : 0:09:00>
SELECT * FROM t_parent_002e;
<预期结果 : 0:00:09>
SELECT * FROM t_parent_002f;
<预期结果 : 0-9>
SELECT * FROM t_parent_002g;
<预期结果 : 9:00:00>
SELECT * FROM t_parent_002h;
<预期结果 : 0:09:00>
SELECT * FROM t_parent_002i;
<预期结果 : 0:00:09>
SELECT * FROM t_parent_002j;
<预期结果 : 0:09:00>
SELECT * FROM t_parent_002k;
<预期结果 : 0:00:09>
SELECT * FROM t_parent_002l;
<预期结果 : 0:00:09>
SELECT * FROM t_parent_002m;

//删除表
DROP TABLE t_child_002a;
DROP TABLE t_child_002b;
DROP TABLE t_child_002c;
DROP TABLE t_child_002d;
DROP TABLE t_child_002e;
DROP TABLE t_child_002f;
DROP TABLE t_child_002g;
DROP TABLE t_child_002h;
DROP TABLE t_child_002i;
DROP TABLE t_child_002j;
DROP TABLE t_child_002k;
DROP TABLE t_child_002l;
DROP TABLE t_child_002m;
DROP TABLE t_parent_002a;
DROP TABLE t_parent_002b;
DROP TABLE t_parent_002c;
DROP TABLE t_parent_002d;
DROP TABLE t_parent_002e;
DROP TABLE t_parent_002f;
DROP TABLE t_parent_002g;
DROP TABLE t_parent_002h;
DROP TABLE t_parent_002i;
DROP TABLE t_parent_002j;
DROP TABLE t_parent_002k;
DROP TABLE t_parent_002l;
DROP TABLE t_parent_002m;

//主表带精度测试
CREATE TABLE t_parent_002a_2 (c1 INTERVAL YEAR(4) PRIMARY KEY);
CREATE TABLE t_parent_002b_2 (c1 INTERVAL MONTH(4) PRIMARY KEY);
CREATE TABLE t_parent_002c_2 (c1 INTERVAL DAY(4) PRIMARY KEY);
CREATE TABLE t_parent_002d_2 (c1 INTERVAL HOUR(4) PRIMARY KEY);
CREATE TABLE t_parent_002e_2 (c1 INTERVAL MINUTE(4) PRIMARY KEY);
CREATE TABLE t_parent_002f_2 (c1 INTERVAL SECOND(4) PRIMARY KEY);
CREATE TABLE t_parent_002g_2 (c1 INTERVAL YEAR(4) TO MONTH PRIMARY KEY);
CREATE TABLE t_parent_002h_2 (c1 INTERVAL DAY(4) TO HOUR PRIMARY KEY);
CREATE TABLE t_parent_002i_2 (c1 INTERVAL DAY(4) TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_002j_2 (c1 INTERVAL DAY(4) TO SECOND(4) PRIMARY KEY);
CREATE TABLE t_parent_002k_2 (c1 INTERVAL HOUR(4) TO MINUTE PRIMARY KEY);
CREATE TABLE t_parent_002l_2 (c1 INTERVAL HOUR(4) TO SECOND(4) PRIMARY KEY);
CREATE TABLE t_parent_002m_2 (c1 INTERVAL MINUTE(4) TO SECOND(4) PRIMARY KEY);

//子表精度小于主表精度外键关联测试
CREATE TABLE t_child_002a_2 (id INT , c1 INTERVAL YEAR(3) , FOREIGN KEY(c1) REFERENCES t_parent_002a_2(c1));
CREATE TABLE t_child_002b_2 (id INT , c1 INTERVAL MONTH(3) , FOREIGN KEY(c1) REFERENCES t_parent_002b_2(c1));
CREATE TABLE t_child_002c_2 (id INT , c1 INTERVAL DAY(3) , FOREIGN KEY(c1) REFERENCES t_parent_002c_2(c1));
CREATE TABLE t_child_002d_2 (id INT , c1 INTERVAL HOUR(3) , FOREIGN KEY(c1) REFERENCES t_parent_002d_2(c1));
CREATE TABLE t_child_002e_2 (id INT , c1 INTERVAL MINUTE(3) , FOREIGN KEY(c1) REFERENCES t_parent_002e_2(c1));
CREATE TABLE t_child_002f_2 (id INT , c1 INTERVAL SECOND(3) , FOREIGN KEY(c1) REFERENCES t_parent_002f_2(c1));
CREATE TABLE t_child_002g_2 (id INT , c1 INTERVAL YEAR(3) TO MONTH , FOREIGN KEY(c1) REFERENCES t_parent_002g_2(c1));
CREATE TABLE t_child_002h_2 (id INT , c1 INTERVAL DAY(3) TO HOUR , FOREIGN KEY(c1) REFERENCES t_parent_002h_2(c1));
CREATE TABLE t_child_002i_2 (id INT , c1 INTERVAL DAY(3) TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002i_2(c1));
CREATE TABLE t_child_002j_2 (id INT , c1 INTERVAL DAY TO SECOND(3) , FOREIGN KEY(c1) REFERENCES t_parent_002j_2(c1));
CREATE TABLE t_child_002k_2 (id INT , c1 INTERVAL HOUR(3) TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002k_2(c1));
CREATE TABLE t_child_002l_2 (id INT , c1 INTERVAL HOUR(3) TO SECOND(3) , FOREIGN KEY(c1) REFERENCES t_parent_002l_2(c1));
CREATE TABLE t_child_002m_2 (id INT , c1 INTERVAL MINUTE(3) TO SECOND(3) , FOREIGN KEY(c1) REFERENCES t_parent_002m_2(c1));

//子表精度大于主表精度外键关联测试
CREATE TABLE t_child_002a_3 (id INT , c1 INTERVAL YEAR(5) , FOREIGN KEY(c1) REFERENCES t_parent_002a_2(c1));
CREATE TABLE t_child_002b_3 (id INT , c1 INTERVAL MONTH(5) , FOREIGN KEY(c1) REFERENCES t_parent_002b_2(c1));
CREATE TABLE t_child_002c_3 (id INT , c1 INTERVAL DAY(5) , FOREIGN KEY(c1) REFERENCES t_parent_002c_2(c1));
CREATE TABLE t_child_002d_3 (id INT , c1 INTERVAL HOUR(5) , FOREIGN KEY(c1) REFERENCES t_parent_002d_2(c1));
CREATE TABLE t_child_002e_3 (id INT , c1 INTERVAL MINUTE(5) , FOREIGN KEY(c1) REFERENCES t_parent_002e_2(c1));
CREATE TABLE t_child_002f_3 (id INT , c1 INTERVAL SECOND(5) , FOREIGN KEY(c1) REFERENCES t_parent_002f_2(c1));
CREATE TABLE t_child_002g_3 (id INT , c1 INTERVAL YEAR(5) TO MONTH , FOREIGN KEY(c1) REFERENCES t_parent_002g_2(c1));
CREATE TABLE t_child_002h_3 (id INT , c1 INTERVAL DAY(5) TO HOUR , FOREIGN KEY(c1) REFERENCES t_parent_002h_2(c1));
CREATE TABLE t_child_002i_3 (id INT , c1 INTERVAL DAY(5) TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002i_2(c1));
CREATE TABLE t_child_002j_3 (id INT , c1 INTERVAL DAY TO SECOND(5) , FOREIGN KEY(c1) REFERENCES t_parent_002j_2(c1));
CREATE TABLE t_child_002k_3 (id INT , c1 INTERVAL HOUR(5) TO MINUTE , FOREIGN KEY(c1) REFERENCES t_parent_002k_2(c1));
CREATE TABLE t_child_002l_3 (id INT , c1 INTERVAL HOUR(5) TO SECOND(5) , FOREIGN KEY(c1) REFERENCES t_parent_002l_2(c1));
CREATE TABLE t_child_002m_3 (id INT , c1 INTERVAL MINUTE(5) TO SECOND(5) , FOREIGN KEY(c1) REFERENCES t_parent_002m_2(c1));

//删除表
DROP TABLE t_child_002a_2;
DROP TABLE t_child_002b_2;
DROP TABLE t_child_002c_2;
DROP TABLE t_child_002d_2;
DROP TABLE t_child_002e_2;
DROP TABLE t_child_002f_2;
DROP TABLE t_child_002g_2;
DROP TABLE t_child_002h_2;
DROP TABLE t_child_002i_2;
DROP TABLE t_child_002j_2;
DROP TABLE t_child_002k_2;
DROP TABLE t_child_002l_2;
DROP TABLE t_child_002m_2;
DROP TABLE t_child_002a_3;
DROP TABLE t_child_002b_3;
DROP TABLE t_child_002c_3;
DROP TABLE t_child_002d_3;
DROP TABLE t_child_002e_3;
DROP TABLE t_child_002f_3;
DROP TABLE t_child_002g_3;
DROP TABLE t_child_002h_3;
DROP TABLE t_child_002i_3;
DROP TABLE t_child_002j_3;
DROP TABLE t_child_002k_3;
DROP TABLE t_child_002l_3;
DROP TABLE t_child_002m_3;
DROP TABLE t_parent_002a_2;
DROP TABLE t_parent_002b_2;
DROP TABLE t_parent_002c_2;
DROP TABLE t_parent_002d_2;
DROP TABLE t_parent_002e_2;
DROP TABLE t_parent_002f_2;
DROP TABLE t_parent_002g_2;
DROP TABLE t_parent_002h_2;
DROP TABLE t_parent_002i_2;
DROP TABLE t_parent_002j_2;
DROP TABLE t_parent_002k_2;
DROP TABLE t_parent_002l_2;
DROP TABLE t_parent_002m_2;

!4 XG-TYPE-INTERVAL-CONSTRAIN-003 唯一值约束测试
//创建表
CREATE TABLE t_table_003a (id INT , c1 INTERVAL YEAR UNIQUE);
CREATE TABLE t_table_003b (id INT , c1 INTERVAL MONTH UNIQUE);
CREATE TABLE t_table_003c (id INT , c1 INTERVAL DAY UNIQUE);
CREATE TABLE t_table_003d (id INT , c1 INTERVAL HOUR UNIQUE);
CREATE TABLE t_table_003e (id INT , c1 INTERVAL MINUTE UNIQUE);
CREATE TABLE t_table_003f (id INT , c1 INTERVAL SECOND UNIQUE);
CREATE TABLE t_table_003g (id INT , c1 INTERVAL YEAR TO MONTH UNIQUE);
CREATE TABLE t_table_003h (id INT , c1 INTERVAL DAY TO HOUR UNIQUE);
CREATE TABLE t_table_003i (id INT , c1 INTERVAL DAY TO MINUTE UNIQUE);
CREATE TABLE t_table_003j (id INT , c1 INTERVAL DAY TO SECOND UNIQUE);
CREATE TABLE t_table_003k (id INT , c1 INTERVAL HOUR TO MINUTE UNIQUE);
CREATE TABLE t_table_003l (id INT , c1 INTERVAL HOUR TO SECOND UNIQUE);
CREATE TABLE t_table_003m (id INT , c1 INTERVAL MINUTE TO SECOND UNIQUE);

//插入数据
INSERT INTO t_table_003a VALUES (1 , '9');
INSERT INTO t_table_003b VALUES (1 , '9');
INSERT INTO t_table_003c VALUES (1 , '9');
INSERT INTO t_table_003d VALUES (1 , '9');
INSERT INTO t_table_003e VALUES (1 , '9');
INSERT INTO t_table_003f VALUES (1 , '9');
INSERT INTO t_table_003g VALUES (1 , '9');
INSERT INTO t_table_003h VALUES (1 , '9');
INSERT INTO t_table_003i VALUES (1 , '9');
INSERT INTO t_table_003j VALUES (1 , '9');
INSERT INTO t_table_003k VALUES (1 , '9');
INSERT INTO t_table_003l VALUES (1 , '9');
INSERT INTO t_table_003m VALUES (1 , '9');

//再次插入数据
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003a VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003b VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003c VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003d VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003e VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003f VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003g VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003h VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003i VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003j VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003k VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003l VALUES (1 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003m VALUES (1 , '9');

//插入写法不同但等值的数据
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003a VALUES (1 , '09-00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003b VALUES (1 , '00-09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003c VALUES (1 , '09 00:00:00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003d VALUES (1 , '09:00:00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003e VALUES (1 , '00:09:00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003f VALUES (1 , '00:00:09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003g VALUES (1 , '00-09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003h VALUES (1 , '00 09:00:00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003i VALUES (1 , '00 00:09:00');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003j VALUES (1 , '00 00:00:09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003k VALUES (1 , '00:09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003l VALUES (1 , '00:00:09');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_003m VALUES (1 , '00:09');


//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_003a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_003b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_003c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_003d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_003e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_003f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_003g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_003h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_003i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_003j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_003k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_003l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_003m;

//删除表
DROP TABLE t_table_003a;
DROP TABLE t_table_003b;
DROP TABLE t_table_003c;
DROP TABLE t_table_003d;
DROP TABLE t_table_003e;
DROP TABLE t_table_003f;
DROP TABLE t_table_003g;
DROP TABLE t_table_003h;
DROP TABLE t_table_003i;
DROP TABLE t_table_003j;
DROP TABLE t_table_003k;
DROP TABLE t_table_003l;
DROP TABLE t_table_003m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-004 值检查约束测试
//创建表
CREATE TABLE t_table_004a (id INT , c1 INTERVAL YEAR CHECK (c1 >= '8-0'));
CREATE TABLE t_table_004b (id INT , c1 INTERVAL MONTH CHECK (c1 >= '0-8'));
CREATE TABLE t_table_004c (id INT , c1 INTERVAL DAY CHECK (c1 >= '8 0:00:00'));
CREATE TABLE t_table_004d (id INT , c1 INTERVAL HOUR CHECK (c1 >= '8:00:00'));
CREATE TABLE t_table_004e (id INT , c1 INTERVAL MINUTE CHECK (c1 >= '0:08:00'));
CREATE TABLE t_table_004f (id INT , c1 INTERVAL SECOND CHECK (c1 >= '0:00:08'));
CREATE TABLE t_table_004g (id INT , c1 INTERVAL YEAR TO MONTH CHECK (c1 >= '0-8'));
CREATE TABLE t_table_004h (id INT , c1 INTERVAL DAY TO HOUR CHECK (c1 >= '8:00:00'));
CREATE TABLE t_table_004i (id INT , c1 INTERVAL DAY TO MINUTE CHECK (c1 >= '0:08:00'));
CREATE TABLE t_table_004j (id INT , c1 INTERVAL DAY TO SECOND CHECK (c1 >= '0:00:08'));
CREATE TABLE t_table_004k (id INT , c1 INTERVAL HOUR TO MINUTE CHECK (c1 >= '0:08:00'));
CREATE TABLE t_table_004l (id INT , c1 INTERVAL HOUR TO SECOND CHECK (c1 >= '0:00:08'));
CREATE TABLE t_table_004m (id INT , c1 INTERVAL MINUTE TO SECOND CHECK (c1 >= '0:00:08'));

//插入合法数据
INSERT INTO t_table_004a VALUES (1 , '9');
INSERT INTO t_table_004b VALUES (1 , '9');
INSERT INTO t_table_004c VALUES (1 , '9');
INSERT INTO t_table_004d VALUES (1 , '9');
INSERT INTO t_table_004e VALUES (1 , '9');
INSERT INTO t_table_004f VALUES (1 , '9');
INSERT INTO t_table_004g VALUES (1 , '9');
INSERT INTO t_table_004h VALUES (1 , '9');
INSERT INTO t_table_004i VALUES (1 , '9');
INSERT INTO t_table_004j VALUES (1 , '9');
INSERT INTO t_table_004k VALUES (1 , '9');
INSERT INTO t_table_004l VALUES (1 , '9');
INSERT INTO t_table_004m VALUES (1 , '9');

//插入非法数据
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004a VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004b VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004c VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004d VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004e VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004f VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004g VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004h VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004i VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004j VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004k VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004l VALUES (1 , '7');
<预期结果 : 插入失败 , 违反 CHECK 约束>
INSERT INTO t_table_004m VALUES (1 , '7');

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_004a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_004b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_004c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_004d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_004e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_004f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_004g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_004h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_004i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_004j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_004k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_004l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_004m;

//删除表
DROP TABLE t_table_004a;
DROP TABLE t_table_004b;
DROP TABLE t_table_004c;
DROP TABLE t_table_004d;
DROP TABLE t_table_004e;
DROP TABLE t_table_004f;
DROP TABLE t_table_004g;
DROP TABLE t_table_004h;
DROP TABLE t_table_004i;
DROP TABLE t_table_004j;
DROP TABLE t_table_004k;
DROP TABLE t_table_004l;
DROP TABLE t_table_004m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-005 非空约束测试
//创建表
CREATE TABLE t_table_005a (id INT , c1 INTERVAL YEAR NOT NULL);
CREATE TABLE t_table_005b (id INT , c1 INTERVAL MONTH NOT NULL);
CREATE TABLE t_table_005c (id INT , c1 INTERVAL DAY NOT NULL);
CREATE TABLE t_table_005d (id INT , c1 INTERVAL HOUR NOT NULL);
CREATE TABLE t_table_005e (id INT , c1 INTERVAL MINUTE NOT NULL);
CREATE TABLE t_table_005f (id INT , c1 INTERVAL SECOND NOT NULL);
CREATE TABLE t_table_005g (id INT , c1 INTERVAL YEAR TO MONTH NOT NULL);
CREATE TABLE t_table_005h (id INT , c1 INTERVAL DAY TO HOUR NOT NULL);
CREATE TABLE t_table_005i (id INT , c1 INTERVAL DAY TO MINUTE NOT NULL);
CREATE TABLE t_table_005j (id INT , c1 INTERVAL DAY TO SECOND NOT NULL);
CREATE TABLE t_table_005k (id INT , c1 INTERVAL HOUR TO MINUTE NOT NULL);
CREATE TABLE t_table_005l (id INT , c1 INTERVAL HOUR TO SECOND NOT NULL);
CREATE TABLE t_table_005m (id INT , c1 INTERVAL MINUTE TO SECOND NOT NULL);

//插入合法数据
INSERT INTO t_table_005a VALUES (1 , '9');
INSERT INTO t_table_005b VALUES (1 , '9');
INSERT INTO t_table_005c VALUES (1 , '9');
INSERT INTO t_table_005d VALUES (1 , '9');
INSERT INTO t_table_005e VALUES (1 , '9');
INSERT INTO t_table_005f VALUES (1 , '9');
INSERT INTO t_table_005g VALUES (1 , '9');
INSERT INTO t_table_005h VALUES (1 , '9');
INSERT INTO t_table_005i VALUES (1 , '9');
INSERT INTO t_table_005j VALUES (1 , '9');
INSERT INTO t_table_005k VALUES (1 , '9');
INSERT INTO t_table_005l VALUES (1 , '9');
INSERT INTO t_table_005m VALUES (1 , '9');

//插入非法数据
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005a VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005b VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005c VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005d VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005e VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005f VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005g VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005h VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005i VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005j VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005k VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005l VALUES (1 , NULL);
<预期结果 : 插入失败 , 字段C1不能取空值>
INSERT INTO t_table_005m VALUES (1 , NULL);

//查询内容
<预期结果 : 1 | 9-0>
SELECT * FROM t_table_005a;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005b;
<预期结果 : 1 | 9 0:00:00>
SELECT * FROM t_table_005c;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005d;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005e;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005f;
<预期结果 : 1 | 0-9>
SELECT * FROM t_table_005g;
<预期结果 : 1 | 9:00:00>
SELECT * FROM t_table_005h;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005i;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005j;
<预期结果 : 1 | 0:09:00>
SELECT * FROM t_table_005k;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005l;
<预期结果 : 1 | 0:00:09>
SELECT * FROM t_table_005m;

//删除表
DROP TABLE t_table_005a;
DROP TABLE t_table_005b;
DROP TABLE t_table_005c;
DROP TABLE t_table_005d;
DROP TABLE t_table_005e;
DROP TABLE t_table_005f;
DROP TABLE t_table_005g;
DROP TABLE t_table_005h;
DROP TABLE t_table_005i;
DROP TABLE t_table_005j;
DROP TABLE t_table_005k;
DROP TABLE t_table_005l;
DROP TABLE t_table_005m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-006 索引字段约束验证
//创建表
CREATE TABLE t_table_006a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_006b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_006c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_006d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_006e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_006f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_006g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_006h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_006i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_006j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_006k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_006l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_006m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建索引
CREATE INDEX idx_006a ON t_table_006a(c1);
CREATE INDEX idx_006b ON t_table_006b(c1);
CREATE INDEX idx_006c ON t_table_006c(c1);
CREATE INDEX idx_006d ON t_table_006d(c1);
CREATE INDEX idx_006e ON t_table_006e(c1);
CREATE INDEX idx_006f ON t_table_006f(c1);
CREATE INDEX idx_006g ON t_table_006g(c1);
CREATE INDEX idx_006h ON t_table_006h(c1);
CREATE INDEX idx_006i ON t_table_006i(c1);
CREATE INDEX idx_006j ON t_table_006j(c1);
CREATE INDEX idx_006k ON t_table_006k(c1);
CREATE INDEX idx_006l ON t_table_006l(c1);
CREATE INDEX idx_006m ON t_table_006m(c1);

//插入数据
INSERT INTO t_table_006a VALUES (1 , '9');
INSERT INTO t_table_006b VALUES (1 , '9');
INSERT INTO t_table_006c VALUES (1 , '9');
INSERT INTO t_table_006d VALUES (1 , '9');
INSERT INTO t_table_006e VALUES (1 , '9');
INSERT INTO t_table_006f VALUES (1 , '9');
INSERT INTO t_table_006g VALUES (1 , '9');
INSERT INTO t_table_006h VALUES (1 , '9');
INSERT INTO t_table_006i VALUES (1 , '9');
INSERT INTO t_table_006j VALUES (1 , '9');
INSERT INTO t_table_006k VALUES (1 , '9');
INSERT INTO t_table_006l VALUES (1 , '9');
INSERT INTO t_table_006m VALUES (1 , '9');

//更新数据
UPDATE t_table_006a SET c1 = '8' WHERE id = 1;
UPDATE t_table_006b SET c1 = '8' WHERE id = 1;
UPDATE t_table_006c SET c1 = '8' WHERE id = 1;
UPDATE t_table_006d SET c1 = '8' WHERE id = 1;
UPDATE t_table_006e SET c1 = '8' WHERE id = 1;
UPDATE t_table_006f SET c1 = '8' WHERE id = 1;
UPDATE t_table_006g SET c1 = '8' WHERE id = 1;
UPDATE t_table_006h SET c1 = '8' WHERE id = 1;
UPDATE t_table_006i SET c1 = '8' WHERE id = 1;
UPDATE t_table_006j SET c1 = '8' WHERE id = 1;
UPDATE t_table_006k SET c1 = '8' WHERE id = 1;
UPDATE t_table_006l SET c1 = '8' WHERE id = 1;
UPDATE t_table_006m SET c1 = '8' WHERE id = 1;

//查询内容
<预期结果 : 1 | 8-0>
SELECT * FROM t_table_006a;
<预期结果 : 1 | 0-8>
SELECT * FROM t_table_006b;
<预期结果 : 1 | 8 0:00:00>
SELECT * FROM t_table_006c;
<预期结果 : 1 | 8:00:00>
SELECT * FROM t_table_006d;
<预期结果 : 1 | 0:08:00>
SELECT * FROM t_table_006e;
<预期结果 : 1 | 0:00:08>
SELECT * FROM t_table_006f;
<预期结果 : 1 | 0-8>
SELECT * FROM t_table_006g;
<预期结果 : 1 | 8:00:00>
SELECT * FROM t_table_006h;
<预期结果 : 1 | 0:08:00>
SELECT * FROM t_table_006i;
<预期结果 : 1 | 0:00:08>
SELECT * FROM t_table_006j;
<预期结果 : 1 | 0:08:00>
SELECT * FROM t_table_006k;
<预期结果 : 1 | 0:00:08>
SELECT * FROM t_table_006l;
<预期结果 : 1 | 0:00:08>
SELECT * FROM t_table_006m;

//删除表
DROP TABLE t_table_006a;
DROP TABLE t_table_006b;
DROP TABLE t_table_006c;
DROP TABLE t_table_006d;
DROP TABLE t_table_006e;
DROP TABLE t_table_006f;
DROP TABLE t_table_006g;
DROP TABLE t_table_006h;
DROP TABLE t_table_006i;
DROP TABLE t_table_006j;
DROP TABLE t_table_006k;
DROP TABLE t_table_006l;
DROP TABLE t_table_006m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-007 唯一索引约束验证
//创建表
CREATE TABLE t_table_007a (id INT , c1 INTERVAL YEAR);
CREATE TABLE t_table_007b (id INT , c1 INTERVAL MONTH);
CREATE TABLE t_table_007c (id INT , c1 INTERVAL DAY);
CREATE TABLE t_table_007d (id INT , c1 INTERVAL HOUR);
CREATE TABLE t_table_007e (id INT , c1 INTERVAL MINUTE);
CREATE TABLE t_table_007f (id INT , c1 INTERVAL SECOND);
CREATE TABLE t_table_007g (id INT , c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_007h (id INT , c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_007i (id INT , c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_007j (id INT , c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_007k (id INT , c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_007l (id INT , c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_007m (id INT , c1 INTERVAL MINUTE TO SECOND);

//创建唯一索引
CREATE UNIQUE INDEX uidx_007a ON t_table_007a(c1);
CREATE UNIQUE INDEX uidx_007b ON t_table_007b(c1);
CREATE UNIQUE INDEX uidx_007c ON t_table_007c(c1);
CREATE UNIQUE INDEX uidx_007d ON t_table_007d(c1);
CREATE UNIQUE INDEX uidx_007e ON t_table_007e(c1);
CREATE UNIQUE INDEX uidx_007f ON t_table_007f(c1);
CREATE UNIQUE INDEX uidx_007g ON t_table_007g(c1);
CREATE UNIQUE INDEX uidx_007h ON t_table_007h(c1);
CREATE UNIQUE INDEX uidx_007i ON t_table_007i(c1);
CREATE UNIQUE INDEX uidx_007j ON t_table_007j(c1);
CREATE UNIQUE INDEX uidx_007k ON t_table_007k(c1);
CREATE UNIQUE INDEX uidx_007l ON t_table_007l(c1);
CREATE UNIQUE INDEX uidx_007m ON t_table_007m(c1);

//插入数据
INSERT INTO t_table_007a VALUES (1 , '9');
INSERT INTO t_table_007b VALUES (1 , '9');
INSERT INTO t_table_007c VALUES (1 , '9');
INSERT INTO t_table_007d VALUES (1 , '9');
INSERT INTO t_table_007e VALUES (1 , '9');
INSERT INTO t_table_007f VALUES (1 , '9');
INSERT INTO t_table_007g VALUES (1 , '9');
INSERT INTO t_table_007h VALUES (1 , '9');
INSERT INTO t_table_007i VALUES (1 , '9');
INSERT INTO t_table_007j VALUES (1 , '9');
INSERT INTO t_table_007k VALUES (1 , '9');
INSERT INTO t_table_007l VALUES (1 , '9');
INSERT INTO t_table_007m VALUES (1 , '9');

//插入数据
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007a VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007b VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007c VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007d VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007e VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007f VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007g VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007h VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007i VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007j VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007k VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007l VALUES (2 , '9');
<预期结果 : 插入失败 , 违反唯一值约束>
INSERT INTO t_table_007m VALUES (2 , '9');

//插入数据
INSERT INTO t_table_007a VALUES (3 , '6');
INSERT INTO t_table_007b VALUES (3 , '6');
INSERT INTO t_table_007c VALUES (3 , '6');
INSERT INTO t_table_007d VALUES (3 , '6');
INSERT INTO t_table_007e VALUES (3 , '6');
INSERT INTO t_table_007f VALUES (3 , '6');
INSERT INTO t_table_007g VALUES (3 , '6');
INSERT INTO t_table_007h VALUES (3 , '6');
INSERT INTO t_table_007i VALUES (3 , '6');
INSERT INTO t_table_007j VALUES (3 , '6');
INSERT INTO t_table_007k VALUES (3 , '6');
INSERT INTO t_table_007l VALUES (3 , '6');
INSERT INTO t_table_007m VALUES (3 , '6');

//更新数据
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007a SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007b SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007c SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007d SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007e SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007f SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007g SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007h SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007i SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007j SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007k SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007l SET c1 = '9' WHERE id = 3;
<预期结果 : 更新失败 , 违反唯一值约束>
UPDATE t_table_007m SET c1 = '9' WHERE id = 3;

//查询内容
<预期结果 : 1 | 9-0 / 3 | 6-0>
SELECT * FROM t_table_007a;
<预期结果 : 1 | 0-9 / 3 | 0-6>
SELECT * FROM t_table_007b;
<预期结果 : 1 | 9 0:00:00 / 3 | 6 0:00:00>
SELECT * FROM t_table_007c;
<预期结果 : 1 | 9:00:00 / 3 | 6:00:00>
SELECT * FROM t_table_007d;
<预期结果 : 1 | 0:09:00 / 3 | 0:06:00>
SELECT * FROM t_table_007e;
<预期结果 : 1 | 0:00:09 / 3 | 0:00:06>
SELECT * FROM t_table_007f;
<预期结果 : 1 | 0-9 / 3 | 0-6>
SELECT * FROM t_table_007g;
<预期结果 : 1 | 9:00:00 / 3 | 6:00:00>
SELECT * FROM t_table_007h;
<预期结果 : 1 | 0:09:00 / 3 | 0:06:00>
SELECT * FROM t_table_007i;
<预期结果 : 1 | 0:00:09 / 3 | 0:00:06>
SELECT * FROM t_table_007j;
<预期结果 : 1 | 0:09:00 / 3 | 0:06:00>
SELECT * FROM t_table_007k;
<预期结果 : 1 | 0:00:09 / 3 | 0:00:06>
SELECT * FROM t_table_007l;
<预期结果 : 1 | 0:00:09 / 3 | 0:00:06>
SELECT * FROM t_table_007m;

//删除表
DROP TABLE t_table_007a;
DROP TABLE t_table_007b;
DROP TABLE t_table_007c;
DROP TABLE t_table_007d;
DROP TABLE t_table_007e;
DROP TABLE t_table_007f;
DROP TABLE t_table_007g;
DROP TABLE t_table_007h;
DROP TABLE t_table_007i;
DROP TABLE t_table_007j;
DROP TABLE t_table_007k;
DROP TABLE t_table_007l;
DROP TABLE t_table_007m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-008 默认值与多列混合声明
//创建表
CREATE TABLE t_table_008a (id INT , c1 INTERVAL YEAR DEFAULT '9' , c2 INTERVAL YEAR NOT NULL);
CREATE TABLE t_table_008b (id INT , c1 INTERVAL MONTH DEFAULT '9' , c2 INTERVAL MONTH NOT NULL);
CREATE TABLE t_table_008c (id INT , c1 INTERVAL DAY DEFAULT '9' , c2 INTERVAL DAY NOT NULL);
CREATE TABLE t_table_008d (id INT , c1 INTERVAL HOUR DEFAULT '9' , c2 INTERVAL HOUR NOT NULL);
CREATE TABLE t_table_008e (id INT , c1 INTERVAL MINUTE DEFAULT '9' , c2 INTERVAL MINUTE NOT NULL);
CREATE TABLE t_table_008f (id INT , c1 INTERVAL SECOND DEFAULT '9' , c2 INTERVAL SECOND NOT NULL);
CREATE TABLE t_table_008g (id INT , c1 INTERVAL YEAR TO MONTH DEFAULT '9' , c2 INTERVAL YEAR TO MONTH NOT NULL);
CREATE TABLE t_table_008h (id INT , c1 INTERVAL DAY TO HOUR DEFAULT '9' , c2 INTERVAL DAY TO HOUR NOT NULL);
CREATE TABLE t_table_008i (id INT , c1 INTERVAL DAY TO MINUTE DEFAULT '9' , c2 INTERVAL DAY TO MINUTE NOT NULL);
CREATE TABLE t_table_008j (id INT , c1 INTERVAL DAY TO SECOND DEFAULT '9' , c2 INTERVAL DAY TO SECOND NOT NULL);
CREATE TABLE t_table_008k (id INT , c1 INTERVAL HOUR TO MINUTE DEFAULT '9' , c2 INTERVAL HOUR TO MINUTE NOT NULL);
CREATE TABLE t_table_008l (id INT , c1 INTERVAL HOUR TO SECOND DEFAULT '9' , c2 INTERVAL HOUR TO SECOND NOT NULL);
CREATE TABLE t_table_008m (id INT , c1 INTERVAL MINUTE TO SECOND DEFAULT '9' , c2 INTERVAL MINUTE TO SECOND NOT NULL);

//插入数据
INSERT INTO t_table_008a(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008b(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008c(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008d(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008e(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008f(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008g(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008h(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008i(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008j(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008k(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008l(id , c2) VALUES (1 , '6');
INSERT INTO t_table_008m(id , c2) VALUES (1 , '6');

//查询内容
<预期结果 : 1 | 9-0 | 6-0>
SELECT * FROM t_table_008a WHERE c2 = '6-0';
<预期结果 : 1 | 0-9 | 0-6>
SELECT * FROM t_table_008b WHERE c2 = '0-6';
<预期结果 : 1 | 9 0:00:00 | 6 0:00:00>
SELECT * FROM t_table_008c WHERE c2 = '6 0:00:00';
<预期结果 : 1 | 9:00:00 | 6:00:00>
SELECT * FROM t_table_008d WHERE c2 = '6:00:00';
<预期结果 : 1 | 0:09:00 | 0:06:00>
SELECT * FROM t_table_008e WHERE c2 = '0:06:00';
<预期结果 : 1 | 0:00:09 | 0:00:06>
SELECT * FROM t_table_008f WHERE c2 = '0:00:06';
<预期结果 : 1 | 0-9 | 0-6>
SELECT * FROM t_table_008g WHERE c2 = '0-6';
<预期结果 : 1 | 9:00:00 | 6:00:00>
SELECT * FROM t_table_008h WHERE c2 = '6:00:00';
<预期结果 : 1 | 0:09:00 | 0:06:00>
SELECT * FROM t_table_008i WHERE c2 = '0:06:00';
<预期结果 : 1 | 0:00:09 | 0:00:06>
SELECT * FROM t_table_008j WHERE c2 = '0:00:06';
<预期结果 : 1 | 0:09:00 | 0:06:00>
SELECT * FROM t_table_008k WHERE c2 = '0:06:00';
<预期结果 : 1 | 0:00:09 | 0:00:06>
SELECT * FROM t_table_008l WHERE c2 = '0:00:06';
<预期结果 : 1 | 0:00:09 | 0:00:06>
SELECT * FROM t_table_008m WHERE c2 = '0:00:06';

//删除表
DROP TABLE t_table_008a;
DROP TABLE t_table_008b;
DROP TABLE t_table_008c;
DROP TABLE t_table_008d;
DROP TABLE t_table_008e;
DROP TABLE t_table_008f;
DROP TABLE t_table_008g;
DROP TABLE t_table_008h;
DROP TABLE t_table_008i;
DROP TABLE t_table_008j;
DROP TABLE t_table_008k;
DROP TABLE t_table_008l;
DROP TABLE t_table_008m;

!4 XG-TYPE-INTERVAL-CONSTRAIN-009 自增约束测试
<预期结果 : 创建失败 , INTERVAL 类型不支持自增约束>
CREATE TABLE t_table_009a (c1 INTERVAL YEAR AUTO_INCREMENT);
CREATE TABLE t_table_009b (c1 INTERVAL MONTH AUTO_INCREMENT);
CREATE TABLE t_table_009c (c1 INTERVAL DAY AUTO_INCREMENT);
CREATE TABLE t_table_009d (c1 INTERVAL HOUR AUTO_INCREMENT);
CREATE TABLE t_table_009e (c1 INTERVAL MINUTE AUTO_INCREMENT);
CREATE TABLE t_table_009f (c1 INTERVAL SECOND AUTO_INCREMENT);
CREATE TABLE t_table_009g (c1 INTERVAL YEAR TO MONTH AUTO_INCREMENT);
CREATE TABLE t_table_009h (c1 INTERVAL DAY TO HOUR AUTO_INCREMENT);
CREATE TABLE t_table_009i (c1 INTERVAL DAY TO MINUTE AUTO_INCREMENT);
CREATE TABLE t_table_009j (c1 INTERVAL DAY TO SECOND AUTO_INCREMENT);
CREATE TABLE t_table_009k (c1 INTERVAL HOUR TO MINUTE AUTO_INCREMENT);
CREATE TABLE t_table_009l (c1 INTERVAL HOUR TO SECOND AUTO_INCREMENT);
CREATE TABLE t_table_009m (c1 INTERVAL MINUTE TO SECOND AUTO_INCREMENT);