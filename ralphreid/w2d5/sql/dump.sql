create table actors
  (
    id serial4  primary key,
    image_url text,
    first_name varchar(100),
    last_name varchar(100),
    dob date
    );

INSERT INTO actors (dob, last_name, first_name, image_url) 
VALUES ('2012-12-12', 'Jim', 'Jamie', '');

INSERT INTO actors (dob, last_name, first_name, image_url) 
VALUES ('2012-01-12', 'Jane', 'Stone', '');

INSERT INTO actors_movies (movie_id, actor_id) VALUES (4, 4);
INSERT INTO actors_movies (movie_id, actor_id) VALUES (4, 5);
INSERT INTO actors_movies (movie_id, actor_id) VALUES (1, 6);