-- Revert pg_sqitch_example:alpha_tables from pg

BEGIN;

drop table alpha.test;

COMMIT;
