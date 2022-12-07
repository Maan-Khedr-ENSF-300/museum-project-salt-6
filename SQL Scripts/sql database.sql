
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

<<<<<<< HEAD
);


Create art_objet (
    Title varchar(20) NOT NULL,
    Description varchar(20) NOT NULL,
    year_created INT NOT NULL,
    Epoch varchar(20) NOT NULL,
    Country_of_origin varchar(20) NOT NULL,
    Unique_id_no INT NOT NUll,

    PRIMARY KEY (Unique_id_no)
);


Create Permanent_collection(
    Unique_id_no INT NOT NUll,
    Date_acquired varchar(20) NOT NULL,
    Status varchar(20) NOT NULL,
    Cost varchar(20) NOT NULL

);

Create Borrowed_Collection(
    Date_borrowed varchar(20) NOT NULL,
    Date_returned varchar(20) NOT NULL,
    Collection varchar(20) NOT NULL,
    Unique_id_no int NOT NULL
);

CREATE Sculpture(
    Weight varchar(20) NOT NULL,
    Height varchar(20) NOT NULL,
    Style varchar(20) NOT NULL,
    Material varchar(20) NOT NULL,
    Unique_id_no int NOT NULL
);

Create other(
    Unique_id_no INT,
    Style varchar(20) NOT NULL,
    Type varchar(20) NOT NULL
);