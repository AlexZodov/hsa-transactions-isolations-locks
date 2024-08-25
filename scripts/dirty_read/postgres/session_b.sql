SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN;

-- first read
SELECT balance FROM balances WHERE id = 2;

-- second read
SELECT balance FROM balances WHERE id = 2;

COMMIT;