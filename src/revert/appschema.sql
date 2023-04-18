-- Revert pg_sqitch_example:appschema from pg

BEGIN;

drop schema alpha;
drop schema beta;

COMMIT;
