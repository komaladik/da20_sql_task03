CREATE TABLE hospital_staff_attendance (
    attendance_id INT,
    staff_name TEXT,
    staff_id INT,
    role TEXT,
    department TEXT,
    shift TEXT,
    attendance_date DATE,
    check_in_hour INT,
    check_out_hour INT,
    status TEXT
);


--ADD CONSTRAINTS
-- 1. Add a primary key


-- 2. Add a primary key


-- 3. Ensure check_in_hour is within 0 to 23


-- 4. Only allow valid statuses


-- 5. Ensure check-out time is later than check-in (for same-day shifts)


-- BETWEEN
-- 1. Between check-in hours 7 and 10


-- 2. Between attendance dates July 10–17, 2025


-- 3. Staff IDs between 1300 and 2000


-- 4. Check-out hours between 15 and 22


-- 5. Attendance ID between 3 and 9


--IN 
-- 1. Staff with role in Nurse or Doctor


-- 2. Shift type Morning or Night


-- 3. Department in ICU or Emergency


-- 4. Staff on leave or absent


-- 5.  Staff names in specific list


--LIMIT
-- 1. First 5 rows


-- 2. First 3 Absent entries


-- 3. First 2 Emergency department records


-- 4. First 4 Night shift entries


-- 5. First 3 records sorted by date


-- ORDER BY
-- 1. Order by attendance date (latest first)


-- 2. Order by check-in hour


-- 3. Sort by role then department


-- 4. Sort by staff name and check-out hour


-- 5. Sort by shift then status

