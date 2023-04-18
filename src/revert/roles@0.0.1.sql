-- Revert pg_sqitch_example:roles from pg

BEGIN;

drop role alpha_master;
drop role beta_master;

COMMIT;
