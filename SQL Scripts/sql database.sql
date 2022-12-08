
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
    Art_id varchar(20) NOT NULL,
    Name varchar(20)  NOT NULL,

    Start_date varchar(20) NOT NULL,

    End_date varchar(20) NOT NULL,

    PRIMARY KEY (Name, Art_id)
    Foreign Key(Art_id) references Art_Object(unique id_no)
);

Create Table Artist 
(
    Name varchar(30),

    DateBorn varchar(25),

    Date_died varchar(20),

    Country_of_origin varchar(25) NOT NULL,

    Epoch varchar(25) NOT NULL,

    main_style varchar(25) NOT NULL,

    Description varchar(20) NOT NULL,

    Primary Key(Name, Epoch, Country_of_origin)
);


Create Permanent_Collection 
(
    unique id_no varchar(25)   NOT NULL,
    Date_acquired   varchar(20) NOT NULL,
    Status  varchar(20) NOT NULL,
    Cost varchar(10) NOT NULL,
    Primary key(unique id_no),
    Foreign key(unique id_no) references Art_Object(Unique id_no),
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
    Style varchar(25) NOT NULL,
    Primary Key(unique id_no),
    Foreign key(unique id_no) references Art_Object(unique id_no),
);


Create Art_Object (
    Title varchar(20) NOT NULL,
    Description varchar(20) NOT NULL,
    year_created INT NOT NULL,
    Epoch varchar(20) NOT NULL,
    Country_of_origin varchar(20) NOT NULL,
    Unique id_no INT NOT NUll,
    CONSTRAINT AOPK PRIMARY KEY (Unique id_no),
    CONSTRAINT AOFK1 Foreign Key(Epoch) references Art_Object(Epoch),
    CONSTRAINT AOFK2 Foreign Key(Country_of_origin) references Art_Object(Country_of_origin)
);

Create Borrowed_Collection(
    Date_borrowed varchar(20) NOT NULL,
    Date_returned varchar(20) NOT NULL,
    Collection varchar(20) NOT NULL,
    Unique id_no int NOT NULL,
    Primary Key(unique id_no),
    Foreign Key(unique id_no) references Art_Object(unique id_no)
);

CREATE Sculpture(
    Weight varchar(20) NOT NULL,
    Height varchar(20) NOT NULL,
    Style varchar(20) NOT NULL,
    Material varchar(20) NOT NULL,
    Unique id_no int NOT NULL,
    Primary Key(unique id_no),
    Foreign Key(unique id_no) references Art_Object(unique id_no)
);

Create Other(
    Unique id_no INT,
    Style varchar(20) NOT NULL,
    Type varchar(20) NOT NULL,
    Primary Key(unique id_no),
    Foreign Key(unique id_no) references Art_Object(unique id_no)
);


insert into Permanent_Collection
Values (('111287765', 1928, 'On Display', 'N/A'))