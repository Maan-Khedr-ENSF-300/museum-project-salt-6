<<<<<<< HEAD
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
=======
DROP DATABASE IF EXISTS art_museum;
Create DATABASE art_museum;
Use art_museum;
>>>>>>> c92f47568884647132c8a7dc1dd334b47238e4e9

