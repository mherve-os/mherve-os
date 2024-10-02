- 👋 Hi, I’m @mherve-os
- 👀 I’m interested in IT/Information Management
- 🌱 I’m currently learning  Database Development with PL/SQL
- 💞️ I’m looking to collaborate on My database The Wildlife Research Database System is designed to help scientists and researchers track animal sightings,monitor habitat conditions, and log research activities
-  across various regions. The system stores detailed information on animals, habitats, regions, and research conducted by different teams.
- By capturing these interactions, researchers can gain insights into species distribution, habitat usage, and the impact of human activity on wildlife.
- 📫 How to reach me: mherve2k@gmail.com
- 😄 
- ⚡ Fun fact: When separated elephants are reunited, they trumpet their trunks in delight
- ![Wildlife Research Database System](https://github.com/user-attachments/assets/43d40232-80dd-4103-aafa-cb90ff84dc49)


The database supports:

Recording animal species and details about their sightings (date, time, location).
Managing habitat information such as vegetation types and environmental factors.
Logging research conducted by scientists, including data on the regions they work in and the animals they study.
Storing information on different regions, allowing for analysis of species distribution across habitats.

```sql
-- Create Species Table
CREATE TABLE Species (
    species_id NUMBER PRIMARY KEY,
    species_name VARCHAR2(100),
    conservation_status VARCHAR2(50)
);
```
```sql
-- Create Sightings Table
CREATE TABLE Sightings (
    sighting_id NUMBER PRIMARY KEY,
    species_id NUMBER,
    location VARCHAR2(100),
    sighting_date DATE,
    sighting_time VARCHAR2(10),
    FOREIGN KEY (species_id) REFERENCES Species(species_id)
);
```
```sql
-- Create Region Table
CREATE TABLE Region (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(100),
    climate_type VARCHAR2(50)
);
```
```sql
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
```
```sql
-- Insert Species Data
INSERT INTO Species (species_id, species_name, conservation_status)
VALUES (1, 'African Elephant', 'Endangered');

INSERT INTO Species (species_id, species_name, conservation_status)
VALUES (2, 'Bald Eagle', 'Least Concern');
```
![image](https://github.com/user-attachments/assets/2c76b4fd-bad9-41b7-9bf8-5ef142ec889e)

```sql
-- Insert Region Data
INSERT INTO Region (region_id, region_name, climate_type)
VALUES (1, 'Serengeti', 'Savannah');

INSERT INTO Region (region_id, region_name, climate_type)
VALUES (2, 'Yellowstone', 'Temperate Forest');
```
![image](https://github.com/user-attachments/assets/cdd32587-15a0-4d29-8ba7-6276c21016cd)
```sql
-- Insert Sightings
INSERT INTO Sightings (sighting_id, species_id, location, sighting_date, sighting_time)
VALUES (1001, 1, 'Serengeti National Park', TO_DATE('2023-07-15', 'YYYY-MM-DD'), '10:30');

INSERT INTO Sightings (sighting_id, species_id, location, sighting_date, sighting_time)
VALUES (1002, 2, 'Yellowstone Lake', TO_DATE('2023-08-22', 'YYYY-MM-DD'), '14:00');
```
![image](https://github.com/user-attachments/assets/12c22e66-03f7-4ec3-8dee-a713fb4c5d64)
```sql
-- Insert Research Data
INSERT INTO Research (research_id, region_id, species_id, researcher_name, study_purpose, research_date)
VALUES (2001, 1, 1, 'Dr. Jane Doe', 'Study elephant migration patterns', TO_DATE('2023-07-20', 'YYYY-MM-DD'));

INSERT INTO Research (research_id, region_id, species_id, researcher_name, study_purpose, research_date)
VALUES (2002, 2, 2, 'Dr. John Smith', 'Study eagle population changes', TO_DATE('2023-08-25', 'YYYY-MM-DD'));
```
```sql
--Retrieve 
SELECT species_name, conservation_status FROM Species;
```
![image](https://github.com/user-attachments/assets/97310b68-10db-4e0a-aea7-bd6d77962cf3)

```sql
SELECT s.species_name, si.location, si.sighting_date, si.sighting_time
FROM Species s
JOIN Sightings si ON s.species_id = si.species_id;
```
![image](https://github.com/user-attachments/assets/c761ddbb-d714-4df1-a091-f26b37b2fe34)

```sql
SELECT s.species_name, r.researcher_name, r.study_purpose, r.research_date
FROM Species s
JOIN Research r ON s.species_id = r.species_id;
```
![image](https://github.com/user-attachments/assets/43e54360-1b9b-47c8-978d-dc2663280a56)

```sql
--Transactions and Operations
-- Update conservation status of a species
UPDATE Species
SET conservation_status = 'Critically Endangered'
WHERE species_name = 'African Elephant';
```
![image](https://github.com/user-attachments/assets/f60833a2-9e04-405f-b3b4-cf6e2c7c0210)

```sql
-- Delete research data by researcher
DELETE FROM Research
WHERE researcher_name = 'Dr. John Smith';
```
![image](https://github.com/user-attachments/assets/cbba8d9d-5119-45dd-8259-42f5dd98766a)

This Wildlife Research Database is designed for unique research and conservation activities, logging species sightings, research activities, and habitat details

