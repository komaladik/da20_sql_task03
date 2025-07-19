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


--ADD CONSTRAINTS
-- 1. Add a primary key on training_id


-- 2. Add NOT NULL on employee_name


-- 3. Add a CHECK for duration_hours > 0


-- 4. Add a CHECK for score between 50–100


-- 5. Restrict training_status values


-- BETWEEN
-- 1. Trainings with duration between 10 and 30 hours


-- 2. Training scores between 60 and 90


-- 3. Trainings between June 1 and July 15, 2025


-- 4. Employee IDs between 2000 and 8000



-- 5. Training IDs between 3 and 10


--IN 
-- 1. Training types: "Technical", "Soft Skills"


-- 2. Trainer orgs: "TCS", "IBM"


-- 3. Locations: Pune, Noida


-- 4. Status: "Completed", "Ongoing"


-- 5. Employee names in a given list


--LIMIT
-- 1. First 5 training records


-- 2. Top 3 highest scores


-- 3. First 2 Bangalore trainings


-- 4. First 3 Technical trainings


-- 5. First 2 Ongoing trainings


-- ORDER BY
-- 1. Order by training date (latest first)


-- 2. Order by score ascending


-- 3. Sort by employee name and training type


-- 4. Sort by location then trainer org


-- 5. Sort by duration and then score

