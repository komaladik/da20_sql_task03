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

select * from hospital_staff_attendance;
--ADD CONSTRAINTS
-- 1. Add a primary key
alter table hospital_staff_attendance add primary key (attendance_id);

-- 2. Make staff_name NOT NULL
alter table hospital_staff_attendance alter column staff_name set not null;

-- 3. Ensure check_in_hour is within 0 to 23
alter table hospital_staff_attendance add constraint check_in_within check (check_in_hour between 0 and 23);

-- 4. Only allow valid statuses
alter table hospital_staff_attendance add constraint check_valid_status check (status IN('Present', 'Absent', 'On Leave'))

-- 5. Ensure check-out time is later than check-in (for same-day shifts)
alter table hospital_staff_attendance add constraint valid_hours check (check_out_hour > check_in_hour OR check_out_hour <= 6);


-- BETWEEN
-- 1. Between check-in hours 7 and 10
select * from hospital_staff_attendance where check_in_hour between 7 and 10;

-- 2. Between attendance dates July 10–17, 2025
select * from hospital_staff_attendance where attendance_date between '2025-07-10'and '2025-07-17';

-- 3. Staff IDs between 1300 and 2000
select * from hospital_staff_attendance where staff_id between 1300 and 2000;

-- 4. Check-out hours between 15 and 22
select * from hospital_staff_attendance where check_out_hour between 15 and 22;

-- 5. Attendance ID between 3 and 9
select * from hospital_staff_attendance where attendance_id between 3 and 9;

--IN 
-- 1. Staff with role in Nurse or Doctor
select * from hospital_staff_attendance where role IN ('Nurse', 'Doctor');

-- 2. Shift type Morning or Night
select * from hospital_staff_attendance where shift IN ('Morning', 'Night');

-- 3. Department in ICU or Emergency
select * from hospital_staff_attendance where department IN ('ICU', 'Emergency');

-- 4. Staff on leave or absent
select * from hospital_staff_attendance where status IN ('On Leave', 'Absent');

-- 5.  Staff names in specific list
select * from hospital_staff_attendance where staff_name IN ('Dr. Karan Mehta', 'Dr. Amit Desai', 'Nurse Kavita G');

--LIMIT
-- 1. First 5 rows
select * from hospital_staff_attendance LIMIT 5;

-- 2. First 3 Absent entries
select * from hospital_staff_attendance where status = 'Absent' LIMIT 3;

-- 3. First 2 Emergency department records
select * from hospital_staff_attendance where department = 'Emergency' LIMIT 2;

-- 4. First 4 Night shift entries
select * from hospital_staff_attendance where shift = 'Night' LIMIT 4;

-- 5. First 3 records sorted by date
select * from hospital_staff_attendance order by attendance_date desc LIMIT 3 ;

-- ORDER BY
-- 1. Order by attendance date (latest first)
select * from hospital_staff_attendance order by attendance_date desc;

-- 2. Order by check-in hour
select * from hospital_staff_attendance order by check_in_hour asc;

-- 3. Sort by role then department
select * from hospital_staff_attendance order by role, department;

-- 4. Sort by staff name and check-out hour
select * from hospital_staff_attendance order by staff_name, check_out_hour;

-- 5. Sort by shift then status
select * from hospital_staff_attendance order by shift, status;
