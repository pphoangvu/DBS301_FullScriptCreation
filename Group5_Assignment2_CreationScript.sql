-- ***********************
-- Name: 
--  Maria Emilia Budai da Costa  130879174
--  Vu Pham 					    129908174
--  Phuc Toan Truong			    126259175
-- Date: 04-09-2019
-- Purpose: Assignment 2 Creation Tables and Views DBS301SAB
-- ***********************

/*
    CREATING TABLES
*/
-- CREATE TABLE FOR AGENCY    
CREATE TABLE Agencies (
    Agency#         INT PRIMARY KEY,
    Agency_name     VARCHAR2(40),
    Agency_phone    NUMBER
);
-- CREATE TABLE FOR AGENCY'S LOCATION
CREATE TABLE Location (
    Location#       INT PRIMARY KEY,
    Country_name    VARCHAR2(40),
    State_province  VARCHAR2(40),
    City            VARCHAR2(50),
    Postal          VARCHAR2(6),
    Address         VARCHAR2 (40),
    Address_number  NUMBER,
    Agency#         INT,
    CONSTRAINT Agency#_Location_FK FOREIGN KEY (Agency#) REFERENCES Agencies(Agency#)
);
    
-- CREATE TABLE FOR AREA
CREATE TABLE Areas (
    Area#           INT PRIMARY KEY,
    Area_name       VARCHAR2(40), 
    Area_comments   VARCHAR2(256)
);  

-- CREATE TABLE FOR SCHOOLS
CREATE TABLE Schools (
    School#         INT PRIMARY KEY,
    School_name     VARCHAR2(40),
    School_type     VARCHAR2(40),
    Area#           INT,
    CONSTRAINT Area#_Schools_FK FOREIGN KEY(Area#) REFERENCES Areas(Area#)
);

-- CREATE TABLE FOR CLIENTS
CREATE TABLE Clients (
    Client#                 INT PRIMARY KEY,
    First_name              VARCHAR2(25),
    Last_name               VARCHAR2(25),
    Phone                   INT,
    Email                   VARCHAR2(25),
    Categorized             VARCHAR2(25),
    Ownership_percentage    VARCHAR2(25)
); 

-- CREATE TABLE FOR OUTLETS
CREATE TABLE Outlets (
    Outlet#         INT PRIMARY KEY,
    Outlet_name     VARCHAR2(40),
    Outlet_phone    NUMBER UNIQUE
);

-- CREATE TABLE FOR PROPERTY
CREATE TABLE Properties (
    Property#       INT PRIMARY KEY,
    Agency#         INT,
    Client#         INT,
    Location#       INT,
    Area#           INT,
    Property_type   VARCHAR2(40),
    Bedrooms        NUMBER,
    Bathrooms       NUMBER,
    SquareFeet      NUMBER,
    Lotsize         NUMBER,
    Maintenance_fee NUMBER,
    Parking_slot    NUMBER,
    Price           NUMBER,
    CONSTRAINT Agency#_Properties_FK FOREIGN KEY(Agency#) REFERENCES Agencies(Agency#),
    CONSTRAINT Client#_Properties_FK FOREIGN KEY(Client#) REFERENCES Clients(Client#),
    CONSTRAINT Location#_Properties_FK FOREIGN KEY(Location#) REFERENCES Location(Location#),
    CONSTRAINT Area#_Properties_FK FOREIGN KEY(Area#) REFERENCES Areas(Area#)
);

-- CREATE TABLE FOR ADVERTISEMENT
CREATE TABLE Advertisement (
    Advertise#          INT PRIMARY KEY,
    Outlet#             INT,
    Property#           INT,
    Date_Ad             DATE,
    Cost_ad             INT,
    CONSTRAINT Outlet#_Advertisement_FK FOREIGN KEY(Outlet#) REFERENCES Outlets(Outlet#),
    CONSTRAINT Property#_Advertisement_FK FOREIGN KEY(Property#) REFERENCES Properties(Property#)
);

-- CREATE TABLE FOR PROPERTY THAT ARE SOLD
CREATE TABLE SoldProperty (
    Sold_property#      INT PRIMARY KEY,
    Property#           INT,
    Referral#           INT,
    Date_sold           DATE,
    Price_sold          NUMBER,
    Referring_fee       NUMBER,
    CONSTRAINT Property#_SoldProperty_FK FOREIGN KEY(Property#) REFERENCES Properties(Property#)
);

-- CREATE TABLE FOR NOT MANY TO MANY RELATIONSHIP
CREATE TABLE Property_client (
    Property#          INT,
    CLient#            INT,
    CONSTRAINT Property_client_PK PRIMARY KEY(Property#,Client#),
    CONSTRAINT Property#_Property_client_FK FOREIGN KEY(Property#) REFERENCES Properties(Property#),
    CONSTRAINT Client#_Property_client_FK FOREIGN KEY(Client#) REFERENCES Clients(Client#)
);

/*
    CREATING VIEWS
*/
-- CREATE VIEW FOR STATE BUSSINESS 
CREATE VIEW Income AS
    SELECT 
        price_sold*0.10 AS Profits, 
        SUM(cost_ad) + COUNT(Referring_fee)*500 AS Costs, 
        (price_sold*0.10) - (SUM(cost_ad) + COUNT(Referring_fee)*500) AS Revenue
        FROM soldproperty JOIN advertisement USING(property#)
        GROUP BY (price_sold*0.10), property#;
        
SELECT * FROM Income;

-- CREATE VIEW FOR Property For Sale
CREATE VIEW PropertyForSale AS
    SELECT property# 
        FROM properties
        WHERE property# NOT IN (SELECT property# FROM soldproperty);
                                
SELECT * FROM PropertyForSale;

-- CREATE VIEW FOR client List
CREATE VIEW clientList AS
    SELECT * FROM clients;
    
SELECT * FROM clientList;

-- CREATE VIEW FOR PROPERTY SALES IN WHICH YEARS
CREATE OR REPLACE VIEW totalSalesForYEar AS
    SELECT * FROM soldproperty WHERE EXTRACT (year FROM date_sold) = &year;
    
SELECT * FROM totalSalesForYEar;

-- dbs301_191b10 GRANT for users dbs301_191b27, dbs301_191a10
GRANT SELECT, UPDATE, INSERT ON Agencies TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Location TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Areas TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Schools TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Clients TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Outlets TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Properties TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Advertisement TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON SoldProperty TO dbs301_191b27, dbs301_191a10;
GRANT SELECT, UPDATE, INSERT ON Property_client TO dbs301_191b27, dbs301_191a10;

SELECT * FROM USER_TAB_PRIVS;