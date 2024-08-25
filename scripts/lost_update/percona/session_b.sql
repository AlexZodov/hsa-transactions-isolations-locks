START TRANSACTION;

SELECT balance FROM balances WHERE id = 2;
-- Assume the balance is also 1000.

UPDATE balance SET balance = 1000 - 200 WHERE id = 2;
-- New balance is 800.

COMMIT;