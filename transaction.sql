use master;

create table bank_account(
account_id SERIAL primary key,
account_holder VARCHAR(50)NOT NULL,
balance DECIMAL(20,2)NOT NULL DEFAULT 0.00
);

insert into bank_account (account_id,account_holder,balance)
Values(1,'kalai',10000),(2,'radha',5000);


    
START TRANSACTION;

UPDATE bank_account SET balance = balance - 1000 WHERE account_holder = 'kalai';
UPDATE bank_account SET balance = balance + 1000 WHERE account_holder = 'radha';

COMMIT;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Start transaction
START TRANSACTION;

-- Deduct ₹1000 from Kalai
UPDATE bank_account 
SET balance = balance - 1000 
WHERE account_holder = 'kalai' 
LIMIT 1;

-- Add ₹1000 to Arun
UPDATE bank_account 
SET balance = balance + 1000 
WHERE account_holder = 'radha' 
LIMIT 1;

-- Commit changes
rollback;

-- Re-enable safe update mode (optional)
SET SQL_SAFE_UPDATES = 1;





