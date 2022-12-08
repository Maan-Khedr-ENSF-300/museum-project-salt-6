
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
    Art_id INT NOT NULL,
    Name varchar(20)  NOT NULL,

    Start_date varchar(20) NOT NULL,

    End_date varchar(20) NOT NULL,

    PRIMARY KEY (Name, Art_id)
    Foreign Key(Art_id) references Art_Object(unique_id_no)
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
    unique_id_no  int  NOT NULL,
    Date_acquired   varchar(20) NOT NULL,
    Status  varchar(20) NOT NULL,
    Cost varchar(10) NOT NULL,
    Primary key(unique_id_no),
    Foreign key(unique_id_no) references Art_Object(unique_id_no),
);

Create Painting
(
    unique_id_no int NOT NULL,
    Drawn_on varchar(20) NOT NULL,
    Style varchar(15)   NOT NULL,
    Paint_type varchar(20) NOT NULL,
    Primary key(unique_id_no),
    Foreign key(unique_id_no) references Art_Object(unique id_no),
);

Create Statue 
(
    unique_id_no int NOT NULL,
    Height int NOT NULL,
    Weight int NOT NULL,
    Material  varchar(25) NOT NULL,
    Style varchar(25) NOT NULL,
    Primary Key(unique_id_no),
    Foreign key(unique_id_no) references Art_Object(unique_id_no),
);


Create Art_Object (
    Title varchar(20) NOT NULL,
    Description varchar(20) NOT NULL,
    year_created INT NOT NULL,
    Epoch varchar(20) NOT NULL,
    Country_of_origin varchar(20) NOT NULL,
    Unique_id_no INT NOT NUll,
    CONSTRAINT AOPK PRIMARY KEY (Unique_id_no),
    CONSTRAINT AOFK1 Foreign Key(Epoch) references Art_Object(Epoch),
    CONSTRAINT AOFK2 Foreign Key(Country_of_origin) references Art_Object(Country_of_origin)
);

Create Borrowed_Collection(
    Date_borrowed varchar(20) NOT NULL,
    Date_returned varchar(20) NOT NULL,
    Collection varchar(20) NOT NULL,
    Unique_id_no int NOT NULL,
    Primary Key(unique_id_no),
    Foreign Key(unique_id_no) references Art_Object(unique_id_no)
);

CREATE Sculpture(
    Weight int NOT NULL,
    Height int NOT NULL,
    Style varchar(20) NOT NULL,
    Material varchar(20) NOT NULL,
    Unique_id_no int NOT NULL,
    Primary Key(unique_id_no),
    Foreign Key(unique_id_no) references Art_Object(unique_id_no)
);

Create Other(
    Unique_id_no INT  NOT NULL,
    Style varchar(20) NOT NULL,
    Type varchar(20) NOT NULL,
    Primary Key(unique_id_no),
    Foreign Key(unique_id_no) references Art_Object(unique_id_no)
);





insert into Permanent_Collection
Values ((111287765, 1928, 'On Display', 'N/A'),
        (355611559, 1955, 'stored', '124500$'),
        (237892120, 1943, 'Loan', 'N/A' ),
        (218349039, 1902, 'Loan', 'N/A'));


INSERT into Borrowed_Collection
Values (('March 29, 2021','September 24, 2023','Private Collection',255980678),
('October 29, 2021','January 15, 2023','Society of Antiquaries of London',234093894),
('August 24, 2021','September 30, 2023','Victoria and Albert Museum, London',321098735),
('September 18, 2019','January 10, 2023','Bashford Dean Memorial Collection',238907295),
('February 26, 2019','July 8,2023','Edith Perry Chapman Fund',219437824),
('October 10, 2021','September 24, 2023','Victoria and Albert Museum, London',290124789)
);

