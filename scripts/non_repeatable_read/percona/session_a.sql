SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

-- First read
SELECT balance FROM balances WHERE id = 1;
-- Assume the balance is 1000.

-- Second read
SELECT balance FROM balances WHERE id = 1;
-- This time, the balance will be 1500.

COMMIT;