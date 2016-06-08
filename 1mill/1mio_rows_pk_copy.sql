\timing on
\set autocommit on
truncate table demo_pk;
copy DEMO_PK from '/tmp/demo.txt';
