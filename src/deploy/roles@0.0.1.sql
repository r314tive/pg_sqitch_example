-- Deploy pg_sqitch_example:roles to pg

BEGIN;

create role alpha_master nologin;
create role beta_master nologin;

COMMIT;
