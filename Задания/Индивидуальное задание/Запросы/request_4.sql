select authors, (sum(average_rating) / count(title)) as rating from books where length(authors) < 50
group by authors order by rating desc limit 10;