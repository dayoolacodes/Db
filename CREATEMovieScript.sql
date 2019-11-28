
CREATE TABLE actor(
act_id		Integer		NOT NULL,
act_fname	Char(20)	NOT NULL,
act_lname	Char(20)	NOT NULL,
act_gender	Char(1)		NOT NULL,
CONSTRAINT actor_pk		primary key(act_id)
);

CREATE TABLE director(
dir_id		Integer		NOT NULL,
dir_fname	char(20)	NULL,
dir_lname	char(20)	NULL,
CONSTRAINT	director_pk	primary key(dir_id)
);

CREATE TABLE movie(
mov_id		integer		NOT NULL,
mov_title	char(50)	NOT NULL,
mov_year	integer		NOT NULL,
mov_time	integer		NOT NULL,
mov_lang	char(50)	NOT NULL,
mov_dt_rel	date		NOT NULL,
mov_rel_country	char(5)	NOT NULL,
constraint movie primary key(mov_id)
);

CREATE TABLE movie_cast(
act_id		Integer		NOT NULL,
mov_id		Integer		NOT NULL,
movie_role		Char(30)	NULL,
CONSTRAINT movie_cast_pk	primary key(act_id, mov_id),
CONSTRAINT  movie_cast_fk	foreign key(act_id)
			references actor(act_id),
CONSTRAINT  movie_cast1_fk	foreign key(mov_id)
			references movie(mov_id)
);


CREATE TABLE movie_direction(
dir_id	Integer	NOT NULL,
mov_id	integer	NOT NULL,
CONSTRAINT movie_direction_pk	primary key(dir_id, mov_id),
CONSTRAINT movie_direction_fk foreign key(dir_id)
references director(dir_id),
CONSTRAINT movie_direction1_fk  foreign key(mov_id)
references movie(mov_id)
);

CREATE TABLE reviewer(
rev_id		Integer		NOT NULL,
rev_name	Char(30) 	NOT NULL,
CONSTRAINT reviewer_pk	primary key(rev_id)
);

CREATE TABLE Genres(
Gen_id		integer		NOT NULL,
Gen_title	char(20)	NOT NULL,
constraint	Genres_pk	primary key(Gen_id)
);

Create Table Movie_genres(
mov_id		integer		NOT NULL,
gen_id		integer		NOT NULL,
CONSTRAINT movie_genres_pk	primary key(mov_id,gen_id),
CONSTRAINT movie_genres_fk  foreign key(mov_id)
references movie(mov_id),
CONSTRAINT movie_genres1_fk  foreign key(gen_id)
references genres(gen_id)
);

CREATE TABLE rating(
mov_id			Integer		NOT NULL,
rev_id			Integer		NOT NULL,
rev_stars		Integer		NULL,
num_o_ratings	Integer		NULL,
CONSTRAINT rating_pk	primary key (mov_id, rev_id),
CONSTRAINT rating_fk  foreign key(mov_id)
references movie(mov_id),
CONSTRAINT rating1_fk  foreign key(rev_id)
references reviewer(rev_id)
);