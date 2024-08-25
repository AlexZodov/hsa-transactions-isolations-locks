BEGIN;

UPDATE balances SET balance = 1500 WHERE id = 2;

ROLLBACK;