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


--ADD CONSTRAINTS
-- 1. Add a primary key on transaction_id


-- 2. Add NOT NULL constraint on user_name


-- 3. Ensure amount is positive


-- 4. Allow only specific values for status


-- 5. Check transaction type is one of defined set


-- BETWEEN
-- 1. Transactions between ₹10,000 and ₹40,000


-- 2. Transactions between May 1 and July 1, 2025


-- 3. Users with account numbers between 2000000000 and 8000000000


-- 4. Transactions with amount between ₹500 and ₹1500


-- 5. IDs between 5 and 10


--IN 
-- 1. Payment modes UPI or Wallet


-- 2. Status is Failed or Pending


-- 3. Merchants: Amazon or IRCTC


-- 4. Locations: Mumbai or Bangalore


-- 5. Users: "Sneha Shah", "Ravi Kumar", "Neha Verma"


--LIMIT
-- 1. First 5 transactions


-- 2. Top 3 highest amounts


-- 3. First 2 Wallet transactions


-- 4. First 4 from Delhi


-- 5. First 3 completed transactions


-- ORDER BY
-- 1. Order by transaction date descending


-- 2. Order by amount ascending


-- 3. Order by merchant and user name


-- 4. Sort by location and amount


-- 5. Sort by payment mode then status

