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

select * from insurance_claims;

--ADD CONSTRAINTS
-- 1. Add a primary key on claim_id
alter table insurance_claims add primary key (claim_id);

-- 2. Add NOT NULL on policyholder_name
alter table insurance_claims alter column policyholder_name SET NOT NULL;

-- 3. Add a CHECK constraint to ensure claim_amount > 0
alter table insurance_claims add constraint claim_amount_positive check (claim_amount > 0);

-- 4. Add a constraint to allow only 1–10 in assessment_score
alter table insurance_claims add constraint assessment_score_range check (assessment_score between 1 and 10)

-- 5. Allow only valid claim status values
alter table insurance_claims add constraint valid_claim_status check (claim_status IN ('Approved', 'Pending', 'Rejected'));

-- BETWEEN
-- 1. Claims between ₹10,000 and ₹50,000
select * from insurance_claims where claim_amount between 10000 and 50000;

-- 2. Claims filed between May 1 and July 1, 2025
select * from insurance_claims where claim_date between '2025-05-01' and '2025-07-01';

-- 3. Policy numbers between 3000000 and 8000000
select * from insurance_claims where policy_number between 3000000 and 8000000;

-- 4. Assessment score between 4 and 9
select * from insurance_claims where assessment_score between 4 and 9;

-- 5. Claim IDs between 3 and 9
select * from insurance_claims where claim_id between 3 and 9;

--IN 
-- 1. Claim types: Health or Vehicle
select * from insurance_claims where claim_type IN ('Health', 'Vehicle');

-- 2. Cities: Bhopal, Kolkata
select * from insurance_claims where city IN ('Bhopal', 'Kolkata');

-- 3. Providers: HDFC Ergo, Star Health
select * from insurance_claims where insurance_provider IN ('HDFC Ergo', 'Star Health');

-- 4. Claim status: Rejected, Pending
select * from insurance_claims where claim_status IN ('Rejected', 'Pending');

-- 5. Policyholders: "Anita Rao", "Tina Shah", "Alok Verma"
select * from insurance_claims where policyholder_name IN ('Anita Rao', 'Tina Shah', 'Alok Verma');

--LIMIT
-- 1. First 5 claims
select * from insurance_claims LIMIT 5;

-- 2. Top 3 highest claim amounts
select * from insurance_claims order by claim_amount desc LIMIT 3;

-- 3. First 2 Approved claims
select * from insurance_claims where claim_status = 'Approved' LIMIT 2;

-- 4. First 4 claims from Ahmedabad
select * from insurance_claims where city = 'Ahmedabad' LIMIT 4;

-- 5. First 3 Travel claim types
select * from insurance_claims where claim_type = 'Travel' LIMIT 3;

-- ORDER BY
-- 1. Order by claim date (latest first)
select * from insurance_claims order by claim_date desc;

-- 2. Order by claim amount (low to high)
select * from insurance_claims order by claim_amount asc;

-- 3. Sort by insurance provider then city
select * from insurance_claims order by insurance_provider, city;

-- 4. Sort by policyholder and claim status
select * from insurance_claims order by policyholder_name, claim_status;

-- 5. Order by assessment score (high to low)
select * from insurance_claims order by assessment_score desc;
