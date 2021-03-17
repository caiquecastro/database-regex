DROP TABLE IF EXISTS patterns;
DROP TABLE IF EXISTS value_list;

CREATE TABLE patterns (
    pattern_id int primary key,
    regex varchar(255)
);

CREATE TABLE value_list (
    value_id int primary key,
    regex_id int,
    value varchar(255)
);

INSERT INTO patterns (pattern_id, regex) VALUES (1, '^Foo$'), (2, '^[A-Z]+$');

INSERT INTO value_list (value_id, regex_id, value) VALUES (1, 1, 'Foo');
INSERT INTO value_list (value_id, regex_id, value) VALUES (2, 1, 'Bar');
INSERT INTO value_list (value_id, regex_id, value) VALUES (3, 1, '');

INSERT INTO value_list (value_id, regex_id, value) VALUES (4, 2, 'FOO');
INSERT INTO value_list (value_id, regex_id, value) VALUES (5, 2, 'bar');
INSERT INTO value_list (value_id, regex_id, value) VALUES (6, 2, 'Bar');
INSERT INTO value_list (value_id, regex_id, value) VALUES (7, 2, 'BAAAR');
