use seyi_records;


CREATE Table Artist(
ArtistID	Integer		NOT NULL,
ArtistName	Char(10)	NOT NULL,
Rating		VarChar(20)	NULL,
Phone		Integer		NOT NULL,
CONSTRAINT 	Artist_PK	PRIMARY KEY(ArtistID)
);

CREATE Table Album(
ArtistID 		Integer		NOT NULL,
Track 			Char(20)	NOT NULL,
Genre			Char(20)	NOT NULL,
YearRelease		Integer		NULL,
AlbumID			Integer		NULL,
CONSTRAINT		Album_PK	PRIMARY KEY(ArtistID,TRACK),
CONSTRAINT		Album_FK	FOREIGN KEY(ArtistID)
			REFERENCES Artist (ArtistID)
);

INSERT INTO Artist Values(
1001,'Nelson', 'PG', 080859359);
INSERT INTO Artist Values(
1002, 'Somto', 'G', 0802973800);
INSERT INTO Artist Values(
1005, 'kemjo', 'PG',0960698029
);

INSERT INTO Album Values(
1001, 'Obey', 'HipHop', 2019, 1092);
INSERT INTO Album Values(
1002, 'Lay WIth Me', 'RNB', 2019, 1025);
INSERT INTO Album Values(
1003, 'I dont know', 'Jazz', 2018, 1112);


select *
From Album;

select *
From Artist;

Select ArtistName, Track, YearRelease
From Artist, Album;

Select ArtistName, Track, YearRelease
From Artist;
(select Artist.ArtistID
From Album
where Artist.ArtistID = Album.ArtistID)

