CREATE DATABASE PROJECT11;
USE PROJECT11;

select * from treatments;
select * from patients;

CREATE TABLE HospitalData AS(
SELECT 
p.*,
t.treatment_id,
t.doctor_name,
t.department,
t.diagnosis,
t.admission_date,
t.discharge_date,
t.stay_days,
t.recovery_status
FROM patients p 
JOIN treatments t
ON p.patient_id = t.patient_id
) 
