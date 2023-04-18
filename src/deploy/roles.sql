-- Deploy pg_sqitch_example:roles to pg

BEGIN;

CREATE ROLE dba WITH CREATEDB CREATEROLE SUPERUSER;

COMMIT;
