select title, language_code as language, num_pages from books
where length(title) < 50 and language_code in ('fre', 'spa') and num_pages > 500
limit 15;