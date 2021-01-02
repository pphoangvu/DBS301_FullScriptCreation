-- ***********************
-- Name: 
--  Maria Emilia Budai da Costa  130879174
--  Vu Pham 					    129908174
--  Phuc Toan Truong			    126259175 
-- Date: 04-09-2019
-- Purpose: Assignment 2 Insert Tabless DBS301SAB
-- ***********************


-- INSERT DATA TO TABLE agencies
INSERT INTO agencies VALUES(001, 'Vu Pham', '6478951501');
INSERT INTO agencies VALUES(002, 'Maria', '6478951502');
INSERT INTO agencies VALUES(003, 'Toan Truong', '6478951503');
INSERT INTO agencies VALUES(004, 'Nathan', '6478951504');
INSERT INTO agencies VALUES(005, 'James', '6478951505');
INSERT INTO agencies VALUES(006, 'CLint', '6478951506');
INSERT INTO agencies VALUES(007, 'Obama', '6478951508');
INSERT INTO agencies VALUES(008, 'David', '6478951507');
INSERT INTO agencies VALUES(009, 'Messi', '6478951509');
INSERT INTO agencies VALUES(010, 'Pogba', '6478951511');
 
SELECT * FROM agencies;
 
-- INSERT DATA TO TABLE Location
INSERT INTO Location VALUES(101, 'Canada', 'Ontario', 'Toronto', 'M3J0F5', 'Don Mills', 4005, 001);
INSERT INTO Location VALUES(102, 'Canada', 'Ontario', 'Toronto', 'M4J9F5', 'Leslie st', 278, 002);
INSERT INTO Location VALUES(103, 'Canada', 'Ontario', 'Toronto', 'M5J8F5', 'Finch', 302, 003);
INSERT INTO Location VALUES(104, 'Canada', 'British Columbia', 'Vancouver', 'M6J7F5', NULL, NULL, 004);
INSERT INTO Location VALUES(105, 'Canada', 'British Columbia', 'Vancouver', 'M7J6F5', NULL, NULL, 005);
INSERT INTO Location VALUES(106, 'Canada', 'British Columbia', 'Vancouver', 'M8J5F5', NULL, NULL, 006);
INSERT INTO Location VALUES(107, 'Canada', 'Ontario', 'Quebec', 'M9J4F5', NULL, NULL, 007);
INSERT INTO Location VALUES(108, 'Canada', 'Ontario', 'Quecbbec', 'M0J3F5', NULL, NULL, 008);
INSERT INTO Location VALUES(109, 'Canada', 'Ontario', 'Ottawa', 'M3J2F5', NULL, NULL, 009);
INSERT INTO Location VALUES(110, 'Canada', 'Ontario', 'Ottawa', 'M3J1F5', NULL, NULL, 010);
drop table employees;
SELECT * FROM Location;
 
-- INSERT DATA TO TABLE areas
INSERT INTO areas VALUES(551, 'Toronto', 'Capital of ON');
INSERT INTO areas VALUES(552, 'North York', 'Has Vaughan');
INSERT INTO areas VALUES(553, 'Scarborough', 'East Side of Toronto');
INSERT INTO areas VALUES(554, 'Missisauga', 'West Side of Toronto');
INSERT INTO areas VALUES(555, 'Bue Mountain', 'North Side of Toronto');
INSERT INTO areas VALUES(556, 'Vancouver', 'Capital of BC');
INSERT INTO areas VALUES(557, 'GTA', 'Center of Toronto');
INSERT INTO areas VALUES(558, 'Niagra', 'Close to the US');
INSERT INTO areas VALUES(559, 'Hamilton', 'CLose to Missisauga');
INSERT INTO areas VALUES(572, 'Vaughan', 'Inside North York');

SELECT * FROM areas;
 
