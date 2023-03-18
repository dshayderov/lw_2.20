select title, authors, average_rating from books
where length(title) < 50 order by average_rating desc limit 10;