-- Create Species Table
CREATE TABLE Species (
    species_id NUMBER PRIMARY KEY,
    species_name VARCHAR2(100),
    conservation_status VARCHAR2(50)
);
-- Create Sightings Table
CREATE TABLE Sightings (
    sighting_id NUMBER PRIMARY KEY,
    species_id NUMBER,
    location VARCHAR2(100),
    sighting_date DATE,
    sighting_time VARCHAR2(10),
    FOREIGN KEY (species_id) REFERENCES Species(species_id)
);
-- Create Region Table
CREATE TABLE Region (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(100),
    climate_type VARCHAR2(50)
);
-- Create Research Table
CREATE TABLE Research (
    research_id NUMBER PRIMARY KEY,
    region_id NUMBER,
    species_id NUMBER,
    researcher_name VARCHAR2(100),
    study_purpose VARCHAR2(255),
    research_date DATE,
    FOREIGN KEY (region_id) REFERENCES Region(region_id),
    FOREIGN KEY (species_id) REFERENCES Species(species_id)
);
