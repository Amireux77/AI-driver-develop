!4 XG-TYPE-INTERVAL-TYPE_SPACE-001 测试 INTERVAL 类型空间
<预期结果 : 4>
SELECT get_type_space('INTERVAL YEAR');
<预期结果 : 4>
SELECT get_type_space('INTERVAL MONTH');
<预期结果 : 4>
SELECT get_type_space('INTERVAL DAY');
<预期结果 : 4>
SELECT get_type_space('INTERVAL HOUR');
<预期结果 : 4>
SELECT get_type_space('INTERVAL MINUTE');
<预期结果 : 8>
SELECT get_type_space('INTERVAL SECOND');
<预期结果 : 4>
SELECT get_type_space('INTERVAL YEAR TO MONTH');
<预期结果 : 4>
SELECT get_type_space('INTERVAL DAY TO HOUR');
<预期结果 : 4>
SELECT get_type_space('INTERVAL DAY TO MINUTE');
<预期结果 : 8>
SELECT get_type_space('INTERVAL DAY TO SECOND');
<预期结果 : 4>
SELECT get_type_space('INTERVAL HOUR TO MINUTE');
<预期结果 : 8>
SELECT get_type_space('INTERVAL HOUR TO SECOND');
<预期结果 : 8>
SELECT get_type_space('INTERVAL MINUTE TO SECOND');

