
-- drop database if exists bookstoredb;
-- drop database mydb;

-- Create the loyalty database
create database if not exists loyalty;

-- Create the customers table
create table if not exists loyalty.customers(
	ID integer primary key not null auto_increment,
    familyName varchar(40) not null,
    givenName varchar(40) not null,
    loyaltyNum integer not null,
    contactNumber varchar(20) not null,
    email varchar(50) not null,
    points integer not null
);
_____________________________________________________________________________
-- Find information about the table
DESCRIBE mydb.users;

-- Delete the table
-- DROP TABLE mydb.users;
______________________________________________________________________________
/*
ALTER TABLE mydb.users
MODIFY COLUMN phone INTEGER;
*/

-- change the primary key to start from 6 digits 100000
ALTER TABLE mydb.users AUTO_INCREMENT = 100000;
___________________________________________________________________________
	GROUP BY example: grouping data by givenName for customers with points > 1000
*/

select ID, givenName, points, email
from loyalty.customers
group by givenName;
____________________________________________________________________________________
/*
	HAVING example: Having clause add more conidition to the select
*/
select ID, givenName, email, points
from loyalty.customers
having points > 1000;
_________________________________________________________________________________________

--INSERT
-- Describe the customers table
describe loyalty.customers;
-- Insert a row into the loyalty table
insert into loyalty.customers (familyName,givenName,loyaltyNum,contactNumber,email,points)
values("George","Ann",239899,"0355776123","anngeorge@gmail.com",2344);

-- insert 5 rows into the loyalty table
insert into loyalty.customers (familyName,givenName,loyaltyNum,contactNumber,email,points)
values
("Jones","Alen",100800,"87761230","Aelnjones@gmail.com",500),
("Dex","Ron",109000,"02-90077612","ron.d@gmail.com",450),
("Gould","Oscar",110022,"07-95577000","gould.o@gmail.com",250),
("Shultz","Amy",200019,"06-55776123","laker.t@gmail.com",480),
("Truman","David",239899,"98778877","truman.d@gmail.com",189),
("Pauls","Alice",109899,"89776123","Alice.P@gmail.com",1144),
("Lu","Lucy",239000,"02-99977612","lucylue@gmail.com",1314),
("Jones","Alex",111899,"03-95577613","jonesalex@gmail.com",2300),
("Laker","Tim",202899,"06-55776123","laker.t@gmail.com",1444),
("Muller","Thomas",239099,"98776123","muller.t@gmail.com",2004);
____________________________________________________________________________________________

-- SELECT CLAUSES
select ID, givenName, points, email
from loyalty.customers
where ID > 5
group by givenName
having points <= 500
order by givenName desc;
____________________________________________________________________________________________

/*
	WHERE example: select all customers where loyalty points are greater than 2000
*/
select ID, givenName, email, points
from loyalty.customers
where points > 2000;

____________________________________________________________________________________________
/*
	ORDER BY example: Order BY allows us to order asc/desc by column(s)
*/

select ID, givenName, email, points
from loyalty.customers
order by ID, givenName desc;