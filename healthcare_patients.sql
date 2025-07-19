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
alter table healthcare_patients add primary key (patient_id);

-- 2. Add NOT NULL constraint on patient_name
alter table healthcare_patients alter column patient_name set not null;

-- 3. Add a check constraint to allow only age >= 0
alter table healthcare_patients add constraint age_check check (age >= 0);

-- 4. Add a check constraint to allow feedback_score between 1 and 10
alter table healthcare_patients add constraint feedback_score_check check (feedback_score between 1 and 10);

-- 5. Add a constraint to allow only specific values in payment_mode
alter table healthcare_patients add constraint payment_mode_check check (payment_mode IN('Cash', 'Card', 'Insurance'));

-- BETWEEN
-- 1. Patients aged between 30 and 60
select * from healthcare_patients where age between 30 and 60;

-- 2. Feedback score between 5 and 8
select * from healthcare_patients where feedback_score between 5 and 8;

-- 3. Admission dates in last 60 days
select * from healthcare_patients where admission_date between current_date - interval '60 days' and current_date;

-- 4. Bill amount between 20000 and 40000
select * from healthcare_patients where bill_amount between 20000 and 40000;

-- 5. Discharge date between two specific dates
select * from healthcare_patients where discharge_date between '2025-05-29' and '2025-06-16';

--IN 
-- 1. Patients in Cardiology or Orthopedics
select * from healthcare_patients where department in ('Cardiology', 'Orthopedics');

-- 2. Payment modes: Card or Cash
select * from healthcare_patients where payment_mode in ('Card', 'Cash');

-- 3. Feedback score in 3, 5, 7
select * from healthcare_patients where feedback_score in (3, 5, 7);

-- 4. Status is Admitted or Under Observation
select * from healthcare_patients where status in ('Admitted', 'Under Observation');

-- 5. Select specific patient names
select * from healthcare_patients where patient_name in ('Jane Smith','Pam Beesly','Stanley Hudson');

-- LIMIT
-- 1. First 5 records
select * from healthcare_patients limit 5;

-- 2. Top 3 highest bills
select * from healthcare_patients order by bill_amount desc limit 3;

-- 3. First 2 admitted patients
select * from healthcare_patients where status = 'Admitted' limit 2;

-- 4. Youngest 5 patients
select * from healthcare_patients order by age asc limit 5;

-- 5. Any 4 patients from Orthopedics
select * from healthcare_patients where department = 'Orthopedics' limit 4;

-- ORDER BY
-- 1. Order by admission date (latest first)
select * from healthcare_patients order by admission_date desc;

-- 2. Order by bill amount (low to high)
select * from healthcare_patients order by bill_amount asc;

-- 3. Sort by department then feedback score
select * from healthcare_patients order by department, feedback_score desc;

-- 4. Sort by status alphabetically
select * from healthcare_patients order by status asc;

-- 5. Sort by discharge date and then age
select * from healthcare_patients order by discharge_date desc, age asc;
