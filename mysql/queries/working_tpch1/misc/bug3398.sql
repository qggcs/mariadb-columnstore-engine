DROP TABLE IF EXISTS bug3398_1;
DROP TABLE IF EXISTS bug3398_2;

CREATE TABLE bug3398_1 (lid int, name char(10)) engine=infinidb;
INSERT INTO bug3398_1 (lid, name) VALUES (1, 'YES'), (2, 'NO');

CREATE TABLE bug3398_2 (  id int, gid int, lid int, dt date) engine=infinidb;
INSERT INTO bug3398_2 (id, gid, lid, dt) VALUES
(1, 1, 1, '2007-01-01'),(2, 1, 2, '2007-01-02'),
(3, 2, 2, '2007-02-01'),(4, 2, 1, '2007-02-02');

SELECT DISTINCT tt.gid AS lgid, (SELECT bug3398_1.name FROM bug3398_1, bug3398_2 WHERE bug3398_1.lid  = bug3398_2.lid AND bug3398_2.gid = lgid and bug3398_1.name > 'NO' ORDER BY bug3398_2.dt) as clid FROM bug3398_2 tt ORDER BY 1;

SELECT DISTINCT bug3398_2.gid AS lgid, (SELECT bug3398_1.name FROM bug3398_1, bug3398_2 WHERE bug3398_1.lid  = bug3398_2.lid AND bug3398_2.gid = lgid and bug3398_1.name > 'NO' ORDER BY bug3398_2.dt) as clid FROM bug3398_2 ORDER BY 1;

DROP TABLE bug3398_1;
DROP TABLE bug3398_2;
