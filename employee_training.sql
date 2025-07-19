CREATE TABLE employee_training (
    training_id INT,
    employee_name TEXT,
    employee_id INT,
    training_type TEXT,
    training_date DATE,
    duration_hours INT,
    trainer_org TEXT,
    location TEXT,
    score INT,
    training_status TEXT
);

select * from employee_training;
--ADD CONSTRAINTS
-- 1. Add a primary key on training_id
alter table employee_training add primary key (training_id);

-- 2. Add NOT NULL on employee_name
alter table employee_training alter column employee_name set not null;

-- 3. Add a CHECK for duration_hours > 0
alter table employee_training add constraint duration_hours_positive check (duration_hours > 0); 

-- 4. Add a CHECK for score between 50–100
alter table employee_training add constraint score_range_check check (score between 50 and 100);

-- 5. Restrict training_status values
alter table employee_training add constraint training_status_value_check check (training_status IN ('Completed', 'Ongoing', 'Scheduled'))

-- BETWEEN
-- 1. Trainings with duration between 10 and 30 hours
select * from employee_training where duration_hours between 10 and 30;

-- 2. Training scores between 60 and 90
select * from employee_training where score between 60 and 90;

-- 3. Trainings between June 1 and July 15, 2025
select * from employee_training where training_date between '2025-06-01' and '2025-07-15';

-- 4. Employee IDs between 2000 and 8000
select * from employee_training where employee_id between 2000 and 8000;

-- 5. Training IDs between 3 and 10
select * from employee_training where training_id between 3 and 10;

--IN 
-- 1. Training types: "Technical", "Soft Skills"
select * from employee_training where training_type IN ('Technical', 'Soft Skills');

-- 2. Trainer orgs: "TCS", "IBM"
select * from employee_training where training_type IN ('Technical', 'Soft Skills');

-- 3. Locations: Pune, Noida
select * from employee_training where location IN ('Pune', 'Noida');

-- 4. Status: "Completed", "Ongoing"
select * from employee_training where training_status IN ('Completed', 'Ongoing');

-- 5. Employee names in a given list
select * from employee_training where employee_name IN ('Neelam Verma', 'Ravi Tripathi', 'Mohit Sinha');

--LIMIT
-- 1. First 5 training records
select * from employee_training LIMIT 5;

-- 2. Top 3 highest scores
select * from employee_training order by score desc LIMIT 3;

-- 3. First 2 Bangalore trainings
select * from employee_training where location = 'Bangalore' LIMIT 2;

-- 4. First 3 Technical trainings
select * from employee_training where training_type = 'Technical' LIMIT 3;

-- 5. First 2 Ongoing trainings
select * from employee_training where training_status = 'Ongoing' LIMIT 2;

-- ORDER BY
-- 1. Order by training date (latest first)
select * from employee_training order by training_date desc;

-- 2. Order by score ascending
select * from employee_training order by score asc;

-- 3. Sort by employee name and training type
select * from employee_training order by employee_name, training_type;

-- 4. Sort by location then trainer org
select * from employee_training order by location, trainer_org;

-- 5. Sort by duration and then score
select * from employee_training order by duration_hours , sore;
