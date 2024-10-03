--Retrieve 
SELECT species_name, conservation_status FROM Species;

SELECT s.species_name, si.location, si.sighting_date, si.sighting_time
FROM Species s
JOIN Sightings si ON s.species_id = si.species_id;

SELECT s.species_name, r.researcher_name, r.study_purpose, r.research_date
FROM Species s
JOIN Research r ON s.species_id = r.species_id;

--Transactions and Operations
-- Update conservation status of a species
UPDATE Species
SET conservation_status = 'Critically Endangered'
WHERE species_name = 'African Elephant';

-- Delete research data by researcher
DELETE FROM Research
WHERE researcher_name = 'Dr. John Smith';