INSERT into Artist
VALUES(('N/A', 'N/A', 'N/A', 'Great Britain', 'Renaissance', 'Neo-Classical', 'N/A'),
('Pier Jacopo Alari Bonacolsi', '1460', '1528', 'Italy', 'Renaissance', 'Roman Sculpture', 'a 15th- and 16th-century North Italian Renaissance sculptor, known for his finely detailed small bronzes all Antica'),
('N/A', 'N/A', 'N/A', 'Netherlands', 'Renaissance', 'Renaissance art', 'N/A'),
('Hans Holbein the Younger','1497', '1543', 'Germany', 'Renaissance', 'Portraits and Religious art', 'a German-Swiss painter and printmaker who worked in a Northern Renaissance style, and is considered one of the greatest portraitists of the 16th century'),
('Hans Eworth ', '1520', '1574', 'Belgium', 'Renaisance', 'Portraits and Northern Renaissance', 'a Flemish painter active in England in the mid-16th century. Along with other exiled Flemings, he made a career in Tudor London, painting allegorical images as well as portraits of the gentry and nobility'),
('George Gower', '1540', '1596', 'United Kingdom', 'Renaissance', 'Portraits and Northern Renaissance', 'an English portrait painter who became Serjeant Painter to Queen Elizabeth I in 1581'),
('Benedetto da Rovezzano', '1474', '1552', 'Italy', 'Renaissance', 'Roman sculptures', 'an Italian architect and sculptor who worked mainly in Florence'),
('N/A', 'N/A','N/A', 'N/A', 'Renaissance', 'Neo-Classical', 'N/A'),
('N/A', 'N/A', 'N/A', 'N/A', 'Renaissance', 'Neo-Classical', 'N/A'),
('N/A', 'N/A', 'N/A', 'N/A', 'Renaissance', 'Roman-Catholic', 'N/A'));

INSERT into Art_Object
Values (('Pair of gloves', 'The gauntlets of these gloves are embroidered with motifs which also appear on other objects made in the late Elizabethan era', 1600, 'Renaissance', 'Great Britain', 111287765),
('Paris', 'In a legendary contest over divine beauty the Trojan prince, Paris judged Venus the winner. Paris is shown contemplating his choice as he holds the golden apple to be awarded to the goddess as her trophy', 1518,'Renaissance', 'Italy', 355611559),
('Henry VII', 'N/A', 1505, 'Renaissance', 'Netherlands', 237892120),
('Henry VIII', 'N/A', 1537, 'Renaissance', 'German', 218349039),
('Mary I', 'N/A', 1554, 'Renaissance','Flemish', 234093894),
('Elizabeth I (The Hampden Portrait)', 'N/A', 1567, 'Renaissance', 'British',255980678),
('Angel Bearing Candlestick', 'N/A', 1530, 'Renaissance', 'Italian',321098735),
('Fencing Doublet', 'This doublet is a rare example of sixteenth-century male clothing, very little of which has survived. The cut of the doublet, particularly the protruding "peascod" waist, is typical of fashionable costume of the 1570s and 1580s', 1580, 'Renaissance', 'Western European', 238907295),
('Unidentified Saint', 'N/A', 1505, 'Renaissance', 'Roman',219437824),
('John the Evangelist', 'N/A', 1505, 'Renaissane', 'Roman-Catholic',290124789));

INSERT into Exhibition
VALUES ((111287765, 'The Tudors: Art and Majesty in Renaissance England', 'October 10, 2022', 'January 8, 2023'),
(355611559, 'Antico: The Golden Age of Renaissance Bronzes', 'May 1, 2012', 'July 29, 2012'),
(237892120, 'The Tudors: Art and Majesty in Renaissance England','October 10, 2022', 'January 8, 2023'),
(218349039, 'The Tudors: Art and Majesty in Renaissance England','October 10, 2022', 'January 8, 2023'),
(255980678, 'The Tudors: Art and Majesty in Renaissance England', ' June 24, 2023', 'September 24, 2023'),
(234093894, 'The Tudors: Art and Majesty in Renaissance England', 'October 10, 2022', 'January 8, 2023'),
(321098735, 'The Tudors: Art and Majesty in Renaissance England', 'June 24, 2023', 'September 24, 2023'),
(238907295, 'The Tudors: Art and Majesty in Renaissance England', 'October 10, 2022', 'January 8, 2023'),
(219437824, 'The Tudors: Art and Majesty in Renaissance England', 'June 24, 2023', 'September 24, 2023'),
(290124789, 'The Tudors: Art and Majesty in Renaissance England', 'June 24, 2023', 'September 24, 2023')
);

INSERT into Painting
VALUES ((218349039, 'Panel', 'Northern renaissance', 'Oil'),
(237892120, 'Panel', 'Nothern Renaissance', 'Oil'),
(255980678, 'Canvas', 'Renaissance', 'Northern renaissance', 'Oil')
(234093894, 'Panel', 'Renaissance', 'Nothern renaissance', 'Oil')
);

INSERT into Sculpture 
VALUES (('20 lbs', '14.625 in', 'Roman Scultpure', 'Bronze', 355611559),
('310 lbs', '39.75 in', 'Roman Sculpture', 'Bronze', 321098735)
);

INSERT into Other
VALUES ((111287765, 'Neoclassical', 'Textiles-Embroidered'),
(238907295, 'Early Western European', 'Textile-Costume')
);

INSERT into Statue
VALUES ((219437824, '20.5in', '71 lbs', 'Terracotta'),
(290124789, '18.875 in', '62 lbs', 'Terracotta')
);


