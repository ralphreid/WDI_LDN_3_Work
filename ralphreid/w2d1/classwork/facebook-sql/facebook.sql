CREATE TABLE people(
 id serial8 primary key,
 first varchar(20),
 last varchar(20),
 dob date check(dob < '1/1/200'),
 relationship varchar(50),
 friends int2 default 0,
 city varchar(20)
 );