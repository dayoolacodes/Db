#Que 1
Select mov_title, mov_year
From movie;

#Que 2
Select mov_year
From movie
Where mov_title = 'American Beauty';

#Que 3
Select mov_title
From movie
Where mov_year = 1999;

#Que 4
Select mov_title
From movie
Where mov_year < 1998;

#Que 6
Select mov_title, rev_name
From movie
join rating using (mov_id)
join reviewer using (rev_id);

#Que 7
Select rev_name
From reviewer
WHERE
(Select rev_stars
From rating 
WHERE rev_stars >= 7);

#Que 8
Select mov_title
From movie
Join rating Using(mov_id)
Where num_o_ratings = 0;

#Que 9
Select rev_name
From reviewer
Join rating Using(rev_id)
Where num_o_ratings IS NULL;

#Que 10
Select dir_fname, dir_lname, mov_title
From director
join movie_direction using (dir_id)
join movie using (mov_id)
where mov_title = "Eyes wide shut";











