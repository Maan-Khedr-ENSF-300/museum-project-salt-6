/*Query 1 - Show All Tables*/
/*Explanation: All the Art Object types (Painting, Sculpture, Statue and Other), the Exhibition Table, the Permanent_Collection Table,*/
/*and the Borrowed Table gets its foreign key from the Art_Object's Primary Key unique_id_no. We defined Artist in a seperate table */
/*Where it will it gives the Art_Object the Epoch and Country/Culture_of_origin foreign key*/
Select *
From Collections

Select *
From Exhibition

Select *
From Artist

Select *
From Permanent_Collection

Select *
From Painting

Select *
From Statue

Select *
From Art_Object

Select *
From Borrowed_Collection

Select *
From Sculpture

Select *
From Other

/*Query 2 - Basic Retrieval Query*/
Select *
From Painting

/*Query 3 - Retrieval Query with Ordered Results*/
Select *
From Art_Object
ORDER BY Unique id_no

/*Query 4 - A Nested Retrieval Query*/
Select *
From Exhibition
Where Art_id in (
            Select unique_id_no
            From Art_Object
            Where unique_id_no = "111287765"
)

/*Query 5 - A Retrieval Query using Joined Tables*/
Select Exhibition.name, Exhibition.start_date, Exhibition.end_date, Art_Object.title, Art_Object.year_created
From Exhibition join Art_Object on Exhibition.Art_id = Art_Object.unique_id_no

/*Query 6 - An Update Operation with Necessary Triggers*/
Update Sculpture
Set Weight = Weight * 2.56
Where "Gold" in Material

/*Query 7 - A Delete Operation with Necessary Triggers*/
Delete Art_Object
Where year_created < 1600