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







Create Table Exhibition
(
    Name varchar(20)  NOT NULL,
    
    Start_date varchar(10) NOT NULL,

    End_date varchar(10) NOT NULL,

    PRIMARY KEY (Name)

);


