-- Filter Patients: Select patients where conditions contain 'DIAB1' anywhere.
-- Include cases where DIAB1 is at the start or preceded by a space.

SELECT patient_id, patient_name, conditions
FROM patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%';
