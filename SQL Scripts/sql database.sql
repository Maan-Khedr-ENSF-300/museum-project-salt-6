Drop DATABASE if Exists Art_Museum
Create Database Art_Museum;
Use Art_Museum;


Create Table Collections
(
    Name   varchar(20)      NOT NULL,
    Address varchar(25)     NOT NULL,
    Type  varchar(20)       NOT NULL,
    Description varchar(50) NOT NULL,
    Phone       varchar(12)     NOT NULL,
    Contact__Person     varchar(20)    NOT NULL,

    PRIMARY KEY (Name)
);

Create Table Artist 
(
    Name varchar(30),
    DateBorn varchar(25),
    Date_died varchar(20),
    Country_of_origin varchar(25) NOT NULL,
    
)