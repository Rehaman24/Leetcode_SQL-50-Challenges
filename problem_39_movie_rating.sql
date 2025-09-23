-- Top User: Find the user with most ratings overall.
-- Top Movie in Feb 2020: Find the movie with highest average rating in Feb 2020.
-- Combine Results: Use UNION ALL to show both results.

(select Users.name as results
 from Users 
 join MovieRating on Users.user_id = MovieRating.user_id
 group by name 
 order by count(*) desc, name 
 limit 1)

union all

(select Movies.title as results
 from Movies 
 join MovieRating on Movies.movie_id = MovieRating.movie_id
 where year(MovieRating.created_at) = "2020" 
   and month(MovieRating.created_at) = "02"
 group by title 
 order by avg(rating) desc, title 
 limit 1);
