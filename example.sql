SELECT *,
(SELECT COUNT(1) FROM value_list WHERE value_list.regex_id = patterns.pattern_id) as count,
(SELECT COUNT(1) FROM value_list WHERE value_list.regex_id = patterns.pattern_id AND CAST(value as BINARY) REGEXP BINARY regex) as inconsistencies
FROM patterns;
