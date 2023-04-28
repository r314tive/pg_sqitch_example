-- Deploy pg_sqitch_example:alpha_tables to pg

BEGIN;

create table alpha.test(test_1 text, test_2 int);

select 1;

COMMIT;
