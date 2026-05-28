---
Help: 验证并发场景
Test
---

{{{
编写人员 : 马国贤
编写时间 : 2026-05-07
测试要点 : 验证 interval 类型并发测试
}}}

!anchor back_to_top
//.#TEST_CASE_1 XG-TYPE-INTERVAL-Concurrency-001 并发插入

!define exec_way {Query}
!define if_para {}

!anchor TEST_CASE_1
.#back_to_top
//<TEST_CASE_1> 
!4 XG-TYPE-INTERVAL-Concurrency-001 并发插入

!|Execute Ddl|!-
CREATE TABLE t_table_con_a (id INT PRIMARY KEY, c1 INTERVAL YEAR);
CREATE TABLE t_table_con_b (id INT PRIMARY KEY, c1 INTERVAL MONTH);
CREATE TABLE t_table_con_c (id INT PRIMARY KEY, c1 INTERVAL DAY);
CREATE TABLE t_table_con_d (id INT PRIMARY KEY, c1 INTERVAL HOUR);
CREATE TABLE t_table_con_e (id INT PRIMARY KEY, c1 INTERVAL MINUTE);
CREATE TABLE t_table_con_f (id INT PRIMARY KEY, c1 INTERVAL SECOND);
CREATE TABLE t_table_con_g (id INT PRIMARY KEY, c1 INTERVAL YEAR TO MONTH);
CREATE TABLE t_table_con_h (id INT PRIMARY KEY, c1 INTERVAL DAY TO HOUR);
CREATE TABLE t_table_con_i (id INT PRIMARY KEY, c1 INTERVAL DAY TO MINUTE);
CREATE TABLE t_table_con_j (id INT PRIMARY KEY, c1 INTERVAL DAY TO SECOND);
CREATE TABLE t_table_con_k (id INT PRIMARY KEY, c1 INTERVAL HOUR TO MINUTE);
CREATE TABLE t_table_con_l (id INT PRIMARY KEY, c1 INTERVAL HOUR TO SECOND);
CREATE TABLE t_table_con_m (id INT PRIMARY KEY, c1 INTERVAL MINUTE TO SECOND);
-!|

//并发插入 (两个SSH连接分别后台执行大批量插入,确保实际执行过程中存在并发重叠)
!|Execute Ddl|!-USE SYSTEM;-!|

!|Query|!-SELECT REGEXP_SUBSTR(@default_url,'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}') node_ip from sys_clusters LIMIT 1;-!|
|NODE_IP?                                                                                                             |
|!->>cluster_ip-!                                                                                                     |

!|Set Parameter|lip|<<cluster_ip|


!|Query|SHOW listen_port;|
|LISTEN_PORT?            |
|>>pt                    |

!|Set Parameter|lport|<<pt|

!|Ssh Connect|remoteCon1|@ssh|

!|Ssh Connect|remoteCon2|@ssh|

//写入SQL文件1
!|bind current ssh connect|remoteCon1|

!|Execute Ssh|!-touch @xgfit_file_path@/xg_test_file/test_interval1.sh-!|

