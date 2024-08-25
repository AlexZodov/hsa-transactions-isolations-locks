START TRANSACTION;

SELECT balance FROM balances WHERE id = 2;
-- Assume the balance is 1000.

UPDATE balances SET balance = 1000 + 500 WHERE id = 2;
-- New balance is 1500.

COMMIT;