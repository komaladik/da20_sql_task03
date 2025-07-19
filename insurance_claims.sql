CREATE TABLE insurance_claims (
    claim_id INT,
    policyholder_name TEXT,
    policy_number BIGINT,
    claim_type TEXT,
    claim_date DATE,
    claim_amount NUMERIC(10,2),
    claim_status TEXT,
    insurance_provider TEXT,
    city TEXT,
    assessment_score INT
);


--ADD CONSTRAINTS
-- 1. Add a primary key on claim_id


-- 2. Add NOT NULL on policyholder_name


-- 3. Add a CHECK constraint to ensure claim_amount > 0


-- 4. Add a constraint to allow only 1–10 in assessment_score


-- 5. Allow only valid claim status values


-- BETWEEN
-- 1. Claims between ₹10,000 and ₹50,000


-- 2. Claims filed between May 1 and July 1, 2025


-- 3. Policy numbers between 3000000 and 8000000


-- 4. Assessment score between 4 and 9


-- 5. Claim IDs between 3 and 9


--IN 
-- 1. Claim types: Health or Vehicle


-- 2. Cities: Bhopal, Kolkata


-- 3. Providers: HDFC Ergo, Star Health


-- 4. Claim status: Rejected, Pending


-- 5. Policyholders: "Anita Rao", "Tina Shah", "Alok Verma"


--LIMIT
-- 1. First 5 claims


-- 2. Top 3 highest claim amounts


-- 3. First 2 Approved claims


-- 4. First 4 claims from Ahmedabad


-- 5. First 3 Travel claim types


-- ORDER BY
-- 1. Order by claim date (latest first)


-- 2. Order by claim amount (low to high)


-- 3. Sort by insurance provider then city


-- 4. Sort by policyholder and claim status


-- 5. Order by assessment score (high to low)