!|Execute Ssh|!-
cat > @xgfit_file_path@/xg_test_file/test_interval1.sh << END
#!/bin/bash
xgconsole -s nssl -h @lip@ -P @lport@ -d SYSTEM -u SYSDBA -p SYSDBA << EOF
BEGIN
FOR i IN 1..5000 LOOP
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_a VALUES(' || i || ', INTERVAL ''1-0'' YEAR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_b VALUES(' || i || ', INTERVAL ''0-1'' MONTH)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_c VALUES(' || i || ', INTERVAL ''12 0:00:00'' DAY)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_d VALUES(' || i || ', INTERVAL ''12:00:00'' HOUR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_e VALUES(' || i || ', INTERVAL ''0:12:00'' MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_f VALUES(' || i || ', INTERVAL ''0:00:12'' SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_g VALUES(' || i || ', INTERVAL ''1-0'' YEAR TO MONTH)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_h VALUES(' || i || ', INTERVAL ''12 0:00:00'' DAY TO HOUR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_i VALUES(' || i || ', INTERVAL ''12 0:34:00'' DAY TO MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_j VALUES(' || i || ', INTERVAL ''12 0:00:34'' DAY TO SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_k VALUES(' || i || ', INTERVAL ''12:34:00'' HOUR TO MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_l VALUES(' || i || ', INTERVAL ''12:00:34'' HOUR TO SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_m VALUES(' || i || ', INTERVAL ''12:34'' MINUTE TO SECOND)';
END LOOP;
END;
/
exit;
EOF
touch @xgfit_file_path@/xg_test_file/t_interval_concurrent_1.done
END
-!|

//写入SQL文件2
!|bind current ssh connect|remoteCon2|

!|Execute Ssh|!-touch @xgfit_file_path@/xg_test_file/test_interval2.sh-!|

!|Execute Ssh|!-
cat > @xgfit_file_path@/xg_test_file/test_interval2.sh << END
#!/bin/bash
xgconsole -s nssl -h @lip@ -P @lport@ -d SYSTEM -u SYSDBA -p SYSDBA << EOF
BEGIN
FOR i IN 5001..10000 LOOP
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_a VALUES(' || i || ', INTERVAL ''2-0'' YEAR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_b VALUES(' || i || ', INTERVAL ''0-2'' MONTH)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_c VALUES(' || i || ', INTERVAL ''13 0:00:00'' DAY)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_d VALUES(' || i || ', INTERVAL ''13:00:00'' HOUR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_e VALUES(' || i || ', INTERVAL ''0:13:00'' MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_f VALUES(' || i || ', INTERVAL ''0:00:13'' SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_g VALUES(' || i || ', INTERVAL ''2-0'' YEAR TO MONTH)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_h VALUES(' || i || ', INTERVAL ''13 0:00:00'' DAY TO HOUR)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_i VALUES(' || i || ', INTERVAL ''13 0:45:00'' DAY TO MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_j VALUES(' || i || ', INTERVAL ''13 0:00:45'' DAY TO SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_k VALUES(' || i || ', INTERVAL ''13:45:00'' HOUR TO MINUTE)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_l VALUES(' || i || ', INTERVAL ''13:00:45'' HOUR TO SECOND)';
EXECUTE IMMEDIATE 'INSERT INTO t_table_con_m VALUES(' || i || ', INTERVAL ''13:45'' MINUTE TO SECOND)';
END LOOP;
END;
/
exit;
EOF
touch @xgfit_file_path@/xg_test_file/t_interval_concurrent_2.done
END
-!|

//后台执行xgconsole读取SQL文件
!|bind current ssh connect|remoteCon1|

!|Execute Ssh|!-nohup bash @xgfit_file_path@/xg_test_file/test_interval1.sh > @xgfit_file_path@/xg_test_file/t_interval_concurrent_1.log 2>&1 &-!|

!|bind current ssh connect|remoteCon2|

!|Execute Ssh|!-nohup bash @xgfit_file_path@/xg_test_file/test_interval2.sh > @xgfit_file_path@/xg_test_file/t_interval_concurrent_2.log 2>&1 &-!|

//等待两个后台任务完成
!|bind current ssh connect|remoteCon1|

!|Execute Ssh|!-
timeout 3600 bash -c 'while [ ! -f @xgfit_file_path@/xg_test_file/t_interval_concurrent_1.done ] || [ ! -f @xgfit_file_path@/xg_test_file/t_interval_concurrent_2.done ]; do sleep 1; done'
exit 0
-!|

//清理环境
!|bind current ssh connect|remoteCon1|

!|Execute Ssh|!-rm -rf @xgfit_file_path@/xg_test_file/test_interval1.sh @xgfit_file_path@/xg_test_file/test_interval2.sh @xgfit_file_path@/xg_test_file/t_interval_concurrent_1.log @xgfit_file_path@/xg_test_file/t_interval_concurrent_2.log @xgfit_file_path@/xg_test_file/t_interval_concurrent_1.done @xgfit_file_path@/xg_test_file/t_interval_concurrent_2.done-!|

//查询结果
!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_a -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_b -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_c -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_d -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_e -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_f -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_g -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_h -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_i -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_j -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_k -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_l -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |

!|${exec_way}|!-SELECT COUNT(*) AS CNT, MIN(id) AS MIN_ID, MAX(id) AS MAX_ID FROM t_table_con_m -!${if_para}!-;-!|
|CNT         |MIN_ID                                          |MAX_ID                                            |
|!-10000-!   |!-1-!                                           |!-10000-!                                         |


!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_a -!${if_para}!-;-!|
|C1                                                                     |
|!-1-0-!                                                                |
|!-2-0-!                                                                |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_b -!${if_para}!-;-!|
|C1                                                                     |
|!-0-1-!                                                                |
|!-0-2-!                                                                |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_c -!${if_para}!-;-!|
|C1                                                                     |
|!-12 0:00:00-!                                                         |
|!-13 0:00:00-!                                                         |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_d -!${if_para}!-;-!|
|C1                                                                     |
|!-12:00:00-!                                                           |
|!-13:00:00-!                                                           |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_e -!${if_para}!-;-!|
|C1                                                                     |
|!-0:12:00-!                                                            |
|!-0:13:00-!                                                            |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_f -!${if_para}!-;-!|
|C1                                                                     |
|!-0:00:12-!                                                            |
|!-0:00:13-!                                                            |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_g -!${if_para}!-;-!|
|C1                                                                     |
|!-1-0-!                                                                |
|!-2-0-!                                                                |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_h -!${if_para}!-;-!|
|C1                                                                     |
|!-12 0:00:00-!                                                         |
|!-13 0:00:00-!                                                         |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_i -!${if_para}!-;-!|
|C1                                                                     |
|!-12 0:34:00-!                                                         |
|!-13 0:45:00-!                                                         |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_j -!${if_para}!-;-!|
|C1                                                                     |
|!-12 0:00:34-!                                                         |
|!-13 0:00:45-!                                                         |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_k -!${if_para}!-;-!|
|C1                                                                     |
|!-12:34:00-!                                                           |
|!-13:45:00-!                                                           |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_l -!${if_para}!-;-!|
|C1                                                                     |
|!-12:00:34-!                                                           |
|!-13:00:45-!                                                           |

!|${exec_way}|!-SELECT DISTINCT(c1) FROM t_table_con_m -!${if_para}!-;-!|
|C1                                                                     |
|!-0:12:34-!                                                            |
|!-0:13:45-!                                                            |

!|close ssh|all|

!|Execute Ddl|!-
DROP TABLE t_table_con_a;
DROP TABLE t_table_con_b;
DROP TABLE t_table_con_c;
DROP TABLE t_table_con_d;
DROP TABLE t_table_con_e;
DROP TABLE t_table_con_f;
DROP TABLE t_table_con_g;
DROP TABLE t_table_con_h;
DROP TABLE t_table_con_i;
DROP TABLE t_table_con_j;
DROP TABLE t_table_con_k;
DROP TABLE t_table_con_l;
DROP TABLE t_table_con_m;
-!|