CREATE TABLE FullTimeEmployees (
    ClientID VARCHAR(4) PRIMARY KEY,
    FullName VARCHAR(50),
    ContactNumber BIGINT,
    Location VARCHAR(50)
);
INSERT INTO FullTimeEmployees (ClientID, FullName, ContactNumber, Location) VALUES
('C101', 'Benjamin Clauss', 351854758, 'Graham County'),
('C102', 'Altay Ayhan', 351963258, 'Pinal County'),
('C103', 'Greta Galkina', 351784512, 'Santa Cruz County'),
('C104', 'Julia Marr', 351854125, 'Cochise County'),
('C105', 'Karl Murry', 351314658, 'Gila County');
CREATE TABLE PartTimeEmployees (
    ClientID VARCHAR(4) PRIMARY KEY,
    FullName VARCHAR(50),
    ContactNumber BIGINT,
    Location VARCHAR(50)
);
INSERT INTO PartTimeEmployees (ClientID, FullName, ContactNumber, Location) VALUES
('Cl1', 'Takashi Ito', 351786345, 'Graham County'),
('Cl2', 'Jane Murphy', 351567243, 'Pinal County'),
('Cl3', 'Laurina Delgado', 351342597, 'Santa Cruz County'),
('Cl4', 'Mike Edwards', 351342509, 'Gila County'),
('Cl5', 'Julia Marr', 351208741, 'Cochise County');

SELECT FullName,Location FROM fulltimeemployees UNION SELECT FullName,Location FROM parttimeemployees;
-- holds records for all the employees working full time and part time
SELECT FullName,Location FROM fulltimeemployees UNION ALL SELECT FullName,Location FROM parttimeemployees;