select * from dnom_data

select * from reviews

create View reviews_as_per_rating AS
select user_id, 
movie_id from reviews where rating > 4; 

select * from reviews_as_per_rating

create View reviews_as_per_rating AS
select user_id, 
       movie_id, 
       rating
from reviews 
where rating > 4;


create view as_per_rating AS
select user_id,
movie_id,
rating from reviews where rating > 4;

select * from as_per_rating where 
movie_id ='1';


select count(*) as count from as_per_rating
where rating > 4;

select * from reviews

insert into reviews (user_id,movie_id,rating,review_text)
values(1,1,5,'great movie');

select * from as_per_rating where rating > 4;

drop view as_per_rating 

create view as_per_rating AS
select user_id,movie_id,rating,review_text from reviews
where rating > 4; 

select * from as_per_rating

select * from reviews where rating > 4;

insert into reviews(user_id,movie_id,rating,review_text)
values(1,1,5,'great movie');

select * from as_per_rating

select * from reviews where movie_id =1 and rating > 4;

select * from movie where release_year > 2000 and duration_minutes > 60
order by release_year DESC,duration_minutes DESC;

create view release_movie_above_2000 AS
select * from movie where release_year > 2000 and duration_minutes > 60
order by release_year DESC,duration_minutes DESC;

select * from release_movie_above_2000

select count(duration_minutes) 
as count from movie where duration_minutes = 177;

DELETE from movie where duration_minutes = 177;

select * from release_movie_above_2000

select * from movie where duration_minutes =177;

select * from users

select * from users as u
INNER JOIN movie as m
on u.movie_id = m.movie_id 
WHERE release_year > 2000 
ORDER BY release_year DESC;

select * from movie

CREATE VIEW USER_MOVIE_ABOVE_2000 AS 
SELECT u.user_id AS userid,
       m.movie_id AS movieid,
       u.username AS username,
       m.title AS title,
       m.release_year AS release_year,
       m.duration_minutes AS duration_minutes
FROM users AS u
INNER JOIN movie AS m
ON u.movie_id = m.movie_id
WHERE m.release_year > 2000;

select * from  user_movie_above_2000

Select  * from watch_history where movie_id IN('4703','3184') 
order by watch_duration DESC;

create View watch_history_by_movie_id AS
select * from watch_history where movie_id IN('4703','3184')
order by watch_duration DESC;

select * from watch_history_by_movie_id 

select * from watch_history WHERE watch_duration ='37'
and watch_date ='2025-04-28';