CREATE TABLE fintech_transactions (
    transaction_id INT,
    user_name TEXT,
    account_number BIGINT,
    transaction_type TEXT,
    transaction_date DATE,
    amount NUMERIC(10,2),
    payment_mode TEXT,
    merchant_name TEXT,
    location TEXT,
    status TEXT
);

select * from fintech_transactions;
--ADD CONSTRAINTS
-- 1. Add a primary key on transaction_id
alter table fintech_transactions add primary key (transaction_id);

-- 2. Add NOT NULL constraint on user_name
alter table fintech_transactions alter column user_name set not null;

-- 3. Ensure amount is positive
alter table fintech_transactions add constraint positive_amount_check check (amount > 0);

-- 4. Allow only specific values for status
alter table fintech_transactions add constraint status_values_check check (status IN('Completed', 'Pending', 'Failed'));

-- 5. Check transaction type is one of defined set
alter table fintech_transactions add constraint transaction_type_check check (transaction_type IN('Deposit', 'Withdrawal', 'Transfer', 'Payment'));

-- BETWEEN
-- 1. Transactions between ₹10,000 and ₹40,000
select * from fintech_transactions where amount between 10000 AND 40000;

-- 2. Transactions between May 1 and July 1, 2025
select * from fintech_transactions where transaction_date between '2025-05-01' AND '2025-07-01';

-- 3. Users with account numbers between 2000000000 and 8000000000
select user_name, account_number from fintech_transactions where account_number between 2000000000 and 8000000000;

-- 4. Transactions with amount between ₹500 and ₹1500
select * from fintech_transactions where amount between 500 AND 1500;

-- 5. IDs between 5 and 10
select * from fintech_transactions where transaction_id between 5 AND 10;

--IN 
-- 1. Payment modes UPI or Wallet
select * from fintech_transactions where payment_mode IN('IPI', 'Wallet');

-- 2. Status is Failed or Pending
select * from fintech_transactions where status IN ('Failed', 'Pending');

-- 3. Merchants: Amazon or IRCTC
select * from fintech_transactions where merchant_name IN ('Amazon', 'IRCTC');

-- 4. Locations: Mumbai or Bangalore
select * from fintech_transactions where location IN ('Mumbai', 'Bangalore');

-- 5. Users: "Sneha Shah", "Ravi Kumar", "Neha Verma"
select * from fintech_transactions where user_name IN ('Sneha Shah', 'Ravi Kumar', 'Neha Verma');

--LIMIT
-- 1. First 5 transactions
select * from fintech_transactions LIMIT 5;

-- 2. Top 3 highest amounts
select * from fintech_transactions ORDER BY amount DESC LIMIT 3;

-- 3. First 2 Wallet transactions
select * from fintech_transactions where payment_mode = 'Wallet' LIMIT 2;

-- 4. First 4 from Delhi
select * from fintech_transactions where location = 'Delhi' LIMIT 4;

-- 5. First 3 completed transactions
select * from fintech_transactions where status = 'Completed' LIMIT 3;

-- ORDER BY
-- 1. Order by transaction date descending
select * from fintech_transactions ORDER BY transaction_date desc;

-- 2. Order by amount ascending
select * from fintech_transactions ORDER BY amount asc;

-- 3. Order by merchant and user name
select * from fintech_transactions ORDER BY merchant_name, user_name;

-- 4. Sort by location and amount
select * from fintech_transactions ORDER BY location, amount desc;

-- 5. Sort by payment mode then status
select * from fintech_transactions ORDER BY payment_mode, status;