-- INSERT DATA TO TABLE schools
INSERT INTO schools VALUES(901, 'Seneca', 'College', '552');
INSERT INTO schools VALUES(902, 'GBC', 'College', '551');
INSERT INTO schools VALUES(903, 'Centenial', 'College', '553');
INSERT INTO schools VALUES(904, 'Humber', 'College', '552');
INSERT INTO schools VALUES(905, 'York', 'University', '552');
INSERT INTO schools VALUES(906, 'Ryerson', 'University', '551');
INSERT INTO schools VALUES(907, 'Fanshawe', 'College', '554');
INSERT INTO schools VALUES(908, 'UOT', 'University', '551');
INSERT INTO schools VALUES(909, 'UMC', 'High School', '552');
INSERT INTO schools VALUES(800, 'ICEAP', 'English School', '551');

SELECT * FROM schools;
 
-- INSERT DATA TO TABLE clients
INSERT INTO clients VALUES(1299, 'Chris', 'Smalling', 6478993456, 'Chris@gmail.com', 'Buy', 85);
INSERT INTO clients VALUES(1211, 'David', 'De Gea', 6044560987, 'David@gmail.com', 'Buy', 23);
INSERT INTO clients VALUES(1222, 'Paul', 'Pogba', 647881234, 'Paul@gmail.com', 'Sell', 70);
INSERT INTO clients VALUES(1233, 'Phil', 'John', 6470987655, 'John@gmail.com', 'Sell', 15);
INSERT INTO clients VALUES(1244, 'Alex', 'Ronaldo', 6471237654, 'Ronaldo7@gmail.com', 'Buy', 07);
INSERT INTO clients VALUES(1255, 'Ryan', 'Henderson', 6470981235, 'Henderson@gmail.com', 'Buy', 35);
INSERT INTO clients VALUES(1266, 'Lucas', 'Ben', 6475439876, 'Lucas@gmail.com', 'Sell', 21);
INSERT INTO clients VALUES(1277, 'James', 'Hart', 6478712345, 'James@gmail.com', 'Sell', 100);
INSERT INTO clients VALUES(1288, 'John', 'Cena', 6473217654, 'CenaWW@gmail.com', 'Buy', 100);
INSERT INTO clients VALUES(1345, 'Vulcan', 'Aston', 6470099823, 'Supercar@gmail.com', 'Sell', 90);

 SELECT * FROM clients;
 
-- INSERT DATA TO TABLE outlets

INSERT INTO outlets VALUES(01, 'Premium Outlet', 6071234560);
INSERT INTO outlets VALUES(02, 'Big Size Outlet', 6071234512);
INSERT INTO outlets VALUES(03, 'Last Season Outlet', 6071234513);
INSERT INTO outlets VALUES(04, 'Premium Outlet 2', 6071234514);
INSERT INTO outlets VALUES(05, 'Premium Outlet 3', 6071234545);
INSERT INTO outlets VALUES(06, 'Landmark Cooperation', 6071234555);
INSERT INTO outlets VALUES(07, 'Landview Cooperation', 6071234577);
INSERT INTO outlets VALUES(08, 'Novaland', 6071234590);
INSERT INTO outlets VALUES(09, 'Toronto House', 6071234596);
INSERT INTO outlets VALUES(10, 'Villa outlet', 6071234534);

SELECT * FROM outlets;
 
-- INSERT DATA TO TABLE properties
INSERT INTO properties VALUES(211, 001, 1299, 101, 551, 'Condo', 3, 3, 1000, 1000, 100, 2, 400000);
INSERT INTO properties VALUES(212, 002, 1211, 102, 551, 'Condo', 6, 5, 2000, 1000, 100, 3, 700000);
INSERT INTO properties VALUES(213, 003, 1222, 102, 552, 'House', 3, 3, 1000, 1000, 200, 2, 500000);
INSERT INTO properties VALUES(214, 004, 1299, 103, 552, 'House', 5, 4, 1500, 1000, 200, 4, 600000);
INSERT INTO properties VALUES(215, 005, 1233, 103, 554, 'Villa', 5, 5, 3000, 2000, 300, 6, 800000);
INSERT INTO properties VALUES(216, 006, 1277, 104, 554, 'Villa', 4, 3, 3000, 1000, 300, 4, 750000);
INSERT INTO properties VALUES(217, 007, 1244, 105, 572, 'Condo', 4, 4, 1500, 1000, 50, 3, 350000);
INSERT INTO properties VALUES(218, 008, 1266, 106, 572, 'Condo', 3, 3, 1000, 1000, 100, 2, 300000);
INSERT INTO properties VALUES(219, 009, 1288, 107, 551, 'Condo', 3, 3, 1000, 1000, 100, 2, 600000);

 SELECT * FROM properties;
 
