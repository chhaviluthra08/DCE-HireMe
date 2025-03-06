CREATE DATABASE DCE_Reports;
USE DCE_Reports;
CREATE TABLE student (id int PRIMARY KEY, name varchar(25), password varchar(25));
CREATE TABLE admin(id int PRIMARY KEY, password varchar(25));
CREATE TABLE OnCampusPlacement(name varchar(100), post varchar(25), eligibilty varchar(100), startDate datetime, endDate datetime, stipend int);
CREATE TABLE OffCampusPlacement(name varchar(100), post varchar(25), eligibilty varchar(100), startDate datetime, endDate datetime, stipend int);
CREATE TABLE OffCampusInternship(name varchar(100), post varchar(25), eligibilty varchar(100), startDate datetime, endDate datetime, stipend int);

INSERT INTO student (id, name, password) VALUES (1, 'aarush', 'aarush123');
INSERT INTO student(id, name, password) VALUES(2, 'anubhav', 'anubhav123');
INSERT INTO student(id, name, password) VALUES(3, 'asim', 'asim123');
INSERT INTO student(id, name, password) VALUES(4, 'barkha', 'barkha123');
INSERT INTO student(id, name, password) VALUES(5, 'chhavi', 'chhavi123');
INSERT INTO student(id, name, password) VALUES(6, 'dinesh', 'dinesh123');
INSERT INTO student(id, name, password) VALUES(7, 'garima', 'garima123');
INSERT INTO student(id, name, password) VALUES(8, 'gunik', 'gunik123');
INSERT INTO student(id, name, password) VALUES(9, 'hardik', 'hardik123');
INSERT INTO student(id, name, password) VALUES(10, 'isha', 'isha123');

INSERT INTO admin(id, password) VALUES(1, 'admin111');
INSERT INTO admin(id, password) VALUES(2, 'admin222');
INSERT INTO admin(id, password) VALUES(3, 'admin333');
INSERT INTO admin(id, password) VALUES(4, 'admin444');

INSERT INTO OnCampusPlacement(name, post, eligibilty, startDate, endDate, stipend) VALUES('Maverick Quality Advisory Services Pvt Ltd', NULL, '2020-2024 Batch', '2024-04-06 00:00:00', '2024-04-06 11:59:00', NULL);
INSERT INTO OnCampusPlacement(name, post, eligibilty, startDate, endDate, stipend) VALUES('Ornate TechnoServices Pvt. Ltd', NULL, '2020-2024 Batch', '2024-04-11 00:00:00', '2024-04-11 11:59:00', NULL);
INSERT INTO OnCampusPlacement(name, post, eligibilty, startDate, endDate, stipend) VALUES('Akal Information Systems Ltd.', NULL, '2021-2025 Batch', '2025-03-01 00:00:00', '2025-03-01 11:59:00', 600000);
INSERT INTO OnCampusPlacement(name, post, eligibilty, startDate, endDate, stipend) VALUES('ACT21 Software Pvt. Ltd', NULL, '2021-2025 Batch', '2025-01-25 2025-01-25 11:59:00', '2025-01-25 11:59:00', 420000);
INSERT INTO OnCampusPlacement(name, post, eligibilty, startDate, endDate, stipend) VALUES('Euromonitor International', NULL, '2021-2025 Batch', '2025-01-30 00:00:00', '2025-01-30 11:59:00', 500000);

INSERT INTO OffCampusPlacement(name,post,eligibility,startDate,endDate,stipend)
VALUES
('Google','Software Developer','2022-2025 Batch','2025-01-06 00:00:00','2025-02-06 11:59:59',2500000),
('Amazon',NULL,'2020-2024 Batch','2023-02-02 12:00:00','2023-02-10 11:00:00',3600000),
('Microsoft','Software Engineer','2019-2023 Batch','2022-03-10 05:00:00','2022-04-10 05:00:00',4000000),
('TCS', 'Software Engineer', '2020-2024 Batch', '2023-03-10 04:00:00', '2023-03-20 04:00:00', '600000'),
('IBM', 'Data Scientist', '2023-2027 Batch', '2025-03-28 12:00:00', '2025-04-07 06:00:00', '1200000');

INSERT INTO OffCampusInternship(name,post,eligibility,startDate,endDate,stipend)
VALUES
('TCS', 'Software Development Intern', '2020-2024 Batch', '2024-04-15 07:00:00', '2024-06-30 12:00:00', '30000'),  
('Infosys', 'Machine Learning Intern', '2022-2026 Batch', '2025-04-20 03:00:00', '2025-07-20 10:00:00', '40000'),  
('Wipro', 'Cloud Computing Intern', '2023-2027 Batch', '2025-05-01 08:00:00', '2025-07-31 10:00:00', '25000'),  
('Deloitte', 'Cybersecurity Intern', '2022-2026 Batch', '2025-05-05 11:00:00', '2025-08-05 11:00:00', '50000'),  
('Capgemini', 'AI/ML Intern', '2021-2025 Batch', '2024-02-10 09:00:00', '2024-03-10 -2:00:00', '35000'),  
('Cognizant', 'Full Stack Developer Intern', '2019-2023 Batch', '2022-10-15 05:00:00', '2022-11-15 09:00:00', '32000'),  
('IBM', 'Blockchain Intern', '2022-2026 Batch', '2025-03-20 11:00:00', '2025-03-27 05:00:00', '45000');  
