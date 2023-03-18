select title, text_reviews_count from books
where length(title) < 50 and text_reviews_count between 1000 and 2000 limit 15;