-- INSERT DATA TO TABLE advertisement

INSERT INTO advertisement VALUES(100, 02, 212, TO_DATE('2018-12-13', 'YYYY-MM-DD'), 1000);
INSERT INTO advertisement VALUES(200, 01, 219, TO_DATE('2019-01-15', 'YYYY-MM-DD'), 2000);
INSERT INTO advertisement VALUES(300, 01, 217, TO_DATE('2017-07-23', 'YYYY-MM-DD'), 500);
INSERT INTO advertisement VALUES(400, 02, 217, TO_DATE('2010-09-01', 'YYYY-MM-DD'), 500);
INSERT INTO advertisement VALUES(500, 03, 218, TO_DATE('2007-03-15', 'YYYY-MM-DD'), 700);
INSERT INTO advertisement VALUES(600, 04, 218, TO_DATE('2016-09-29', 'YYYY-MM-DD'), 1000);
INSERT INTO advertisement VALUES(700, 08, 218, TO_DATE('2018-10-31', 'YYYY-MM-DD'), 1000);
INSERT INTO advertisement VALUES(800, 09, 217, TO_DATE('2015-12-30', 'YYYY-MM-DD'), 1000);
INSERT INTO advertisement VALUES(900, 02, 215, TO_DATE('2003-12-27', 'YYYY-MM-DD'), 1000);
INSERT INTO advertisement VALUES(101, 10, 216, TO_DATE('2016-12-12', 'YYYY-MM-DD'), 1000);

SELECT * FROM advertisement;
 
-- INSERT DATA TO TABLE soldproperty
INSERT INTO soldproperty VALUES(991, 211, 1299, TO_DATE('2017-12-19', 'YYYY-MM-DD'), 350000, 300);
INSERT INTO soldproperty VALUES(992, 212, 1211, TO_DATE('2016-11-12', 'YYYY-MM-DD'), 700000, 500);
INSERT INTO soldproperty VALUES(993, 217, 1244, TO_DATE('2015-10-19', 'YYYY-MM-DD'), 350000, 300);
INSERT INTO soldproperty VALUES(994, 217, 1244, TO_DATE('2014-01-13', 'YYYY-MM-DD'), 350000, 300);
INSERT INTO soldproperty VALUES(995, 215, 1233, TO_DATE('2019-01-15', 'YYYY-MM-DD'), 800000, NULL);
INSERT INTO soldproperty VALUES(996, 219, 1288, TO_DATE('2012-04-29', 'YYYY-MM-DD'), 600000, 100);
INSERT INTO soldproperty VALUES(997, 217, 1244, TO_DATE('2011-05-09', 'YYYY-MM-DD'), 350000, 300);
INSERT INTO soldproperty VALUES(998, 213, 1222, TO_DATE('2010-09-23', 'YYYY-MM-DD'), 500000, 200);
INSERT INTO soldproperty VALUES(999, 211, 1299, TO_DATE('2009-11-30', 'YYYY-MM-DD'), 400000, 300);
INSERT INTO soldproperty VALUES(990, 211, 1299, TO_DATE('2008-12-19', 'YYYY-MM-DD'), 400000, 300);
    
SELECT * FROM soldproperty;

-- INSERT DATA TO TABLE Property_client
INSERT INTO Property_client VALUES(211, 1299);
INSERT INTO Property_client VALUES(212, 1211);
INSERT INTO Property_client VALUES(213, 1222);
INSERT INTO Property_client VALUES(215, 1233);
INSERT INTO Property_client VALUES(217, 1244);
INSERT INTO Property_client VALUES(219, 1299);

SELECT * FROM Property_client;