
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

Create Table Artist 
(
    Name varchar(30),

    DateBorn varchar(25),

    Date_died varchar(20),

    Country_of_origin varchar(25) NOT NULL,

    Primary Key(Name)
);


Create Permanent_Collection 
(
    unique id_no varchar(25)   NOT NULL,
    Date_acquired   varchar(20) NOT NULL,
    Status  varchar(20) NOT NULL,
    Cost int NOT NULL,
    Primary key(unique id_no),
    Foreign key(unique id_no) references Art_Object(unique id_no),
);

Create Painting
(
    unique id_no varchar(25) NOT NULL,
    Drawn_on varchar(20) NOT NULL,
    Style varchar(15)   NOT NULL,
    Paint_type varchar(20) NOT NULL,
    Primary key(unique id_no),
    Foreign key(unique id_no) references Art_Object(unique id_no),
);

Create Statue 
(
    unique id_no varchar(25) NOT NULL,
    Height int NOT NULL,
    Weight int NOT NULL,
    Material  varchar(25) NOT NULL,
    Primary Key(unique id_no),
    Foreign key(unique id_no) references Art_Object(unique id_no),
);

