CREATE TABLE healthcare_patients (
    patient_id INT,
    patient_name TEXT,
    age INT,
    department TEXT,
    admission_date DATE,
    discharge_date DATE,
    bill_amount NUMERIC(10,2),
    payment_mode TEXT,
    feedback_score INT,
    status TEXT
);

select * from healthcare_patients;

--ADD CONSTRAINTS
-- 1. Add a primary key on patient_id


-- 2. Add NOT NULL constraint on patient_name


-- 3. Add a check constraint to allow only age >= 0


-- 4. Add a check constraint to allow feedback_score between 1 and 10


-- 5. Add a constraint to allow only specific values in payment_mode


-- BETWEEN
-- 1. Patients aged between 30 and 60


-- 2. Feedback score between 5 and 8


-- 3. Admission dates in last 60 days


-- 4. Bill amount between 20000 and 40000


-- 5. Discharge date between two specific dates


--IN 
-- 1. Patients in Cardiology or Neurology


-- 2. Payment modes: Card or Cash


-- 3. Feedback score in 3, 5, 7


-- 4. Status is Admitted or Under Observation


-- 5. Select specific patient names


-- LIMIT
-- 1. First 5 records


-- 2. Top 3 highest bills


-- 3. First 2 admitted patients


-- 4. Youngest 5 patients


-- 5. Any 4 patients from Neurology


-- ORDER BY
-- 1. Order by admission date (latest first)


-- 2. Order by bill amount (low to high)


-- 3. Sort by department then feedback score


-- 4. Sort by status alphabetically


-- 5. Sort by discharge date and then age

