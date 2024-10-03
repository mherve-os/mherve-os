-- Insert Species Data
INSERT INTO Species (species_id, species_name, conservation_status)
VALUES (1, 'African Elephant', 'Endangered');

INSERT INTO Species (species_id, species_name, conservation_status)
VALUES (2, 'Bald Eagle', 'Least Concern');

-- Insert Region Data
INSERT INTO Region (region_id, region_name, climate_type)
VALUES (1, 'Serengeti', 'Savannah');

INSERT INTO Region (region_id, region_name, climate_type)
VALUES (2, 'Yellowstone', 'Temperate Forest');

-- Insert Sightings
INSERT INTO Sightings (sighting_id, species_id, location, sighting_date, sighting_time)
VALUES (1001, 1, 'Serengeti National Park', TO_DATE('2023-07-15', 'YYYY-MM-DD'), '10:30');

INSERT INTO Sightings (sighting_id, species_id, location, sighting_date, sighting_time)
VALUES (1002, 2, 'Yellowstone Lake', TO_DATE('2023-08-22', 'YYYY-MM-DD'), '14:00');

-- Insert Research Data
INSERT INTO Research (research_id, region_id, species_id, researcher_name, study_purpose, research_date)
VALUES (2001, 1, 1, 'Dr. Jane Doe', 'Study elephant migration patterns', TO_DATE('2023-07-20', 'YYYY-MM-DD'));

INSERT INTO Research (research_id, region_id, species_id, researcher_name, study_purpose, research_date)
VALUES (2002, 2, 2, 'Dr. John Smith', 'Study eagle population changes', TO_DATE('2023-08-25', 'YYYY-MM-DD'));
