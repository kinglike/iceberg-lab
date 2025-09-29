CREATE TABLE mycatalog.db1.tbl1 (id bigint, data string) USING iceberg;
INSERT INTO mycatalog.db1.tbl1 VALUES (1, 'hello'), (2, 'iceberg');
