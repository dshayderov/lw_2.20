select language_code as language, count(title) as book_count from books
group by language;