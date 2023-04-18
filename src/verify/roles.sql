-- Verify pg_sqitch_example:roles on pg

BEGIN;

DO $$
DECLARE
   result bool;
BEGIN
	result := (select exists (SELECT rolname FROM pg_catalog.pg_roles WHERE rolname in ('aplha_master', 'beta_master')));
	assert result = true;
END $$;

ROLLBACK;
