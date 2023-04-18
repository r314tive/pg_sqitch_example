-- Deploy pg_sqitch_example:appschema to pg

BEGIN;

create schema alpha;
create schema beta;

COMMIT;
