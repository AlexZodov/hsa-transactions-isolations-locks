SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

-- First read: Count orders for customer_id = 1
SELECT COUNT(*) FROM orders WHERE customer_id = 1;
-- Assume the count is 2.

-- Second read: Count orders for customer_id = 1
SELECT COUNT(*) FROM orders WHERE customer_id = 1;
-- This time, the count will be 3.

COMMIT;