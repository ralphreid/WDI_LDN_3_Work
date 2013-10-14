create table actors_movies
  (
    id serial4  primary key,
    movies int4 references movies(id),
    actors int4 references actors(id)
    )




INSERT INTO actors_movies (actors, movies) VALUES (18, 9);
INSERT INTO actors_movies (actors, movies) VALUES (18, 12);
INSERT INTO actors_movies (actors, movies) VALUES (18, 13);
INSERT INTO actors_movies (actors, movies) VALUES (18, 14);
INSERT INTO actors_movies (actors, movies) VALUES (18, 15);
INSERT INTO actors_movies (actors, movies) VALUES (19, 15);
INSERT INTO actors_movies (actors, movies) VALUES (20, 13);





  id | first_name | last_name  |    dob     |                                          image_url                                           
----+------------+------------+------------+----------------------------------------------------------------------------------------------
 18 | Jake       | Gyllenhall | 1980-12-19 | http://img2.timeinc.net/people/i/2006/celebdatabase/jakegyllenhaal/j_gyllenhaal1_300_400.jpg
 19 | Heath      | Ledger     | 1979-04-04 | http://www.idposter.com/img/11/id78661.jpg
 20 | Maggie     | Gyllenhaal | 1977-11-16 | http://wendysteele.com/wp-content/uploads/Maggie-Gyllenhaal.jpg



  id |        title         |                               poster                                | year | rated |         genre          |    director    |      writers      |                       actors                       
----+----------------------+---------------------------------------------------------------------+------+-------+------------------------+----------------+-------------------+----------------------------------------------------
  9 | Love and Other Drugs | http://www.impawards.com/2010/posters/love_and_other_drugs_xlg.jpg  | 2010 | 6.6   | Comedy, Drama, Romance | Edward Zick    | Charles Randolph  | Jake Gyllenhaal, Anne Hathaway
 12 | Brokeback Mountain   | http://www.crankycritic.com/archive05/posters/brokebackmountain.jpg | 2005 | 7.6   | Drama, Romance         | Ang Lee        | Annie Proulx      | Jake Gyllenhaal, Heath Ledger
 13 | Donnie Darko         | http://alansmitheepodcast.files.wordpress.com/2013/09/darko.jpg     | 2001 | 8.1   | Drama, Mystery         | Richard Kelly  | Richard Kelly     | Jake Gyllenhaal, Holmes Osborne, Maggie Gyllenhaal
 14 | Love and Other Drugs | http://www.impawards.com/2010/posters/love_and_other_drugs_xlg.jpg  | 2010 | 6.6   | Comedy, Drama, Romance | Edward Zick    | Charles Randolph  | Jake Gyllenhaal, Anne Hathaway
 15 | Brokeback Mountain   | http://www.crankycritic.com/archive05/posters/brokebackmountain.jpg | 2005 | 7.6   | Drama, Romance         | Ang Lee        | Annie Proulx      | Jake Gyllenhaal, Heath Ledger


INSERT INTO movies (title, year, rated, genre, director, writers, actors, poster) 
VALUES ('Donnie Darko','2001', '8.1', 'Drama, Mystery', 'Richard Kelly ', 'Richard Kelly','Jake Gyllenhaal, Holmes Osborne, Maggie Gyllenhaal', 'http://alansmitheepodcast.files.wordpress.com/2013/09/darko.jpg');

INSERT INTO movies (title, year, rated, genre, director, writers, actors, poster) 
VALUES ('Love and Other Drugs','2010', '6.6', 'Comedy, Drama, Romance', 'Edward Zick', 'Charles Randolph ','Jake Gyllenhaal, Anne Hathaway', 'http://www.impawards.com/2010/posters/love_and_other_drugs_xlg.jpg');

INSERT INTO movies (title, year, rated, genre, director, writers, actors, poster) 
VALUES ('Brokeback Mountain','2005', '7.6', 'Drama, Romance', 'Ang Lee', 'Annie Proulx ','Jake Gyllenhaal, Heath Ledger', 'http://www.crankycritic.com/archive05/posters/brokebackmountain.jpg');

INSERT INTO actors (first_name, last_name, dob, image_url) 
VALUES ('Jake', 'Gyllenhall', '19/12/1980', 'http://img2.timeinc.net/people/i/2006/celebdatabase/jakegyllenhaal/j_gyllenhaal1_300_400.jpg');

INSERT INTO actors (first_name, last_name, dob, image_url) 
VALUES ('Heath', 'Ledger', '4/4/1979', 'http://www.idposter.com/img/11/id78661.jpg');

INSERT INTO actors (first_name, last_name, dob, image_url) 
VALUES ('Maggie', 'Gyllenhaal', '161/1977', 'http://wendysteele.com/wp-content/uploads/Maggie-Gyllenhaal.jpg');







